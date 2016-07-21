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

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Village;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.VillageService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 
 * @author Jones
 */
@Controller
@RequestMapping("village")
public class VillageController extends CRUDController<Village, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(VillageController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "villageService")
	private VillageService villageService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "villageService")
	@Override
	public void setBaseService(BaseService<Village, Long> baseService) {
		this.baseService = baseService;
	}	
	
	@RequestMapping("index")
	public String index(){
		return "village/index";
	}
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<Village> p = villageService.findAll(pr, filters);
	        
	       for(Village o: p.getContent()){	  
	    	   if(o.getCountyid()!=null&& o.getCountyid()>0){	    		   
	    		   County item = countyService.find(o.getCountyid());
		    	   if(item!=null){
		    		   o.setCountyname(item.getName());   
		    	   }
	    	   }
	    	   
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	

}
