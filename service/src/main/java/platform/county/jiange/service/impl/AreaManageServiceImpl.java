package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.AreaManageRepository;
import platform.county.jiange.model.entity.AreaManage;
import platform.county.jiange.service.AreaManageService;

@Service("areaManageService")
public class AreaManageServiceImpl extends BaseServiceImpl<AreaManage, Long> implements AreaManageService{

	@Resource( name = "areaManageRepository")
	AreaManageRepository areaManageRepository;
	
	
	/*@Autowired
	AreaManageDAO areaManageDAO;*/
	
	@Resource( name = "areaManageRepository")
	@Override
	public void setBaseRepository(BaseRepository<AreaManage, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public AreaManage findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return areaManageDAO.findByEmail(email);	
	}*/

}
