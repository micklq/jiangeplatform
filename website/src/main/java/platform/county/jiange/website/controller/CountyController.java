package platform.county.jiange.website.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.Permission;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.webcomn.controller.CRUDController;
import platform.county.jiange.webcomn.controller.CRUDForm;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("county")
public class CountyController extends CRUDController<County, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(CountyController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	
	@Resource(name = "countyService")
	@Override
	public void setBaseService(BaseService<County, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("countylistAjax")
	@ResponseBody
	public List<County> countyList() {
		List<County> rlist=this.countyService.findAll();	
		return rlist;
	}	
	
	@RequestMapping("index")
	public String index(){
		return "county/index";
	}	
	

}
