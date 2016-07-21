package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.LetterPetitionRepository;
import platform.county.jiange.model.entity.LetterPetition;
import platform.county.jiange.service.LetterPetitionService;

@Service("letterPetitionService")
public class LetterPetitionServiceImpl extends BaseServiceImpl<LetterPetition, Long> implements LetterPetitionService{

	@Resource( name = "letterPetitionRepository")
	LetterPetitionRepository letterPetitionRepository;
	
	
	/*@Autowired
	LetterPetitionDAO letterPetitionDAO;*/
	
	@Resource( name = "letterPetitionRepository")
	@Override
	public void setBaseRepository(BaseRepository<LetterPetition, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	/*public LetterPetition findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return LetterPetitionDAO.findByEmail(email);	
	}*/

}
