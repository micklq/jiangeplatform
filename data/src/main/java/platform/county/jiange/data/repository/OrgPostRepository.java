package platform.county.jiange.data.repository;


import javax.annotation.Resource;

import platform.county.jiange.model.entity.OrgPost;


@Resource(name = "orgPostRepository")
public interface OrgPostRepository extends BaseRepository<OrgPost, Long> {
    
}
