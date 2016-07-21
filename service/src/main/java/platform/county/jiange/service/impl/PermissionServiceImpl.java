package platform.county.jiange.service.impl;

import java.util.List;

import platform.county.jiange.data.mapper.PermissionDAO;
import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.PermissionRepository;
import platform.county.jiange.model.entity.Permission;
import platform.county.jiange.service.PermissionService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by
 * User: djyin
 * Date: 12/5/13
 * Time: 2:44 PM
 */
@Service("permissionService")
public class PermissionServiceImpl extends BaseServiceImpl<Permission, Long> implements PermissionService {
    
	@Resource(name = "permissionRepository")
	private PermissionRepository permissionRepository;
	
	@Autowired // 注入
	private PermissionDAO permissionDAO;
	
    @Resource(name = "permissionRepository")
    public void setBaseRepository(BaseRepository<Permission, Long> baseRepository) {
        super.setBaseRepository(baseRepository);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public Permission update(Permission entity) {
        return super.update(entity);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public Permission update(Permission entity, String... ignoreProperties) {
        return super.update(entity, ignoreProperties);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public void save(Permission entity) {
        super.save(entity);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public void delete(Long aLong) {
        super.delete(aLong);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public void delete(Long... longs) {
        super.delete(longs);
    }

    @Override
    @Transactional
    @CacheEvict(value = {"authorization","userRolePermission"}, allEntries = true)
    public void delete(Permission entity) {
        super.delete(entity);
    }

	@Override
	public List<Permission> findAll(Long pid) {
		return this.permissionRepository.findByPid(pid);
	}
	
	public Integer getMaxSortByPid(Long pid){
    	return permissionDAO.findMaxSortByPid(pid);
    }
}

