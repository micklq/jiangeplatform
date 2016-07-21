package platform.county.jiange.data.repository;


import javax.annotation.Resource;

import platform.county.jiange.model.entity.GroupManage;


@Resource(name = "groupManageRepository")
public interface GroupManageRepository extends BaseRepository<GroupManage, Long> {
    
}
