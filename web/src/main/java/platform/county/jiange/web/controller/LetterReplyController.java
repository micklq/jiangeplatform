package platform.county.jiange.web.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import platform.county.jiange.model.constants.ResponseCode;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.model.entity.User;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.LetterReplyService;
import platform.county.jiange.service.UserService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.U;
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
	
	@Resource(name="userService")
	private UserService userService;
	
	@Resource(name = "letterReplyService")
	@Override
	public void setBaseService(BaseService<LetterReply, Long> baseService) {
		this.baseService = baseService;
	}
	
	
	
	@RequestMapping("index")
	public String index(){
		return "letterreply/index";
	}	
	
	
	@Override
	public RespBody create(LetterReply entity) {
		if (!validator(entity, BaseEntity.Save.class)) {
            return respBodyWriter.toError("");
        }		
		if (!validator(entity, BaseEntity.Save.class)) {
            return respBodyWriter.toError(ResponseCode.CODE_455.toString(),ResponseCode.CODE_455.toCode());
        }   
		
        User u = userService.find(U.getUid());
        if(u!=null){
        	entity.setReplyuserid(u.getOfficeid());	
        }
        
        baseService.save(entity);
        return respBodyWriter.toSuccess(entity);
	}

}
