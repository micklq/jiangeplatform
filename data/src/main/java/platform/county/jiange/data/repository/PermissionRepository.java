package platform.county.jiange.data.repository;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.Query;

import platform.county.jiange.model.entity.Permission;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "permissionRepository")
public interface PermissionRepository extends BaseRepository<Permission, Long> {
	
	public List<Permission> findByPid(Long pid);


}
