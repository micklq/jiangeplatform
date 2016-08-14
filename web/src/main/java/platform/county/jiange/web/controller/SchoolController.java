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

import platform.county.jiange.model.entity.Village;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.CaringPeople;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.VillageService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SchoolService;
import platform.county.jiange.webcomn.PageInfo;
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

	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){
				
		PageInfo schoolPage = getSchoolPageInfo(page);
		List<School> rlist = getSchoolList(page);
		model.addAttribute("schoolPage", schoolPage);
		model.put("schoolList", rlist);			
		return "school/nlist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		School school = new School();		
		if(id!=null&&id>0)
		{
			school = schoolService.find(id);
		}
		map.addAttribute("school", school);	
		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> list=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));		
		map.put("countyList", list);
		
		return "school/nsave";
	}
	
	private PageInfo getSchoolPageInfo(Integer page) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) schoolService.count(); // 添加过滤
		
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

	private List<School> getSchoolList(Integer page) {

		List<Filter> filters = new ArrayList<Filter>();		
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<School> list = schoolService.findAll(pr, filters);
		List<School> rlist = new ArrayList<School>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for(School o: rlist){	  
	    	   
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
		return rlist;
	}
	

}
