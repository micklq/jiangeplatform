package platform.county.jiange.web.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.OrderByObject;
import platform.county.jiange.model.JoinInfo;
import platform.county.jiange.model.RootInfo;
import platform.county.jiange.model.entity.BaseEntity;
import platform.county.jiange.model.entity.OperationLog;
import platform.county.jiange.model.entity.Role;
import platform.county.jiange.model.entity.Ruser;
import platform.county.jiange.model.entity.User;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.RoleService;
import platform.county.jiange.service.RuserService;
import platform.county.jiange.service.UserService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.U;
import platform.county.jiange.webcomn.controller.CRUDController;
import platform.county.jiange.webcomn.controller.CRUDForm;

/**
 * 暂时结合easyui写的增删查改的例子
 * @author meizhiwen
 *
 */
@Controller()
@RequestMapping("user")
public class UserController extends CRUDController<User, Long>{

	@Override
	public RespBody update(User entity) {
		
		User dbEntity=this.UserService.find(entity.getId());
		dbEntity.setUsername(entity.getUsername());
		
		String[] rids=this.request.getParameterValues("rids[]");
		if(rids==null&&StringUtils.isNotBlank(this.request.getParameter("rids"))){
			rids=new String[]{this.request.getParameter("rids")};
		}
		
		if(rids==null){
			return this.respBodyWriter.toError("请为用户分配角色");
		}
		
		List<Long> rList = new ArrayList<Long>();
		for (String lg : rids) {
			rList.add(Long.parseLong(lg));
		}
		
		List<Role> roles=this.roleService.findAll(rList.toArray(new Long[0]));
		dbEntity.setRoles(roles);
		boolean lock = "1".equals(this.request.getParameter("isLocked")) ? true:false;
		dbEntity.setIsLocked(lock);
		this.UserService.update(dbEntity);
		return this.respBodyWriter.toSuccess();
	}

	@Override
	public RespBody create(User entity) {
		if (!validator(entity, BaseEntity.Save.class)) {
            return respBodyWriter.toError("");
        }
		if(StringUtils.isNotBlank(entity.getPassword())){
			entity.setPassword(DigestUtils.md5Hex(entity.getPassword()));
		}
		String[] rids=this.request.getParameterValues("rids[]");
		if(rids==null&&StringUtils.isNotBlank(this.request.getParameter("rids"))){
			rids=new String[]{this.request.getParameter("rids")};
		}
		
		if(rids==null){
			return this.respBodyWriter.toError("请为用户分配角色");
		}
		
		List<Long> rList = new ArrayList<Long>();
		for (String lg : rids) {
			rList.add(Long.parseLong(lg));
		}
		
		List<Role> roles=this.roleService.findAll(rList.toArray(new Long[0]));
		entity.setRoles(roles);
        baseService.save(entity);
        return respBodyWriter.toSuccess(entity);
	}

	@Resource(name="userService")
	private UserService UserService;
	
	@Resource(name="ruserService")
	private RuserService ruserService;
	
	@Autowired
	private RoleService roleService;
	
	@Resource(name="userService")
	@Override
	public void setBaseService(BaseService<User, Long> baseService) {
		this.baseService=baseService;
	}
	
	@RequestMapping("userlist")
	public String list(){
		return "user/list";
	}
	
	@RequestMapping("frontUserlist")
	public String frontUserlist(
			Integer page, 
			Integer size,
			String searchItem,
			@RequestParam(value = "addr", required = false)  String addr,
			@RequestParam(value = "sex", required = false)  String sex,
			@RequestParam(value = "phone", required = false)  String phone,
			@RequestParam(value = "name", required = false)  String name,
			@RequestParam(value = "startDate", required = false)  String startDate,
			@RequestParam(value = "endDate", required = false)  String endDate,
			@RequestParam(value = "stat", required = false)  Integer stat,
			@RequestParam(value = "vipStat", required = false)  Integer vipStat,
			String status, CRUDForm curdForm) throws ParseException {
		
		Sort s = new Sort(Direction.DESC,"playRateToday");
		
		Pageable pr = new PageRequest(page == null ? 1 : page, size == null ? 10 : size,s);
		
		Long pageValue=(long) (page == null||page == 1 ? 0 : page);
		Long sizeValue=(long) (size == null ? 10 : size);
		this.request.setAttribute("pageCount", pageValue*sizeValue);
		
		List<RootInfo> rootList=new ArrayList<RootInfo>();
		RootInfo rf=new RootInfo();
		rf.setName("ruser");
		rf.setClassType(Ruser.class);
		rootList.add(rf);
		
		
		List<JoinInfo> joinList=new ArrayList<JoinInfo>();
//		JoinInfo ji=new JoinInfo();
//		ji.setClassType(Ruser.class);
//		ji.setCollectionType("one");
//		ji.setJoinType(JoinType.LEFT);
//		ji.setName("ruser");
//		ji.setRootName("video");
//		joinList.add(ji);
		
		List<Filter> filters = new ArrayList<Filter>(); 

		
		
		
//		filters.add(Filter.ne("video","","flowStat", "delete"));
		
		if(addr!=null&&!addr.equals("")){
			filters.add(Filter.like("ruser","","addr", "%"+addr.trim()+"%"));
		}
		
		if(phone!=null&&!phone.equals("")){
			filters.add(Filter.like("ruser","","phone", "%"+phone.trim()+"%"));
		}
		
		if(name!=null&&!name.equals("")){
			filters.add(Filter.like("ruser","","name", "%"+name.trim()+"%"));
		}
		
		if(sex!=null&&!sex.equals("")){
			filters.add(Filter.eq("ruser","","sex", sex.trim()));
		}
		
		if(stat!=null){
			filters.add(Filter.eq("ruser","","stat", stat));
		}
		
		if(vipStat!=null){
			filters.add(Filter.eq("ruser","","vipStat", vipStat));
		}
		
		if(startDate!=null&&!"".equals(startDate)) {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			filters.add(Filter.gt("ruser","","createDate","sDate", df.parse(startDate)));
		}
		
		if(endDate!=null&&!"".equals(endDate)) {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			filters.add(Filter.lt("ruser","","createDate","eDate", df.parse(endDate)));
		}
		
		
		
		
		List<OrderByObject> orderByObjList=new ArrayList<OrderByObject>();
		OrderByObject orderByObject=new OrderByObject("ruser", "id", OrderByObject.OrderByType.DESC.getCode());
		orderByObjList.add(orderByObject);
		
		
		Page<Ruser> ret =ruserService.findAll(pr,  rootList, joinList,new ArrayList(),filters,orderByObjList);
//		Page<Video> ret = videoService.findCheckedVideos(pr, filters); 
		this.request.setAttribute("frontUserList", ret.getContent());
		this.request.setAttribute("pageinfo", ret);
		this.request.setAttribute("searchItem", searchItem);
		
		
		
		
		
		
		this.request.setAttribute("addr", addr);
		this.request.setAttribute("sex", sex);
		this.request.setAttribute("phone", phone);
		this.request.setAttribute("name", name);
		this.request.setAttribute("startDate", startDate);
		this.request.setAttribute("endDate", endDate);
		this.request.setAttribute("stat", stat);
		this.request.setAttribute("vipStat", vipStat);
		
		return "user/frontUserList";
	}
	
	@RequestMapping("rolelistAjax")
	@ResponseBody
	public List roleList() {
		List<Role> rlist=this.roleService.findAll();
		return rlist;
	}
	
	@RequestMapping("updatePasswordAjax")
	@ResponseBody
	public RespBody updatePassword(Long id,String old_password,String new_password,String new_repeat_password){
		User user=this.UserService.find(id);
		if(!user.getPassword().equals(DigestUtils.md5Hex(old_password))){
			return this.respBodyWriter.toError("原密码错误");
		}
		user.setPassword(DigestUtils.md5Hex(new_password));
		this.UserService.update(user);
		this.operationLogService.save(new OperationLog("后台修改", "修改", id+"", "User", U.getUid(), U.getUname(), "修改密码"));
		return this.respBodyWriter.toSuccess();
	}
	
	@RequestMapping("roleListByUserAjax")
	@ResponseBody
	public List roleListByUser(Long id){
		User user=this.UserService.find(id);
		List list=user.getRoles();
		return list;
	}
}
