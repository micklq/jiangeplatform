package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.Supervision;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SupervisionService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("superv")
public class SupervisionController extends CRUDController<Supervision, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(SupervisionController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "supervisionService")
	private SupervisionService supervisionService;
	
	
	@Resource(name = "supervisionService")
	@Override
	public void setBaseService(BaseService<Supervision, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("supervlistAjax")
	@ResponseBody
	public List supervisionList() {
		List<Supervision> rlist=supervisionService.findAll();
		//jedisService.setValueToList("supervision", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("supervision");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "superv/index";
	}	
	

}
