package platform.county.jiange.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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

import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.OrganizationService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 测试
 * @author Jones.zhangzq
 */
@Controller
@RequestMapping("org")
public class OrganizationController extends CRUDController<Organization, Long> {
	
	private static final Logger logger = LoggerFactory.getLogger(OrganizationController.class);
	
	@Resource(name = "jedisService")
	private JedisService jedisService;
	
	@Resource(name = "organizationService")
	private OrganizationService organizationService;
	
	
	@Resource(name = "organizationService")
	@Override
	public void setBaseService(BaseService<Organization, Long> baseService) {
		this.baseService = baseService;
	}	
	
	@RequestMapping("index")
	public String index(){
		return "org/index";
	}	
	
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,ModelMap model){		
        int dataCount = (int)organizationService.count();		
		int dataPage = (int) (dataCount/12);
		if(dataCount%12==0){
			dataPage= dataPage-1; //分页整除 减一 以下再加一
		}
		int pageCount = dataPage+1;			
		
		if(page<=0)
		{
			page = 1;
		}	
		if(page>=pageCount){
			page=pageCount;
		}
		int prePage=((page-1)>0)?(page-1):1;
		int nextPage=((page+1)>pageCount)?pageCount:(page+1);
		
		
		Pageable pr = new PageRequest(page, 12, new Sort(Direction.DESC,"id"));
		Page<Organization> list = organizationService.findAll(pr, null);
		List<Organization> rlist = new ArrayList<Organization>();
		if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        }		
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("orgList", rlist);
		return "org/nlist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		Organization org = new Organization();		
		if(id!=null&&id>0)
		{
			org = organizationService.find(id);
		}
		map.addAttribute("org", org);	
		
		return "org/nsave";
	}	

}
