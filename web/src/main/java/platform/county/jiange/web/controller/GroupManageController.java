package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.GroupManageService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("gmanage")
public class GroupManageController extends CRUDController<GroupManage, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(GroupManageController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "groupManageService")
	private GroupManageService groupManageService;
	
	
	@Resource(name = "groupManageService")
	@Override
	public void setBaseService(BaseService<GroupManage, Long> baseService) {
		this.baseService = baseService;
	}	
	
	@RequestMapping("index")
	public String index(){
		return "gmanage/index";
	}	
	

}
