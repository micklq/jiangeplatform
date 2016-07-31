package platform.county.jiange.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){	
		int dataCount = (int)areaManageService.count();
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
        Page<AreaManage> list = areaManageService.findAll(pr, null); 
        List<AreaManage> rlist = new ArrayList<AreaManage>();
        if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        } 
        
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("areaList", rlist);
		
	    for(AreaManage o: rlist){	  
	    	   if(o.getContactpointId()!=null&&o.getContactpointId()>0){
	    		   County item = countyService.find(o.getContactpointId());
		    	   if(item!=null){
		    		   o.setContactpoint(item.getName());  
		    	   }
	    	   }  
	    	   
	       } 
	     model.put("areaList", rlist);	
	     
		return "areamanage/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		AreaManage area = new AreaManage();		
		if(id!=null&&id>0)
		{
			area = areaManageService.find(id);
		}
		map.addAttribute("area", area);		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> rlist=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));		
		map.put("countyList", rlist);
		return "areamanage/nsave";
	}	
	

}
