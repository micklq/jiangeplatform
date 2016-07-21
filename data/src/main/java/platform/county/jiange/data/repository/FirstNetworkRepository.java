package platform.county.jiange.data.repository;

import javax.annotation.Resource;

import platform.county.jiange.model.entity.FirstNetwork;


@Resource(name = "firstNetworkRepository")
public interface FirstNetworkRepository extends BaseRepository<FirstNetwork, Long> {
    
}
