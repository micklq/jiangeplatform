package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.SupervisionReplyRepository;
import platform.county.jiange.model.entity.SupervisionReply;
import platform.county.jiange.service.SupervisionReplyService;

@Service("supervisionReplyService")
public class SupervisionReplyServiceImpl extends BaseServiceImpl<SupervisionReply, Long> implements SupervisionReplyService{

	@Resource( name = "supervisionReplyRepository")
	SupervisionReplyRepository supervisionReplyRepository;
	
	
	/*@Autowired
	SupervisionReplyDAO SupervisionReplyDAO;*/
	
	@Resource( name = "supervisionReplyRepository")
	@Override
	public void setBaseRepository(BaseRepository<SupervisionReply, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	/*public SupervisionReply findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return SupervisionReplyDAO.findByEmail(email);	
	}*/

}
