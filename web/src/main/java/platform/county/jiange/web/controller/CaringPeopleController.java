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
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Supervision;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CaringPeopleCategoryService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.CaringPeopleService;
import platform.county.jiange.webcomn.PageInfo;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("caringpeople")
public class CaringPeopleController extends CRUDController<CaringPeople, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(CaringPeopleController.class);
		
	
	@Resource(name = "caringPeopleService")
	private CaringPeopleService caringPeopleService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "caringPeopleCategoryService")
	private CaringPeopleCategoryService caringPeopleCategoryService;
	
	@Resource(name = "caringPeopleService")
	@Override
	public void setBaseService(BaseService<CaringPeople, Long> baseService) {
		this.baseService = baseService;
	}	
	
	
	@RequestMapping("index")
	public String index(){
		
		return "caringpeople/index";
	}	
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
			@RequestParam(value = "cid", required = false, defaultValue = "0") Long cid,
			ModelMap model){
		
		model.addAttribute("categoryid", cid);
		PageInfo caringPage = getCaringPageInfo(page, cid);
		List<CaringPeople> caringList = getCaringList(page, cid);
		model.addAttribute("caringPage", caringPage);
		model.put("caringList", caringList);
		
		List<CaringPeopleCategory> categoryList = caringPeopleCategoryService.findAll();
		model.put("categoryList", categoryList);
		//联络点信息
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentidEq", 1L));
		List<County> clist = countyService.findAll(0, 500, filters, new Sort(
						Sort.Direction.ASC, "id"));
		model.put("countyList", clist);
		
		return "caringpeople/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value = "id", required = false, defaultValue = "0") Long id,ModelMap map){
		CaringPeople caring = new CaringPeople();
		if (id != null && id > 0) {
			caring = caringPeopleService.find(id);
		}

		map.addAttribute("caring", caring);
		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid", 1L));
		List<County> rlist = countyService.findAll(0, 500, filters, new Sort(
				Sort.Direction.ASC, "id"));
		map.put("countyList", rlist);
			
		List<CaringPeopleCategory> categoryList = caringPeopleCategoryService.findAll();
		map.put("categoryList", categoryList);
		
		return "caringpeople/nsave";
	}	
	private PageInfo getCaringPageInfo(Integer page, Long cid) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) caringPeopleService.count(); // 添加过滤
		if (cid != null && cid > 0) {
			dataCount = (int) caringPeopleService.count(Filter.eq("categoryid",
					cid));
		}
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

	private List<CaringPeople> getCaringList(Integer page, Long cid) {

		List<Filter> filters = new ArrayList<Filter>();
		if (cid != null && cid > 0) {
			filters.add(new Filter("countyidEq", cid));
		}
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<CaringPeople> list = caringPeopleService.findAll(pr, filters);
		List<CaringPeople> rlist = new ArrayList<CaringPeople>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for (CaringPeople o : rlist) {			
			/**
			 * 类别信息
			 */
			if (o.getCategoryid() != null && o.getCategoryid() > 0) {

				CaringPeopleCategory category = caringPeopleCategoryService.find(o.getCategoryid());
				if (category != null) {
					o.setCategoryname(category.getName());
				}

			}
			/**
			 * 联络点名称
			 */
			if (o.getCountyid() != null && o.getCountyid() > 0) {

				County county = countyService.find(o.getCountyid());
				if (county != null) {
					o.setCountyname(county.getName());
				}
			}
			

		}
		return rlist;
	}

}
