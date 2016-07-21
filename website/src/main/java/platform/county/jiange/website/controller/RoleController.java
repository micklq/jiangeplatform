package platform.county.jiange.website.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.Permission;
import platform.county.jiange.model.entity.Role;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.PermissionService;
import platform.county.jiange.service.RoleService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 暂时结合easyui写的增删查改的例子
 * 
 * @author meizhiwen
 *
 */
@Controller()
@RequestMapping("role")
public class RoleController extends CRUDController<Role, Long> {

	@Autowired
	private PermissionService permissionService;
	
	@Override
	public RespBody get(Long id) {
		List pList=this.roleService.findPidByRoleId(id);
		return this.respBodyWriter.toSuccess(pList);
	}

	@Override
	public RespBody create(Role entity) {
		String pids=this.request.getParameter("permissionId");
		List<Long> strList = new ArrayList<Long>();
		
		String[] ps=StringUtils.split(pids,",");
		for (String pid : ps) {
			strList.add(Long.parseLong(pid));
		}
		List<Permission> pList=this.permissionService.findAll(strList.toArray(new Long[0]));
		entity.setPermissions(pList);
		this.roleService.save(entity);
		return this.respBodyWriter.toSuccess();
	}

	
	
	@Override
	public RespBody update(Role entity) {
		Role dbEntity=this.roleService.find(entity.getId());
		dbEntity.setName(entity.getName());
		dbEntity.setDescription(entity.getDescription());
		
		String pids=this.request.getParameter("permissionId");
		List<Long> strList = new ArrayList<Long>();
		
		String[] ps=StringUtils.split(pids,",");
		for (String pid : ps) {
			strList.add(Long.parseLong(pid));
		}
		List<Permission> pList=this.permissionService.findAll(strList.toArray(new Long[0]));
		dbEntity.setPermissions(pList);
		
		this.roleService.update(dbEntity);
		return this.respBodyWriter.toSuccess();
	}

	@Resource(name = "roleService")
	private RoleService roleService;

	@Resource(name = "roleService")
	@Override
	public void setBaseService(BaseService<Role, Long> baseService) {
		this.baseService = baseService;
	}

	@RequestMapping("rolelist")
	public String list() {
		return "role/list";
	}
	
	@RequestMapping("permissionListAjax")
	@ResponseBody
	public List permissionList() throws Exception {
		List<Filter> fl = new ArrayList<Filter>();
		fl.add(Filter.eq("pid", 0));
		List<Permission> pList=this.permissionService.findAll(0L);
		for (Permission permission : pList) {
			this.setPermiTextByName(permission);
			List<Permission> subList=this.permissionService.findAll(permission.getId());
			for (Permission permission2 : subList) {
				this.setPermiTextByName(permission2);
			}
			permission.setChildren(subList);
		}
		return pList;
	}
	
	private void setPermiTextByName(Permission pm){
		pm.setText(pm.getName());
	}
}
