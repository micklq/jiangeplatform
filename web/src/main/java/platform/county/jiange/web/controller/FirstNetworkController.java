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
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.FirstNetworkService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("firstnet")
public class FirstNetworkController extends CRUDController<FirstNetwork, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(FirstNetworkController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "firstNetworkService")
	private FirstNetworkService firstNetworkService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "firstNetworkService")
	@Override
	public void setBaseService(BaseService<FirstNetwork, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("index")
	public String index(){
		return "firstnet/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<FirstNetwork> p = firstNetworkService.findAll(pr, filters);
	        
	       for(FirstNetwork o: p.getContent()){	  
	    	   if(o.getOfficeid()!=null&& o.getOfficeid()>0){	    		   
	    		   OfficeUser item = officeUserService.find(o.getOfficeid());
		    	   if(item!=null){
		    		   o.setOfficeName(item.getName());   
		    	   }
	    	   } 
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	
	@RequestMapping("nlist")
	public String nlist(){
		return "firstnet/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(){
		return "firstnet/nsave";
	}	
	

}
