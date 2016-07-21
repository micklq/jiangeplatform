package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.SupervisionRepository;
import platform.county.jiange.model.entity.Supervision;
import platform.county.jiange.service.SupervisionService;

@Service("supervisionService")
public class SupervisionServiceImpl extends BaseServiceImpl<Supervision, Long> implements SupervisionService{

	@Resource(name = "supervisionRepository")
	SupervisionRepository supervisionRepository;
	
	
	/*@Autowired
	SupervisionDAO SupervisionDAO;*/
	
	@Resource(name = "supervisionRepository")
	@Override
	public void setBaseRepository(BaseRepository<Supervision, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	/*public Supervision findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return SupervisionDAO.findByEmail(email);	
	}*/

}
