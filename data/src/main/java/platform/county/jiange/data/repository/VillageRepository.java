package platform.county.jiange.data.repository;


import javax.annotation.Resource;
import platform.county.jiange.model.entity.Village;


@Resource(name = "villageRepository")
public interface VillageRepository extends BaseRepository<Village, Long> {
    
}
