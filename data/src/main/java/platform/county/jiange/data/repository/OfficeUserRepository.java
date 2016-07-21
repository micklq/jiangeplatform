package platform.county.jiange.data.repository;


import javax.annotation.Resource;
import platform.county.jiange.model.entity.OfficeUser;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "officeUserRepository")
public interface OfficeUserRepository extends BaseRepository<OfficeUser, Long> {
   
}
