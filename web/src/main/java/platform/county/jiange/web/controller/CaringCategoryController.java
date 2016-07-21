package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.CaringPeopleCategory;
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
	

}
