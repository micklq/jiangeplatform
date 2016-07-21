package platform.county.jiange.data.repository;


import javax.annotation.Resource;

import platform.county.jiange.model.entity.County;


@Resource(name = "countyRepository")
public interface CountyRepository extends BaseRepository<County, Long> {
    
}
