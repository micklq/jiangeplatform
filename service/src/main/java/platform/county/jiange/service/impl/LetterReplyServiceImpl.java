package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.LetterReplyRepository;
import platform.county.jiange.model.entity.LetterReply;
import platform.county.jiange.service.LetterReplyService;

@Service("letterReplyService")
public class LetterReplyServiceImpl extends BaseServiceImpl<LetterReply, Long> implements LetterReplyService{

	@Resource( name = "letterReplyRepository")
	LetterReplyRepository letterReplyRepository;
	
	
	/*@Autowired
	LetterReplyDAO letterReplyDAO;*/
	
	@Resource( name = "letterReplyRepository")
	@Override
	public void setBaseRepository(BaseRepository<LetterReply, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	/*public LetterReply findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return LetterReplyDAO.findByEmail(email);	
	}*/

}
