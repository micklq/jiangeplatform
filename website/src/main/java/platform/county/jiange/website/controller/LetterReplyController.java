package platform.county.jiange.website.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.LetterReplyService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("letterreply")
public class LetterReplyController extends CRUDController<LetterReply, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(LetterReplyController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "letterReplyService")
	private LetterReplyService letterReplyService;
	
	
	@Resource(name = "letterReplyService")
	@Override
	public void setBaseService(BaseService<LetterReply, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("letterReplylistAjax")
	@ResponseBody
	public List letterReplyList() {
		List<LetterReply> rlist=letterReplyService.findAll();
		//jedisService.setValueToList("letterReply", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("letterReply");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "letterreply/index";
	}	
	

}
