package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.GroupManageRepository;
import platform.county.jiange.model.entity.GroupManage;
import platform.county.jiange.service.GroupManageService;

@Service("groupManageService")
public class GroupManageServiceImpl extends BaseServiceImpl<GroupManage, Long> implements GroupManageService{

	@Resource( name = "groupManageRepository")
	GroupManageRepository groupManageRepository;
	
	
	/*@Autowired
	GroupManageDAO groupManageDAO;*/
	
	@Resource( name = "groupManageRepository")
	@Override
	public void setBaseRepository(BaseRepository<GroupManage, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public GroupManage findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return groupManageDAO.findByEmail(email);	
	}*/

}
