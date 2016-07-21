package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.Test;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.TestService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("test")
public class TestController extends CRUDController<Test, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "testService")
	private TestService testService;
	
	
	@Resource(name = "testService")
	@Override
	public void setBaseService(BaseService<Test, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("testlistAjax")
	@ResponseBody
	public List testList() {
		List<Test> rlist=this.testService.findAll();
		//jedisService.setValueToList("test", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("test");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "test/index";
	}	
	

}
