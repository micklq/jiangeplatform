package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.FirstNetworkRepository;
import platform.county.jiange.model.entity.FirstNetwork;
import platform.county.jiange.service.FirstNetworkService;

@Service("firstNetworkService")
public class FirstNetworkServiceImpl extends BaseServiceImpl<FirstNetwork, Long> implements FirstNetworkService{

	@Resource( name = "firstNetworkRepository")
	FirstNetworkRepository firstNetworkRepository;
	
	
	/*@Autowired
	FirstNetworkDAO firstNetworkDAO;*/
	
	@Resource( name = "firstNetworkRepository")
	@Override
	public void setBaseRepository(BaseRepository<FirstNetwork, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public FirstNetwork findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return firstNetworkDAO.findByEmail(email);	
	}*/

}
