package platform.county.jiange.website.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.model.entity.Village;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.CaringPeopleCategory;
import platform.county.jiange.model.entity.Permission;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.GroupManageService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.OrgPostService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.service.SchoolService;
import platform.county.jiange.service.VillageService;
import platform.county.jiange.service.CaringPeopleCategoryService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.webcomn.controller.CRUDController;
import platform.county.jiange.webcomn.controller.CRUDForm;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("ajax")
public class AjaxController extends CRUDController<BaseEntity, Long> {
		
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	@Resource(name = "villageService")
	private VillageService villageService;
	
	@Resource(name = "caringPeopleCategoryService")
	private CaringPeopleCategoryService caringPeopleCategoryService;
	
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	@Resource(name = "orgPostService")
	private OrgPostService orgPostService;
	
	@Resource(name = "groupManageService")
	GroupManageService groupManageService;
	
	@Resource(name = "officeUserService")
	OfficeUserService officeUserService;
	
	@Resource(name = "areaManageService")
	AreaManageService areaManageService;
	
	@Resource(name = "schoolService")
	SchoolService schoolService;
	
	@Override
	public void setBaseService(BaseService<BaseEntity, Long> baseService) {
		this.baseService = baseService;
		
	}	
	@RequestMapping("countyroot")
	@ResponseBody
	public List<County> countyRoot() {
		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",0L));
		List<County> rlist=countyService.findAll(0,5,filters,new Sort(Sort.Direction.ASC,"id"));		
		return rlist;
	}
	
	@RequestMapping("countylist")
	@ResponseBody
	public List<County> countyList() {
		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> rlist=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));		
		return rlist;
	}	
	@RequestMapping("countyall")
	@ResponseBody
	public List<County> countyAll() 
	{
		List<County> rlist=this.countyService.findAll();	
		return rlist;
	}
	
	@RequestMapping("villagelist")
	@ResponseBody
	public List<Village> villageList() {
		List<Village> rlist=villageService.findAll();	
		return rlist;
	}
	
	@RequestMapping("caringcategory")
	@ResponseBody
	public List<CaringPeopleCategory> caringCategory() {
		List<CaringPeopleCategory> rlist=caringPeopleCategoryService.findAll();	
		return rlist;
	}
	
	@RequestMapping("orgall")
	@ResponseBody
	public List<Organization> orgAll() 
	{
		List<Organization> rlist=organizationService.findAll();	
		return rlist;
	}
	
	@RequestMapping("orgpostall")
	@ResponseBody
	public List<OrgPost> orgPostAll() 
	{
		List<OrgPost> rlist=orgPostService.findAll();	
		return rlist;
	}
	
	@RequestMapping("grouproot")
	@ResponseBody
	public List<GroupManage> groupRoot() {
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",0L));
		List<GroupManage> rlist=groupManageService.findAll(0,5,filters,new Sort(Sort.Direction.ASC,"id"));	
		return rlist;
	}
	
	@RequestMapping("grouplist")
	@ResponseBody
	public List<GroupManage> groupList() {
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<GroupManage> rlist=groupManageService.findAll(0,5,filters,new Sort(Sort.Direction.ASC,"id"));			
		return rlist;
	}
	
	@RequestMapping("areaall")
	@ResponseBody
	public List<AreaManage> areaAll() {
		List<AreaManage> rlist=areaManageService.findAll();	
		return rlist;
	}
	
	@RequestMapping("officeall")
	@ResponseBody
	public List<OfficeUser> officeAll() {
		List<OfficeUser> rlist=officeUserService.findAll();	
		return rlist;
	}
	
	@RequestMapping("sunschool")
	@ResponseBody
	public List<School> sunSchool() {
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("issunEq", 1));
		List<School> rlist=schoolService.findAll(0,200, filters,new Sort(Sort.Direction.ASC,"id"));	
		return rlist;
	}
	

}
