package platform.county.jiange.data.repository;

import javax.annotation.Resource;

import platform.county.jiange.model.entity.School;


@Resource(name = "schoolRepository")
public interface SchoolRepository extends BaseRepository<School, Long> {
    
}
