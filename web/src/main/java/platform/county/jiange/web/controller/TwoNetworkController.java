package platform.county.jiange.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.base.util.Util;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.TwoNetworkService;
import platform.county.jiange.webcomn.PageInfo;
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
	
	
	@RequestMapping("plist")
	public String plist(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,ModelMap model){		
		PageInfo twonetPage = getTwoNetPageInfo(page);
		List<TwoNetwork> twonetList = getTwoNetList(page);
		model.addAttribute("twonetPage", twonetPage);
		model.put("twonetList", twonetList);
				
		return "twonet/plist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		TwoNetwork twonet = new TwoNetwork();		
		if(id!=null&&id>0)
		{
			twonet = twoNetworkService.find(id);
		}
		map.addAttribute("twonet", twonet);	
		
		//挂包领导
		List<Filter> lFilters = new ArrayList<Filter>();
		lFilters.add(new Filter("otypeGt",OfficeUserType.None.getValue()));
		lFilters.add(new Filter("otypeLt",OfficeUserType.LiaisonMan.getValue()));
		List<OfficeUser> leadList=officeUserService.findAll(0,100,lFilters,new Sort("id"));	
		map.put("leadList", leadList);
		
		//科室
		List<Organization> orgList=organizationService.findAll();	
		map.put("orgList", orgList);
		
		//联络人
		List<Filter> oFilters = new ArrayList<Filter>();
		oFilters.add(new Filter("otypeEq",OfficeUserType.LiaisonMan.getValue()));
		List<OfficeUser> officeList=officeUserService.findAll(0,100,oFilters,new Sort("id"));	
		map.put("officeList", officeList);
		
		//联络点
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentidEq", 1L));
		List<County> clist = countyService.findAll(0, 500, filters, new Sort(
						Sort.Direction.ASC, "id"));
		map.put("countyList", clist);
		
		
		return "twonet/nsave";
	}	
	
	private PageInfo getTwoNetPageInfo(Integer page) {

		PageInfo pageInfo = new PageInfo();
		int dataCount = (int) twoNetworkService.count(); // 添加过滤
		
		int dataPage = (int) (dataCount / 12);
		if (dataCount % 12 == 0) {
			dataPage = dataPage - 1; // 分页整除 减一 以下再加一
		}
		int pageCount = dataPage + 1;

		if (page <= 0) {
			page = 1;
		}
		if (page >= pageCount) {
			page = pageCount;
		}
		pageInfo.setDataCount(dataCount);
		pageInfo.setPrePage(((page - 1) > 0) ? (page - 1) : 1);
		pageInfo.setNextPage(((page + 1) > pageCount) ? pageCount : (page + 1));
		pageInfo.setCurrentPage(page);
		pageInfo.setPageCount(pageCount);
		return pageInfo;
	}

	private List<TwoNetwork> getTwoNetList(Integer page) {

		List<Filter> filters = new ArrayList<Filter>();		
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC, "id"));
		Page<TwoNetwork> list = twoNetworkService.findAll(pr, filters);
		List<TwoNetwork> rlist = new ArrayList<TwoNetwork>();
		if (list != null && list.getSize() > 0) {
			rlist = list.getContent();
		}
		for (TwoNetwork o : rlist) {	
			
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
	    		   o.setOfficenames(Util.trimEndComma(officenames));   
	    		   
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
	    		   o.setOrgnames(Util.trimEndComma(orgnames));   
	    		   
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
	    		   o.setContactnames(Util.trimEndComma(connames));   
	    		   
	    	   }

		}
		return rlist;
	}

	

}
