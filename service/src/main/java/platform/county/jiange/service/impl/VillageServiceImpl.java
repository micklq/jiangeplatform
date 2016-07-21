package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.VillageRepository;
import platform.county.jiange.model.entity.Village;
import platform.county.jiange.service.VillageService;

@Service("villageService")
public class VillageServiceImpl extends BaseServiceImpl<Village, Long> implements VillageService{

	@Resource( name = "villageRepository")
	VillageRepository villageRepository;
		
	/*@Autowired
	VillageDAO villageDAO;*/
	
	@Resource(name = "villageRepository")
	@Override
	public void setBaseRepository(BaseRepository<Village, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

}
