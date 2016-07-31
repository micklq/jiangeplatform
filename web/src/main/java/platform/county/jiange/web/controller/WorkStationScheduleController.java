package platform.county.jiange.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.ContactPointSchedule;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.model.entity.WorkStationSchedule;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.service.SchoolService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.WorkStationScheduleService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("wsschedule")
public class WorkStationScheduleController extends CRUDController<WorkStationSchedule, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(WorkStationScheduleController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "workStationScheduleService")
	private WorkStationScheduleService workStationScheduleService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "schoolService")
	private SchoolService schoolService;
	
	@Resource(name = "workStationScheduleService")
	@Override
	public void setBaseService(BaseService<WorkStationSchedule, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("index")
	public String index(){
		return "wsschedule/index";
	}
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<WorkStationSchedule> p = workStationScheduleService.findAll(pr, filters);
	        
	       for(WorkStationSchedule o: p.getContent()){	 

	    	   //学校信息
	    	   if(o.getSchoolid()!=null&&o.getSchoolid()>0){
	    		   School item = schoolService.find(o.getSchoolid());
    		    	   if(item!=null){
    		    		   o.setSchoolname(item.getName());  
    		    	   }
    	  	   }
	    	   //人员信息
	    	   if(o.getLeadid()!=null&&o.getLeadid()>0){
	    		   
	    		  OfficeUser item= officeUserService.find(o.getLeadid());
	    		  if(item!=null){
	    			  o.setLeadname(item.getName());
	    		  }
	    	   }
	    	   if(o.getOfficeid()!=null&&o.getOfficeid()>0){
	    		   
	    		   OfficeUser item=  officeUserService.find(o.getOfficeid());
	    		   if(item!=null){
		    			  o.setOfficename(item.getName());
		    		  }
	    	   }
	    	   //联络科室
	    	   if(o.getOrgid()!=null&&o.getOrgid()>0){
    	  		   Organization item = organizationService.find(o.getOrgid());
    		    	   if(item!=null){
    		    		   o.setOrgname(item.getName());  
    		    	   }
    	  	   }
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	
		
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){
		int dataCount = (int)workStationScheduleService.count();		
		int dataPage = (int) (dataCount/12);
		if(dataCount%12==0){
			dataPage= dataPage-1; //分页整除 减一 以下再加一
		}
		int pageCount = dataPage+1;	
		
		if(page<=0)
		{
			page = 1;
		}	
		if(page>=pageCount){
			page=pageCount;
		}
		int prePage=((page-1)>0)?(page-1):1;
		int nextPage=((page+1)>pageCount)?pageCount:(page+1);
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC,"id"));
        Page<WorkStationSchedule> list = workStationScheduleService.findAll(pr, null); 
        List<WorkStationSchedule> rlist = new ArrayList<WorkStationSchedule>();
        if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        } 
        for(WorkStationSchedule o: rlist){	  
	    	   
        	//学校信息
	    	   if(o.getSchoolid()!=null&&o.getSchoolid()>0){
	    		   School item = schoolService.find(o.getSchoolid());
 		    	   if(item!=null){
 		    		   o.setSchoolname(item.getName());  
 		    	   }
 	  	       }
	    	   //人员信息
	    	   if(o.getLeadid()!=null&&o.getLeadid()>0){
	    		 //挂包领导
	    		  OfficeUser item= officeUserService.find(o.getLeadid());
	    		  if(item!=null){
	    			  o.setLeadname(item.getName());
	    		  }
	    	   }
	    	   if(o.getOfficeid()!=null&&o.getOfficeid()>0){
	    		   //联络人
	    		   OfficeUser item=  officeUserService.find(o.getOfficeid());
	    		   if(item!=null){
		    			  o.setOfficename(item.getName());
		    		  }
	    	   }
	    	   //联络科室
	    	   if(o.getOrgid()!=null&&o.getOrgid()>0){
 	  		   Organization item = organizationService.find(o.getOrgid());
 		    	   if(item!=null){
 		    		   o.setOrgname(item.getName());  
 		    	   }
 	  	       }
	    	 
	    }
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("wssList", rlist);			
		
		return "wsschedule/nlist";
	}		
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		WorkStationSchedule wsSchedule = new WorkStationSchedule();		
		if(id!=null&&id>0)
		{
			wsSchedule = workStationScheduleService.find(id);
		}
		map.addAttribute("wsSchedule", wsSchedule);		
		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("issunEq", 1));
		List<School> slist=schoolService.findAll(0,200, filters,new Sort(Sort.Direction.ASC,"id"));			
		map.put("schoolList", slist);	
		
		List<Filter> lFilters = new ArrayList<Filter>();
		lFilters.add(new Filter("otype",OfficeUserType.PartyMembers.getValue()));
		List<OfficeUser> leadList=officeUserService.findAll(0,100,lFilters,new Sort("id"));	
		map.put("leadList", leadList);	
		
		List<Filter> oFilters = new ArrayList<Filter>();
		oFilters.add(new Filter("otype",OfficeUserType.None.getValue()));
		List<OfficeUser> officeList=officeUserService.findAll(0,100,oFilters,new Sort("id"));	
		map.put("officeList", officeList);	
		
		List<Organization> orgList=organizationService.findAll();	
		map.put("orgList", orgList);
		
		return "wsschedule/nsave";
	}
	
	

}
