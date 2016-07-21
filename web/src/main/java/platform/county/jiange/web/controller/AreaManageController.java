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
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("areamanage")
public class AreaManageController extends CRUDController<AreaManage, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(AreaManageController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "areaManageService")
	private AreaManageService areaManageService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "areaManageService")
	@Override
	public void setBaseService(BaseService<AreaManage, Long> baseService) {
		this.baseService = baseService;
	}	
	
	
	@RequestMapping("index")
	public String index(){
		return "areamanage/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<AreaManage> p = areaManageService.findAll(pr, filters);
	        
	       for(AreaManage o: p.getContent()){	  
	    	   if(o.getContactpointId()!=null&&o.getContactpointId()>0){
	    		   County item = countyService.find(o.getContactpointId());
		    	   if(item!=null){
		    		   o.setContactpoint(item.getName());  
		    	   }
	    	   }  
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	

}
