package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.CaringPeopleCategoryRepository;
import platform.county.jiange.model.entity.CaringPeopleCategory;
import platform.county.jiange.service.CaringPeopleCategoryService;

@Service("caringPeopleCategoryService")
public class CaringPeopleCategoryServiceImpl extends BaseServiceImpl<CaringPeopleCategory, Long> implements CaringPeopleCategoryService{

	@Resource( name = "caringPeopleCategoryRepository")
	CaringPeopleCategoryRepository caringPeopleCategoryRepository;
	
	
	/*@Autowired
	CaringPeopleCategoryDAO caringPeopleCategoryDAO;*/
	
	@Resource( name = "caringPeopleCategoryRepository")
	@Override
	public void setBaseRepository(BaseRepository<CaringPeopleCategory, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	

}
