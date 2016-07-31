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
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1")Integer page,@RequestParam(value="type", required=false, defaultValue="0")Integer type,ModelMap model){	
		int dataCount = (int) (villageService.count()/12);
		if(dataCount%12==0){
			dataCount= dataCount-1; //分页整除 减一 以下再加一
		}
		int pageCount = dataCount+1;
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
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(Filter.eq("type", type)); // 0村庄  /1社区
        Page<Village> list = villageService.findAll(pr, filters); 
        List<Village> rlist = new ArrayList<Village>();
        if(list!=null&& list.getSize()>0)
        {       	
        	
           rlist = list.getContent();
           for(Village o: rlist){	  
 	    	   if(o.getCountyid()!=null&& o.getCountyid()>0){	    		   
 	    		   County item = countyService.find(o.getCountyid());
 		    	   if(item!=null){
 		    		   o.setCountyname(item.getName());   
 		    	   }
 	    	   }
 	       }
        } 
        
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
        model.addAttribute("type", type);
		model.put("villageList", rlist);	
		return "village/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,@RequestParam(value="type", required=false, defaultValue="0")Integer type,ModelMap map){		
		Village village = new Village();		
		if(id!=null&&id>0)
		{
			village = villageService.find(id);
		}
		village.setType(type);	
		
		map.addAttribute("village", village);	
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> list=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));		
		map.put("countyList", list);
		
		return "village/nsave";
	}
	

}
