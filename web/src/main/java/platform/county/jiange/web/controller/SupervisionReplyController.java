package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.constants.ResponseCode;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.model.entity.SupervisionReply;
import platform.county.jiange.model.entity.User;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.UserService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.SupervisionReplyService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.U;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 监督平台
 * @author Mick
 */
@Controller
@RequestMapping("supervreply")
public class SupervisionReplyController extends CRUDController<SupervisionReply, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(SupervisionReplyController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "supervisionReplyService")
	private SupervisionReplyService supervisionReplyService;
	
	@Resource(name="userService")
	private UserService userService;
	
	@Resource(name = "supervisionReplyService")
	@Override
	public void setBaseService(BaseService<SupervisionReply, Long> baseService) {
		this.baseService = baseService;
	}
	
	
	@RequestMapping("index")
	public String index(){
		return "supervreply/index";
	}	
	
	@Override
	public RespBody create(SupervisionReply entity) {
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
