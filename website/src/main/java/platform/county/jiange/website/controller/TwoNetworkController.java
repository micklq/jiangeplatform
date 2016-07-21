package platform.county.jiange.website.controller;

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

import platform.county.jiange.base.util.Util;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.TwoNetworkService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("twonet")
public class TwoNetworkController extends CRUDController<TwoNetwork, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(TwoNetworkController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "twoNetworkService")
	private TwoNetworkService twoNetworkService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "twoNetworkService")
	@Override
	public void setBaseService(BaseService<TwoNetwork, Long> baseService) {
		this.baseService = baseService;
	}
	
	@RequestMapping("index")
	public String index(){
		return "twonet/index";
	}	
	
	@RequestMapping("listpage")
	@Override
	public RespBody listPage(Integer page, Integer size, List<Filter> filters, Sort sort) {
	        Pageable pr = new PageRequest(page, size, sort);
	        Page<TwoNetwork> p = twoNetworkService.findAll(pr, filters);
	        
	       for(TwoNetwork o: p.getContent()){	  
	    	   
	    	   //挂包领导
	    	   if(o.getLeadid()!=null&& o.getLeadid()>0){
	    		   OfficeUser ou = officeUserService.find(o.getLeadid());
		    	   if(ou!=null){
		    		   o.setLeadname(ou.getName());   
		    	   }   
	    	   }
	    	   
	    	   //负责人
	    	   if(o.getOfficeids()!=null&&o.getOfficeids().length()>0){	    		 
	    		   String officenames="";
	    		   Long[] ids = Util.toLongArray(o.getOfficeids());	    		   
	    		   List<OfficeUser> oou = officeUserService.findAll(ids); 
	    		   if(oou!=null&& oou.size()>0)
	    		   {
	    			   for(OfficeUser oo :oou){	    				   
	    				   officenames += oo.getName()+",";	   
	    			   }		    		
		    	   } 	    				       				   
	    		   o.setOfficenames(Util.trimEnd(officenames,","));   
	    		   
	    	   }	    	  
	    	  
	    	  //责任科室
	    	  if(o.getOrgids()!=null&&o.getOrgids().length()>0){	    		 
	    		   String orgnames="";
	    		   Long[] ids = Util.toLongArray(o.getOrgids());	    		   
	    		   List<Organization> oou = organizationService.findAll(ids); 
	    		   if(oou!=null&& oou.size()>0)
	    		   {
	    			   for(Organization oo :oou){	    				   
	    				   orgnames += oo.getName()+",";	   
	    			   }		    		
		    	   } 	    				       				   
	    		   o.setOrgnames(Util.trimEnd(orgnames,","));   
	    		   
	    	   }
	    	  //联络点
	    	  if(o.getContactids()!=null&&o.getContactids().length()>0){	    		 
	    		   String connames="";
	    		   Long[] ids = Util.toLongArray(o.getOrgids());	    		   
	    		   List<County> oou = countyService.findAll(ids); 
	    		   if(oou!=null&& oou.size()>0)
	    		   {
	    			   for(County oo :oou){	    				   
	    				   connames += oo.getName()+",";	   
	    			   }		    		
		    	   } 	    				       				   
	    		   o.setContactnames(Util.trimEnd(connames,","));   
	    		   
	    	   }
	    	  
	    	   
	       } 
	        return respBodyWriter.toSuccess(p);
	    }
	

	

}
