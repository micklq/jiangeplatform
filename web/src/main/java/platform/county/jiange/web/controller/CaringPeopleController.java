package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.CaringPeople;
import platform.county.jiange.model.entity.CaringPeopleCategory;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.CaringPeopleService;
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
	
	
	@Resource(name = "caringPeopleService")
	@Override
	public void setBaseService(BaseService<CaringPeople, Long> baseService) {
		this.baseService = baseService;
	}
		
	@RequestMapping("caringCategorylistAjax")
	@ResponseBody
	public List<CaringPeople> caringPeopleCategoryList() {
		List<CaringPeople> rlist=caringPeopleService.findAll();		
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "caringpeople/index";
	}	
	
	@RequestMapping("nlist")
	public String nlist(){
		return "caringpeople/nlist";
	}	
	
	@RequestMapping("nsave")
	public String nsave(){
		return "caringpeople/nsave";
	}	
	

}
