package platform.county.jiange.data.repository;

import javax.annotation.Resource;

import platform.county.jiange.model.entity.WorkStationSchedule;


@Resource(name = "workStationScheduleRepository")
public interface WorkStationScheduleRepository extends BaseRepository<WorkStationSchedule, Long> {
    
}
