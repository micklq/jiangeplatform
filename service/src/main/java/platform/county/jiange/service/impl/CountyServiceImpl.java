package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.CountyRepository;
import platform.county.jiange.model.entity.County;
import platform.county.jiange.service.CountyService;

@Service("countyService")
public class CountyServiceImpl extends BaseServiceImpl<County, Long> implements CountyService{

	@Resource(name = "countyRepository")
	CountyRepository countyRepository;
	
	
	/*@Autowired
	CountyDAO countyDAO;*/
	
	@Resource( name = "countyRepository")
	@Override
	public void setBaseRepository(BaseRepository<County, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	

}
