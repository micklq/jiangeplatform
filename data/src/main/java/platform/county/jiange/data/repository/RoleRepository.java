package platform.county.jiange.data.repository;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.Query;

import platform.county.jiange.model.entity.Role;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "roleRepository")
public interface RoleRepository extends BaseRepository<Role, Long> {
	
	@Query(nativeQuery=true,value="select permissions from role_permission where role=?1")
	public List findPidByRoleId(Long rid);
}
