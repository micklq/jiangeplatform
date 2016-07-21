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
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
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
@RequestMapping("ouser")
public class OfficeUserController extends CRUDController<OfficeUser, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(OfficeUserController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;
	
	@Resource(name = "officeUserService")
	@Override
	public void setBaseService(BaseService<OfficeUser, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("index")
	public String index(){
		return "ouser/index";
	}
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        
	        Page<OfficeUser> p = officeUserService.findAll(pr, filters);
	        
	       for(OfficeUser o: p.getContent()){	  
	    	   
	    	   if(o.getOrgid()!=null&&o.getOrgid()>0){
	    		   Organization item = organizationService.find(o.getOrgid());
		    	   if(item!=null){
		    		   o.setOrgname(item.getName());  
		    	   }
	    	   }  
	    	   
	    	   if(o.getPostid()!=null&&o.getPostid()>0){
	    		   OrgPost item = orgPostService.find(o.getPostid());
		    	   if(item!=null){
		    		   o.setPostname(item.getName());  
		    	   }
	    	   }
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	
		
	

}
