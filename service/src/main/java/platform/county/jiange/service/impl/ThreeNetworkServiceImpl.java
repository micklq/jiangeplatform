package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.ThreeNetworkRepository;
import platform.county.jiange.model.entity.ThreeNetwork;
import platform.county.jiange.service.ThreeNetworkService;

@Service("threeNetworkService")
public class ThreeNetworkServiceImpl extends BaseServiceImpl<ThreeNetwork, Long> implements ThreeNetworkService{

	@Resource( name = "threeNetworkRepository")
	ThreeNetworkRepository threeNetworkRepository;
	
	
	/*@Autowired
	ThreeNetworkDAO threeNetworkDAO;*/
	
	@Resource( name = "threeNetworkRepository")
	@Override
	public void setBaseRepository(BaseRepository<ThreeNetwork, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public ThreeNetwork findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return threeNetworkDAO.findByEmail(email);	
	}*/

}
