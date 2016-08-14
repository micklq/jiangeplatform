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

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.CaringPeople;
import platform.county.jiange.model.entity.CaringPeopleCategory;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.model.entity.WorkStationSchedule;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.FirstNetworkService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.webcomn.PageInfo;
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
	
	@RequestMapping("plist")
	public String plist(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,ModelMap model){		
		PageInfo fnetPage = getFirstNetPageInfo(page);
		List<FirstNetwork> fnetList = getFirstNetList(page);
		model.addAttribute("fnetPage", fnetPage);
		model.put("fnetList", fnetList);
				
		return "firstnet/plist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		FirstNetwork fnet = new FirstNetwork();		
		if(id!=null&&id>0)
		{
			fnet = firstNetworkService.find(id);
		}
		map.addAttribute("fnet", fnet);	
		
		List<Filter> oFilters = new ArrayList<Filter>();
		oFilters.add(new Filter("otypeEq",OfficeUserType.Secretary.getValue()));
		List<OfficeUser> officeList=officeUserService.findAll(0,100,oFilters,new Sort("id"));	
		map.put("officeList", officeList);	
		
		return "firstnet/nsave";
	}	
	
	private PageInfo getFirstNetPageInfo(Integer page) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) firstNetworkService.count(); // 添加过滤
		
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

	private List<FirstNetwork> getFirstNetList(Integer page) {

		List<Filter> filters = new ArrayList<Filter>();		
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<FirstNetwork> list = firstNetworkService.findAll(pr, filters);
		List<FirstNetwork> rlist = new ArrayList<FirstNetwork>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for (FirstNetwork o : rlist) {	
			
			 if(o.getOfficeid()!=null&& o.getOfficeid()>0){	    		   
	    		   OfficeUser item = officeUserService.find(o.getOfficeid());
		    	   if(item!=null){
		    		   o.setOfficeName(item.getName());   
		    	   }
	    	   }

		}
		return rlist;
	}
	

}
