package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.OrgPostService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("orgpost")
public class OrgPostController extends CRUDController<OrgPost, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(OrgPostController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;
	
	
	@Resource(name = "orgPostService")
	@Override
	public void setBaseService(BaseService<OrgPost, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("orgPostlistAjax")
	@ResponseBody
	public List orgPostList() {
		List<OrgPost> rlist=this.orgPostService.findAll();
		//jedisService.setValueToList("orgPost", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("orgPost");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "orgpost/index";
	}	
	

}
