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

import platform.county.jiange.base.util.Util;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.ThreeNetwork;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.ThreeNetworkService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("threenet")
public class ThreeNetworkController extends CRUDController<ThreeNetwork, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(ThreeNetworkController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "threeNetworkService")
	private ThreeNetworkService threeNetworkService;
	
	@Resource(name = "areaManageService")
	private AreaManageService areaManageService;
	
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "threeNetworkService")
	@Override
	public void setBaseService(BaseService<ThreeNetwork, Long> baseService) {
		this.baseService = baseService;
	}
	
	
	
	@RequestMapping("index")
	public String index(){
		return "threenet/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<ThreeNetwork> p = threeNetworkService.findAll(pr, filters);
	        
	       for(ThreeNetwork o: p.getContent()){	  
	    	   
	    	   //所属片区
	    	   if(o.getAreaid()!=null&& o.getAreaid()>0){
	    		   AreaManage ou = areaManageService.find(o.getAreaid());
		    	   if(ou!=null){
		    		   o.setAreaname(ou.getName());   
		    	   }   
	    	   }
	    	  
	    	   //辐射乡镇
	    	   if(o.getCountyids()!=null&&!o.getCountyids().isEmpty()){	    		 
	    		   String countynames="";
	    		   Long[] ids = Util.toLongArray(o.getCountyids());	    		   
	    		   List<County> oou = countyService.findAll(ids); 
	    		   if(oou!=null&& oou.size()>0)
	    		   {
	    			   for(County oo :oou){	    				   
	    				   countynames += oo.getName()+",";	   
	    			   }		    		
		    	   } 	    				       				   
	    		   o.setCountynames(Util.trimEnd(countynames,","));   
	    		   
	    	   }
	    	  
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	

}
