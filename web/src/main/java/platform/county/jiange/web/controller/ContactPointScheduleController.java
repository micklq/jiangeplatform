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
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.model.entity.GroupMember;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.ContactPointScheduleService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("cpschedule")
public class ContactPointScheduleController extends CRUDController<ContactPointSchedule, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(ContactPointScheduleController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "contactPointScheduleService")
	private ContactPointScheduleService contactPointScheduleService;
		
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "areaManageService")
	private AreaManageService areaManageService;
	
	
	@Resource(name = "contactPointScheduleService")
	@Override
	public void setBaseService(BaseService<ContactPointSchedule, Long> baseService) {
		this.baseService = baseService;
	}
	
	
	
	@RequestMapping("index")
	public String index(){
		return "cpschedule/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<ContactPointSchedule> p = contactPointScheduleService.findAll(pr, filters);
	        
	       for(ContactPointSchedule o: p.getContent()){	 

	    	   //片区信息
	    	   if(o.getAreaid()!=null&&o.getAreaid()>0){
	    		   AreaManage item = areaManageService.find(o.getAreaid());
    		    	   if(item!=null){
    		    		   o.setAreaname(item.getName());  
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
		int dataCount = (int)contactPointScheduleService.count();		
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
        Page<ContactPointSchedule> list = contactPointScheduleService.findAll(pr, null); 
        List<ContactPointSchedule> rlist = new ArrayList<ContactPointSchedule>();
        if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        } 
        for(ContactPointSchedule o: rlist){	  
	    	   
        	 //片区信息
	    	   if(o.getAreaid()!=null&&o.getAreaid()>0){
	    		   AreaManage item = areaManageService.find(o.getAreaid());
 		    	   if(item!=null){
 		    		   o.setAreaname(item.getName());  
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
		model.put("cpsList", rlist);			
		
		return "cpschedule/nlist";
	}		
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		ContactPointSchedule cpSchedule = new ContactPointSchedule();		
		if(id!=null&&id>0)
		{
			cpSchedule = contactPointScheduleService.find(id);
		}
		map.addAttribute("cpSchedule", cpSchedule);		
		
		List<AreaManage> areaList=areaManageService.findAll();		
		map.put("areaList", areaList);	
		
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
		
		return "cpschedule/nsave";
	}
	
	
	

}
