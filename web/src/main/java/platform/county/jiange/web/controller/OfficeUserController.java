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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.constants.ResponseCode;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OperationLog;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrgPostService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.U;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("ouser")
public class OfficeUserController extends CRUDController<OfficeUser, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(OfficeUserController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;
	
	@Resource(name = "countyService")
	private CountyService countyService;	
	
	
	@Resource(name = "officeUserService")
	@Override
	public void setBaseService(BaseService<OfficeUser, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("index")
	public String index(){
		return "ouser/index";
	}
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        
	        Page<OfficeUser> p = officeUserService.findAll(pr, filters);
	        
	       for(OfficeUser o: p.getContent()){	
	    	   
	    	   o.setOthers(OfficeUserType.getByValue(o.getOtype()).getName());
	    	   
	    	   if(o.getOrgid()!=null&&o.getOrgid()>0){
	    		   Organization item = organizationService.find(o.getOrgid());
		    	   if(item!=null){
		    		   o.setOrgname(item.getName());  
		    	   }
	    	   }  
	    	   
	    	   if(o.getPostid()!=null&&o.getPostid()>0){
	    		   OrgPost item = orgPostService.find(o.getPostid());
		    	   if(item!=null){
		    		   o.setPostname(item.getName());  
		    	   }
	    	   }
	    	   
	    	   if(o.getLocationid()!=null&&o.getLocationid()>0){
	    		   
			    	County county = countyService.find(o.getLocationid());  
			    	if(county!=null){
			    		o.setLocation(county.getName()); 
			    	}	    		        
		    		      	  	 
	 	  	   }	   
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){
		int dataCount = (int)officeUserService.count();		
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
        Page<OfficeUser> list = officeUserService.findAll(pr, null); 
        List<OfficeUser> rlist = new ArrayList<OfficeUser>();
        if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        } 
        for(OfficeUser o: rlist){	  
        	 o.setOthers(OfficeUserType.getByValue(o.getOtype()).getName());
        	 if(o.getOrgid()!=null&&o.getOrgid()>0){
	    		   Organization item = organizationService.find(o.getOrgid());
		    	   if(item!=null){
		    		   o.setOrgname(item.getName());  
		    	   }
	    	   }  
	    	   
	    	   if(o.getPostid()!=null&&o.getPostid()>0){
	    		   OrgPost item = orgPostService.find(o.getPostid());
		    	   if(item!=null){
		    		   o.setPostname(item.getName());  
		    	   }
	    	   }
	    	   if(o.getLocationid()!=null&&o.getLocationid()>0){
	    		   
			    	County county = countyService.find(o.getLocationid());  
			    	if(county!=null){
			    		o.setLocation(county.getName()); 
			    	}	    		        
		    		      	  	 
	 	  	   }	
	       }
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("ouserList", rlist);			
		
		return "ouser/nlist";
	}		
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		OfficeUser ouser = new OfficeUser();		
		if(id!=null&&id>0)
		{
			ouser = officeUserService.find(id);	
		}
		map.addAttribute("ouser", ouser);			
	
		List<Organization> list=organizationService.findAll();		
		map.put("orgList", list);		
		List<OrgPost> plist=orgPostService.findAll();	
		map.put("orgPostList", plist);
		
		List<Filter> filters = new ArrayList<Filter>();
		//filters.add(new Filter("parentid",1L));
		List<County> clist=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));	
		map.put("countyList", clist);	
		
		return "ouser/nsave";
	}
		
	

}
