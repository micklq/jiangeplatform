package platform.county.jiange.service;

import java.util.List;

import platform.county.jiange.model.entity.User;


public abstract interface UserService extends BaseService<User, Long> {

    /**
     * Username exists.
     *
     * @param username the username
     * @return the boolean
     */
     boolean usernameExists(String username);

    /**
     * Find by username.
     *
     * @param username the username
     * @return the user
     */
     User findByUsername(String username);

    List<String> findPermissions(Long id);
    
    List<String> findPermissionsId(Long id);
   




}
