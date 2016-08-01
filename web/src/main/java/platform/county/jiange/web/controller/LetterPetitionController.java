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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.constants.ResponseCode;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.ContactPointSchedule;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.model.entity.LetterPetition;
import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.model.entity.OperationLog;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.model.entity.User;
import platform.county.jiange.model.enums.OfficeUserType;
import platform.county.jiange.service.AreaManageService;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.ContactPointScheduleService;
import platform.county.jiange.service.CountyService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.LetterPetitionService;
import platform.county.jiange.service.LetterReplyService;
import platform.county.jiange.service.OfficeUserService;
import platform.county.jiange.service.UserService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.U;
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
	
	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "officeUserService")
	private OfficeUserService officeUserService;	

	
	@Resource(name = "countyService")
	private CountyService countyService;
	
	
	@Resource(name = "letterReplyService")
	private LetterReplyService letterReplyService;
	
	@Resource(name = "letterPetitionService")
	@Override
	public void setBaseService(BaseService<LetterPetition, Long> baseService) {
		this.baseService = baseService;
	}	
	
	@RequestMapping("index")
	public String index(){
		return "letter/index";
	}	
	
	@RequestMapping(value = {"/create"}, method = {RequestMethod.POST, RequestMethod.PUT})
    @ResponseBody
    @Override
    public RespBody create(LetterPetition entity) {
        if (!validator(entity, BaseEntity.Save.class)) {
            return respBodyWriter.toError(ResponseCode.CODE_455.toString(),ResponseCode.CODE_455.toCode());
        }
        entity.setCreatorId(U.getUid());
        User user = userService.find(U.getUid());
        if(user!=null){
        	
        	entity.setOfficeid(user.getOfficeid());
        }        
        baseService.save(entity);
        return respBodyWriter.toSuccess(entity);
    }
    
    @RequestMapping(value = {"/update"},method = {RequestMethod.POST, RequestMethod.PUT})
    @ResponseBody
    @Override
    public RespBody update(LetterPetition entity) {
        if (!validator(entity, BaseEntity.Update.class)) {
            return respBodyWriter.toError("",ResponseCode.CODE_455.toCode());
        }        
        entity.setCreatorId(U.getUid());
        User user = userService.find(U.getUid());
        if(user!=null){
        	
        	entity.setOfficeid(user.getOfficeid());
        }        
        baseService.update(entity);
        return respBodyWriter.toSuccess(entity);
    }   
	
	
	@RequestMapping("nlist")
	public String nlist(@RequestParam(value="page", required=false, defaultValue="1") Integer page,@RequestParam(value="page1", required=false, defaultValue="1") Integer page1,@RequestParam(value="cid", required=false, defaultValue="0") Long cid,ModelMap model){
		
		int dataCount = (int)letterPetitionService.count();		//添加过滤
		List<Filter> filters = new ArrayList<Filter>();
		if(cid!=null && cid>0){
			filters.add(new Filter("locationid",cid));	
			dataCount = (int)letterPetitionService.count(filters);	
		}
		int dataPage = (int) (dataCount/5);
		if(dataCount%5==0){
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
		
		Pageable pr = new PageRequest(page, 5, new Sort(Direction.DESC,"id"));		
        Page<LetterPetition> list = letterPetitionService.findAll(pr, filters); 
        List<LetterPetition> rlist = new ArrayList<LetterPetition>();
        if(list!=null&& list.getSize()>0)
        {        	
        	 rlist = list.getContent();
        } 
        for(LetterPetition o: rlist){	  
	    	   
        	   //地点信息
	    	   if(o.getLocationid()!=null&&o.getLocationid()>0){
	    		   
		    	County county = countyService.find(o.getLocationid());  
		    	if(county!=null){
		    		o.setLocation(county.getName()); 
		    	}	    		        
	    		      	  	 
 	  	      }	    	   
	    	   //联络人	    	 	    	
	    	   if(o.getOfficeid()!=null&&o.getOfficeid()>0){
	    		   //
	    		   OfficeUser item=  officeUserService.find(o.getOfficeid());
	    		   if(item!=null){
		    			  o.setOfficename(item.getName());
		    		  }
	    	   }	    	  
        }
        
        // ID 标题 地点 联络人 时间
        //联络点信息
        List<Filter> cfilters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> clist=countyService.findAll(0,500,cfilters,new Sort(Sort.Direction.ASC,"id"));	
			
		
        model.addAttribute("prePage", prePage);
        model.addAttribute("nextPage", nextPage);
        model.addAttribute("currentPage", page);	
        model.addAttribute("pageCount", pageCount);	
		model.put("letterList", rlist);		
		model.put("countyList", clist);
				
		return "letter/nlist";
	}
	
	@RequestMapping("nsave")
	public String nsave(@RequestParam(value="id", required=false, defaultValue="0") Long id,@RequestParam(value="cid", required=false, defaultValue="0") Long cid,ModelMap map){
		
		LetterPetition letter = new LetterPetition();		
		if(id!=null&&id>0)
		{
			letter = letterPetitionService.find(id);
		}
		
		map.addAttribute("letter", letter);		
		List<Filter> filters = new ArrayList<Filter>();
		filters.add(new Filter("parentid",1L));
		List<County> rlist=countyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));	
		map.put("countyList", rlist);	
		
		List<Filter> ofilters = new ArrayList<Filter>();		
		if(cid!=null && cid>0){
			ofilters.add(new Filter("locationid",cid));	
		}		
		List<OfficeUser> olist=officeUserService.findAll(0,500,ofilters,new Sort(Sort.Direction.ASC,"id"));	
		map.put("ouserList", olist);	
		
		return "letter/nsave";
	}	
	
	@RequestMapping("ndetail")
	public String ndetail(@RequestParam(value="id", required=false, defaultValue="0") Long id,ModelMap map){
		
		LetterPetition letter = new LetterPetition();		
		if(id!=null&&id>0)
		{
			letter = letterPetitionService.find(id);
		}
		
		 //地点信息
 	    if(letter.getLocationid()!=null&&letter.getLocationid()>0){ 		   
	    	County county = countyService.find(letter.getLocationid());  
	    	if(county!=null){
	    		letter.setLocation(county.getName()); 
	    	}	    		        
 		      	  	 
	      }	    	   
 	    //联络人	    	 	    	
 	    if(letter.getOfficeid()!=null&&letter.getOfficeid()>0){ 		   
 		   OfficeUser item=  officeUserService.find(letter.getOfficeid());
 		   if(item!=null){
 			  letter.setOfficename(item.getName());
	    	}
 	    }	
	    map.addAttribute("letter", letter);	
	    //回复信息
	    if(letter.getId()>0){	    	
	    	List<Filter> filters = new ArrayList<Filter>();
			filters.add(new Filter("letterid",letter.getId()));
			List<LetterReply> rlist=letterReplyService.findAll(0,500,filters,new Sort(Sort.Direction.ASC,"id"));	
			map.put("replyList", rlist);
	    }
	    return "letter/ndetail";
	}
	

}
