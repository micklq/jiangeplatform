package platform.county.jiange.data.repository;


import org.springframework.stereotype.Repository;
import platform.county.jiange.model.entity.ContactPointSchedule;

@Repository(value= "contactPointScheduleRepository")
public interface ContactPointScheduleRepository extends BaseRepository<ContactPointSchedule, Long>{		
		
	
}
