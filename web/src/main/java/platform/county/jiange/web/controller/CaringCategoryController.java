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

import platform.county.jiange.model.entity.CaringPeopleCategory;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.CaringPeopleCategoryService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("caringcategory")
public class CaringCategoryController extends CRUDController<CaringPeopleCategory, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(CaringCategoryController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "caringPeopleCategoryService")
	private CaringPeopleCategoryService caringPeopleCategoryService;
	
	
	@Resource(name = "caringPeopleCategoryService")
	@Override
	public void setBaseService(BaseService<CaringPeopleCategory, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("caringCategorylistAjax")
	@ResponseBody
	public List caringPeopleCategoryList() {
		List<CaringPeopleCategory> rlist=this.caringPeopleCategoryService.findAll();		
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "caringcategory/index";
	}	
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){	
		
		int dataCount = (int)caringPeopleCategoryService.count();		
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
		Page<CaringPeopleCategory> list = caringPeopleCategoryService.findAll(pr, null);
		List<CaringPeopleCategory> rlist = new ArrayList<CaringPeopleCategory>();
		if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        }				
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("categoryList", rlist);
		return "caringcategory/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		CaringPeopleCategory category = new CaringPeopleCategory();		
		if(id!=null&&id>0)
		{
			category = caringPeopleCategoryService.find(id);
		}
		map.addAttribute("category", category);
		return "caringpeople/nsave";
	}	

}
