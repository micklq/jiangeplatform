package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("org")
public class OrganizationController extends CRUDController<Organization, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(OrganizationController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	
	@Resource(name = "organizationService")
	@Override
	public void setBaseService(BaseService<Organization, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("organizationlistAjax")
	@ResponseBody
	public List organizationList() {
		List<Organization> rlist=organizationService.findAll();
		//jedisService.setValueToList("organization", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("organization");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "org/index";
	}	
	

}
