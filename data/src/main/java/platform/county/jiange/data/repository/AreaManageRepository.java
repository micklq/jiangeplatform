package platform.county.jiange.data.repository;


import javax.annotation.Resource;
import platform.county.jiange.model.entity.AreaManage;


@Resource(name = "areaManageRepository")
public interface AreaManageRepository extends BaseRepository<AreaManage, Long> {
    
}
