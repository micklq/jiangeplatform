package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.WorkStationScheduleRepository;
import platform.county.jiange.model.entity.WorkStationSchedule;
import platform.county.jiange.service.WorkStationScheduleService;

@Service("workStationScheduleService")
public class WorkStationScheduleServiceImpl extends BaseServiceImpl<WorkStationSchedule, Long> implements WorkStationScheduleService{

	@Resource( name = "workStationScheduleRepository")
	WorkStationScheduleRepository workStationScheduleRepository;
	
	
	/*@Autowired
	WorkStationScheduleDAO workStationScheduleDAO;*/
	
	@Resource( name = "workStationScheduleRepository")
	@Override
	public void setBaseRepository(BaseRepository<WorkStationSchedule, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public WorkStationSchedule findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return workStationScheduleDAO.findByEmail(email);	
	}*/

}
