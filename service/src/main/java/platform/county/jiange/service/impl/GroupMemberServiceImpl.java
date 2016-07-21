package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.GroupMemberRepository;
import platform.county.jiange.model.entity.GroupMember;
import platform.county.jiange.service.GroupMemberService;

@Service("groupMemberService")
public class GroupMemberServiceImpl extends BaseServiceImpl<GroupMember, Long> implements GroupMemberService{

	@Resource( name = "groupMemberRepository")
	GroupMemberRepository groupMemberRepository;
	
	
	/*@Autowired
	GroupMemberDAO groupMemberDAO;*/
	
	@Resource( name = "groupMemberRepository")
	@Override
	public void setBaseRepository(BaseRepository<GroupMember, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public GroupMember findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return groupMemberDAO.findByEmail(email);	
	}*/

}
