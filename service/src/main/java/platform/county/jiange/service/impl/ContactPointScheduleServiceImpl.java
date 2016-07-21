package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.ContactPointScheduleRepository;
import platform.county.jiange.model.entity.ContactPointSchedule;
import platform.county.jiange.service.ContactPointScheduleService;

@Service("contactPointScheduleService")
public class ContactPointScheduleServiceImpl extends BaseServiceImpl<ContactPointSchedule, Long> implements ContactPointScheduleService{

	@Resource( name = "contactPointScheduleRepository")
	ContactPointScheduleRepository contactPointScheduleRepository;
	
	
	/*@Autowired
	ContactPointScheduleDAO contactPointScheduleDAO;*/
	
	@Resource( name = "contactPointScheduleRepository")
	@Override
	public void setBaseRepository(BaseRepository<ContactPointSchedule, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public ContactPointSchedule findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return contactPointScheduleDAO.findByEmail(email);	
	}*/

}
