package platform.county.jiange.data.repository;

import javax.annotation.Resource;
import platform.county.jiange.model.entity.ThreeNetwork;


@Resource(name = "threeNetworkRepository")
public interface ThreeNetworkRepository extends BaseRepository<ThreeNetwork, Long> {
    
}
