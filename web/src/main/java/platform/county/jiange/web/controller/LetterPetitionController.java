package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.entity.LetterPetition;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.LetterPetitionService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("letter")
public class LetterPetitionController extends CRUDController<LetterPetition, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(LetterPetitionController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "letterPetitionService")
	private LetterPetitionService letterPetitionService;
	
	
	@Resource(name = "letterPetitionService")
	@Override
	public void setBaseService(BaseService<LetterPetition, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("letterlistAjax")
	@ResponseBody
	public List letterPetitionList() {
		List<LetterPetition> rlist=letterPetitionService.findAll();
		//jedisService.setValueToList("letterPetition", "aaa","bbb");
		//List<String> list = jedisService.getValuesFromList("letterPetition");
		return rlist;
	}
	
	@RequestMapping("index")
	public String index(){
		return "letter/index";
	}	
	
	@RequestMapping("ndetail")
	public String ndetail(){
		return "letter/ndetail";
	}
	
	@RequestMapping("nlist")
	public String nlist(){
		return "letter/nlist";
	}
	
	@RequestMapping("nsave")
	public String nsave(){
		return "letter/nsave";
	}	
	

}
