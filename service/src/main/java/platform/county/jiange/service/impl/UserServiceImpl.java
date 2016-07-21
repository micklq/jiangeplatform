package platform.county.jiange.service.impl;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.UserRepository;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.entity.Permission;
import platform.county.jiange.model.entity.Role;
import platform.county.jiange.model.entity.User;
import platform.county.jiange.service.UserService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User, Long> implements
        UserService{
    @Resource(name = "userRepository")
    private UserRepository userRepository;
    
    @Resource(name = "userRepository")
    @Override
    public void setBaseRepository(BaseRepository<User, Long> baseRepository) {
        super.setBaseRepository(baseRepository);
    }

    @Transactional(readOnly = true)
    public boolean usernameExists(String username) {
        return userRepository.count(Filter.eq("username", username)) > 0;
    }

    @Transactional(readOnly = true)
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
    
    public List<String> findPermissions(Long id) {
        List<String> authorities = new ArrayList<String>();
        User user = userRepository.findOne(id);
        if (user != null) {
            Iterator<Role> iterator = user.getRoles().iterator();
            while (iterator.hasNext()) {
                Role role = iterator.next();
                for (Permission a : role.getPermissions()) {
                    authorities.add(a.getValue());
                }
            }
            return authorities;
        }
        return null;
    }  

   
	public List<String> findPermissionsId(Long id) {
		List<String> authorities = new ArrayList<String>();
        User user = userRepository.findOne(id);
        if (user != null) {
            Iterator<Role> iterator = user.getRoles().iterator();
            while (iterator.hasNext()) {
                Role role = iterator.next();
                for (Permission a : role.getPermissions()) {
                	authorities.add(a.getId().toString());
                    authorities.add(a.getValue());
                }
            }
            return authorities;
        }
        return null;
	}


    /*@Transactional(readOnly = true)
    public boolean isAuthenticated() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            return subject.isAuthenticated();
        }
        return false;
    }

    @Transactional(readOnly = true)
    public User getCurrent() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return userRepository.findOne(principal.getId());
            }
        }
        return null;
    }

    @Transactional(readOnly = true)
    public String getCurrentUsername() {
        Subject subject = SecurityUtils.getSubject();
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return principal.getUsername();
            }
        }
        return null;
    }*/


    /*@Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    public void save(User user) {
        super.save(user);
    }

    @Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    //@CacheEvict(value = {"authorization"}, allEntries = true)
    public User update(User user) {
        return super.update(user);
    }

    @Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    public User update(User user, String... ignoreProperties) {
        return super.update(user, ignoreProperties);
    }

    @Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    public void delete(Long id) {
        super.delete(id);
    }

    @Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    public void delete(Long... ids) {
        super.delete(ids);
    }

    @Transactional
    @CacheEvict(value = {"authorization", "userRolePermission"}, allEntries = true)
    public void delete(User user) {
        super.delete(user);
    }*/


    /*@Override
    public List<String> findPermissions() {
        Subject subject = SecurityUtils.getSubject();
        return findPermissions(subject);
    }

    @Override
    @Cacheable(value = "userRolePermission")
    public List<String> findPermissions(Long id) {
        List<String> authorities = new ArrayList<String>();
        User user = userRepository.findOne(id);
        if (user != null) {
            Iterator<Role> iterator = user.getRoles().iterator();
            while (iterator.hasNext()) {
                Role role = iterator.next();
                for (Permission a : role.getPermissions()) {
                    authorities.add(a.getValue());
                }
            }
            return authorities;
        }
        return null;
    }

    @Cacheable(value = "userRolePermission")
    public List<String> findPermissionsByStartWith(Long id, String startWith) {
        List<String> authorities = findPermissions(id);
        List<String> filtered = new ArrayList<String>();
        for (String perm : authorities) {
            if (perm.startsWith(startWith)) {
                filtered.add(perm);
            }
        }
        return filtered;
    }

    @Cacheable(value = "userRolePermission")
    public List<String> findPermissions(Long id, String patten) {
        List<String> authorities = findPermissions(id);
        List<String> filtered = new ArrayList<String>();
        for (String perm : authorities) {
            if (perm.matches(patten)) {
                filtered.add(perm);
            }
        }
        return filtered;

    }

    @Override
    public List<String> findPermissions(Subject subject) {

        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return findPermissions(principal.getId());
            }
        }
        return null;
    }


    @Override
    public List<String> findPermissions(String patten) {
        Subject subject = SecurityUtils.getSubject();
        return findPermissions(subject, patten);
    }

    @Override
    public List<String> findPermissionsByStartWith(Subject subject, String startWith) {
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                List<String> filtered = findPermissionsByStartWith(principal.getId(), startWith);
                return filtered;
            }
        }
        return null;
    }

    @Override
    public List<String> findPermissions(Subject subject, String patten) {
        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                List<String> filtered = findPermissions(principal.getId(), patten);
                return filtered;
            }
        }
        return null;

    }

    @Override
    public List<String> findPermissionsByStartWith(String startWith) {
        Subject subject = SecurityUtils.getSubject();
        return findPermissionsByStartWith(subject, startWith);
    }

    @Override
    @Cacheable(value = "userRolePermission")
	public List<String> findPermissionsId(Long id) {
		List<String> authorities = new ArrayList<String>();
        User user = userRepository.findOne(id);
        if (user != null) {
            Iterator<Role> iterator = user.getRoles().iterator();
            while (iterator.hasNext()) {
                Role role = iterator.next();
                for (Permission a : role.getPermissions()) {
                	authorities.add(a.getId().toString());
                    authorities.add(a.getValue());
                }
            }
            return authorities;
        }
        return null;
	}*/

	
}
