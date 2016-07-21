package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.SchoolRepository;
import platform.county.jiange.model.entity.School;
import platform.county.jiange.service.SchoolService;

@Service("schoolService")
public class SchoolServiceImpl extends BaseServiceImpl<School, Long> implements SchoolService{

	@Resource( name = "schoolRepository")
	SchoolRepository schoolRepository;
	
	
	/*@Autowired
	SchoolDAO schoolDAO;*/
	
	@Resource( name = "schoolRepository")
	@Override
	public void setBaseRepository(BaseRepository<School, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	      

	/*public School findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return schoolDAO.findByEmail(email);	
	}*/

}
