package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.TwoNetworkRepository;
import platform.county.jiange.model.entity.TwoNetwork;
import platform.county.jiange.service.TwoNetworkService;

@Service("twoNetworkService")
public class TwoNetworkServiceImpl extends BaseServiceImpl<TwoNetwork, Long> implements TwoNetworkService{

	@Resource( name = "twoNetworkRepository")
	TwoNetworkRepository twoNetworkRepository;
	
	
	/*@Autowired
	TwoNetworkDAO twoNetworkDAO;*/
	
	@Resource( name = "twoNetworkRepository")
	@Override
	public void setBaseRepository(BaseRepository<TwoNetwork, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public TwoNetwork findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return twoNetworkDAO.findByEmail(email);	
	}*/

}
