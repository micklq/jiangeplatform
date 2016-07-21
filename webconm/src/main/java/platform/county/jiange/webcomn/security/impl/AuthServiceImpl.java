package platform.county.jiange.webcomn.security.impl;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

import platform.county.jiange.model.entity.User;
import platform.county.jiange.service.UserService;
import platform.county.jiange.webcomn.security.AuthService;
import platform.county.jiange.webcomn.security.Principal;


@Service("authService")
public class AuthServiceImpl  implements AuthService {
	    
   
    @Resource( name = "userService")
    private UserService userService;
    
    //********************实现接口开始********************//
        
    @Transactional(readOnly = true)
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
                return userService.find(principal.getId());
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
    }   
    
    public List<String> findPermissions() {
        Subject subject = SecurityUtils.getSubject();
        return findPermissions(subject);
    }        
    
    public List<String> findPermissions(Subject subject) {

        if (subject != null) {
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return findPermissions(principal.getId());
            }
        }
        return null;
    }       
  
   
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
  
    public List<String> findPermissions(String patten) {
        Subject subject = SecurityUtils.getSubject();
        return findPermissions(subject, patten);
    }
 
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
    public List<String> findPermissionsByStartWith(String startWith) {
        Subject subject = SecurityUtils.getSubject();
        return findPermissionsByStartWith(subject, startWith);
    }   
    
    //@Cacheable(value = "userRolePermission")
	public List<String> findPermissionsId(Long id) {		
         return userService.findPermissionsId(id);        
	}
    //********************实现接口结束********************//
  
   

    

	//@Cacheable(value = "userRolePermission")
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
	
	//@Cacheable(value = "userRolePermission")
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
    
    //@Cacheable(value = "userRolePermission")
    public List<String> findPermissions(Long id) 
    {        
    	return userService.findPermissions(id);        
    }
   
}
