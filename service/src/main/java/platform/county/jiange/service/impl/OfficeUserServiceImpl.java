package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.OfficeUserRepository;
import platform.county.jiange.model.entity.OfficeUser;
import platform.county.jiange.service.OfficeUserService;

@Service("officeUserService")
public class OfficeUserServiceImpl extends BaseServiceImpl<OfficeUser, Long> implements OfficeUserService{

	@Resource( name = "officeUserRepository")
	OfficeUserRepository officeUserRepository;
	
	
	/*@Autowired
	OfficeUserDAO officeUserDAO;*/
	
	@Resource( name = "officeUserRepository")
	@Override
	public void setBaseRepository(BaseRepository<OfficeUser, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public OfficeUser findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return officeUserDAO.findByEmail(email);	
	}*/

}
