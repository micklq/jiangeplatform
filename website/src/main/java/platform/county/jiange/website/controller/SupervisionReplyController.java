package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.SupervisionReply;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SupervisionReplyService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("supervreply")
public class SupervisionReplyController extends CRUDController<SupervisionReply, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(SupervisionReplyController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "supervisionReplyService")
	private SupervisionReplyService supervisionReplyService;
	
	
	@Resource(name = "supervisionReplyService")
	@Override
	public void setBaseService(BaseService<SupervisionReply, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("supervreplylistAjax")
	@ResponseBody
	public List supervisionReplyList() {
		List<SupervisionReply> rlist=this.supervisionReplyService.findAll();
		//jedisService.setValueToList("supervisionReply", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("supervisionReply");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "supervreply/index";
	}	
	

}
