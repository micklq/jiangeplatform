package platform.county.jiange.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.model.entity.GroupMember;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.GroupManageService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.GroupMemberService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrgPostService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("gmember")
public class GroupMemberController extends CRUDController<GroupMember, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(GroupMemberController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "groupMemberService")
	private GroupMemberService groupMemberService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;
	
	@Resource(name = "groupManageService")
	private GroupManageService groupManageService;
	
	@Resource(name = "groupMemberService")
	@Override
	public void setBaseService(BaseService<GroupMember, Long> baseService) {
		this.baseService = baseService;
	}
	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<GroupMember> p = groupMemberService.findAll(pr, filters);
	       
	       for(GroupMember o: p.getContent()){	  
	    	   
	    	   //小组信息
	    	   if(o.getGroupid()!=null&&o.getGroupid()>0){
	    		   
	    		  GroupManage item= groupManageService.find(o.getGroupid());
	    		  if(item!=null){
	    			  o.setGroupname(item.getName());
	    		  }
	    	   }
	    	   if(o.getGrouptitleid()!=null&&o.getGrouptitleid()>0){
	    		   
	    		   GroupManage item=  groupManageService.find(o.getGrouptitleid());
	    		   if(item!=null){
		    			  o.setGrouptitle(item.getName());
		    		  }
	    	   }
	    	   //成员信息
	    	   if(o.getOfficeid()!=null&& o.getOfficeid()>0){	    		   
	    		   OfficeUser item = officeUserService.find(o.getOfficeid());
		    	   if(item!=null){
		    		   o.setName(item.getName());   
		    		   o.setOthers(item.getOthers());
		    		   if(item.getOrgid()!=null&&item.getOrgid()>0){
		    	  		   Organization oitem = organizationService.find(item.getOrgid());
		    		    	   if(oitem!=null){
		    		    		   o.setOrgname(oitem.getName());  
		    		    	   }
		    	  	   }  		    	  	   
		    	  	   if(item.getPostid()!=null&&item.getPostid()>0){
		    	  		   OrgPost pitem = orgPostService.find(item.getPostid());
		    		    	   if(pitem!=null){
		    		    		   o.setPostname(pitem.getName());  
		    		    	   }
		    	  	   }
		    	   }
	    	   }
	       } 
	
	       
	        return respBodyWriter.toSuccess(p);
	    }	
	
	
	@RequestMapping("index")
	public String index(){
		return "gmember/index";
	}	
	

}
