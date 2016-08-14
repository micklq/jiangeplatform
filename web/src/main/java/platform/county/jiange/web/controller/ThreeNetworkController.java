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
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.base.util.Util;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.ThreeNetwork;
import platform.county.jiange.model.entity.ThreeNetwork;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.ThreeNetworkService;
import platform.county.jiange.webcomn.PageInfo;
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
	

	@RequestMapping("plist")
	public String plist(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,ModelMap model){		
		PageInfo threenetPage = getThreeNetPageInfo(page);
		List<ThreeNetwork> threenetList = getThreeNetList(page);
		model.addAttribute("threenetPage", threenetPage);
		model.put("threenetList", threenetList);
				
		return "threenet/plist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		ThreeNetwork threenet = new ThreeNetwork();		
		if(id!=null&&id>0)
		{
			threenet = threeNetworkService.find(id);
		}
		map.addAttribute("threenet", threenet);	
		
		//片区
		List<AreaManage> areaList=areaManageService.findAll();		
		map.put("areaList", areaList);	
		
		//辐射乡镇
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentidEq", 1L));
		List<County> clist = countyService.findAll(0, 500, filters, new Sort(
						Sort.Direction.ASC, "id"));
		map.put("countyList", clist);
		
		
		return "threenet/nsave";
	}	
	
	private PageInfo getThreeNetPageInfo(Integer page) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) threeNetworkService.count(); // 添加过滤
		
		int dataPage = (int) (dataCount / 12);
		if (dataCount % 12 == 0) {
			dataPage = dataPage - 1; // 分页整除 减一 以下再加一
		}
		int pageCount = dataPage + 1;

		if (page <= 0) {
			page = 1;
		}
		if (page >= pageCount) {
			page = pageCount;
		}
		pageInfo.setDataCount(dataCount);
		pageInfo.setPrePage(((page - 1) > 0) ? (page - 1) : 1);
		pageInfo.setNextPage(((page + 1) > pageCount) ? pageCount : (page + 1));
		pageInfo.setCurrentPage(page);
		pageInfo.setPageCount(pageCount);
		return pageInfo;
	}

	private List<ThreeNetwork> getThreeNetList(Integer page) {

		List<Filter> filters = new ArrayList<Filter>();		
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<ThreeNetwork> list = threeNetworkService.findAll(pr, filters);
		List<ThreeNetwork> rlist = new ArrayList<ThreeNetwork>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for (ThreeNetwork o : rlist) {	
			
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
	    		   o.setCountynames(Util.trimEndComma(countynames));   
	    		   
	    	   }

		}
		return rlist;
	}

	
	

}
