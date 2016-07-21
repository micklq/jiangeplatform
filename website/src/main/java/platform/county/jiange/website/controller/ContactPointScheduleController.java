package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.ContactPointSchedule;
import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.model.entity.GroupMember;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
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
	

}
