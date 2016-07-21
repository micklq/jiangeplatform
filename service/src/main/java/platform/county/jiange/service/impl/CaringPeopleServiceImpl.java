package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.CaringPeopleRepository;
import platform.county.jiange.model.entity.CaringPeople;
import platform.county.jiange.service.CaringPeopleService;

@Service("caringPeopleService")
public class CaringPeopleServiceImpl extends BaseServiceImpl<CaringPeople, Long> implements CaringPeopleService{

	@Resource( name = "caringPeopleRepository")
	CaringPeopleRepository caringPeopleRepository;
	
	
	/*@Autowired
	CaringPeopleDAO caringPeopleDAO;*/
	
	@Resource( name = "caringPeopleRepository")
	@Override
	public void setBaseRepository(BaseRepository<CaringPeople, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	

}
