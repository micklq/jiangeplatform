package platform.county.jiange.service;

import java.util.List;

import platform.county.jiange.model.entity.Role;

/**
 * Created by
 * User: djyin
 * Date: 12/5/13
 * Time: 11:52 AM
 */
public interface RoleService extends BaseService<Role, Long> {
	public List findPidByRoleId(Long rid);
}
