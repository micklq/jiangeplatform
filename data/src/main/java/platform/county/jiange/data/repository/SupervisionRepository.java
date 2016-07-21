package platform.county.jiange.data.repository;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import platform.county.jiange.model.entity.Supervision;


@Resource(name = "supervisionRepository")
public interface SupervisionRepository extends BaseRepository<Supervision, Long> {
    
}
