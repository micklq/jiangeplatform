package platform.county.jiange.data.repository;


import java.util.List;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.Query;
import platform.county.jiange.model.entity.User;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "userRepository")
public interface UserRepository extends BaseRepository<User, Long> {
    // 利用 Spring Data JPA 查询
    User findByUsername(String username);

    @Query("select user from User user where :role MEMBER of user.roles")
    List<User> findByRole(String role);

    // 利用 QueryDSL 扩展查询
//    static class UserRepositoryExpressions {
//        public static BooleanExpression isLocked() {
//            return QUser.user.isLocked.eq(true);
//        }
//    }
}
