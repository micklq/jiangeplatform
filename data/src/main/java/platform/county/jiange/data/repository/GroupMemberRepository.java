package platform.county.jiange.data.repository;


import javax.annotation.Resource;
import platform.county.jiange.model.entity.GroupMember;


@Resource(name = "groupMemberRepository")
public interface GroupMemberRepository extends BaseRepository<GroupMember, Long> {
    
}
