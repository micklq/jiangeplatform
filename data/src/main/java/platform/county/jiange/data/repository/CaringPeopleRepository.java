package platform.county.jiange.data.repository;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import platform.county.jiange.model.entity.CaringPeople;


@Resource(name = "dangerPeopleRepository")
public interface CaringPeopleRepository extends BaseRepository<CaringPeople, Long> {
    
}
