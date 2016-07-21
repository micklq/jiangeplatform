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

import platform.county.jiange.model.entity.Village;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.VillageService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SchoolService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("school")
public class SchoolController extends CRUDController<School, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(SchoolController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "schoolService")
	private SchoolService schoolService;

	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "schoolService")
	@Override
	public void setBaseService(BaseService<School, Long> baseService) {
		this.baseService = baseService;
	}		
	
	
	
	@RequestMapping("index")
	public String index(){
		return "school/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        
	        Page<School> p = schoolService.findAll(pr, filters);
	        
	       for(School o: p.getContent()){	  
	    	   
	    	   if(o.getIssun()==1){
	    		   o.setIssuntext("是");
	    	   } 
	    	   else {
	    		   o.setIssuntext("否");
	    	   }
	    	   if(o.getCountyid()!=null&&o.getCountyid()>0){
	    		   
	    		   County item = countyService.find(o.getCountyid());
		    	   if(item!=null){
		    		   o.setCountyname(item.getName());  
		    	   }
	    		  
	    	   }  	    	   
	    	   
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	

}
