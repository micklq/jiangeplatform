package platform.county.jiange.web.controller;

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
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.model.entity.WorkStationSchedule;
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
	
	@RequestMapping("index")
	public String index(){
		return "wsschedule/index";
	}	
	

}
