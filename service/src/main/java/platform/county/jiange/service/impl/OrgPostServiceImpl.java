package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.OrgPostRepository;
import platform.county.jiange.model.entity.OrgPost;
import platform.county.jiange.service.OrgPostService;

@Service("orgPostService")
public class OrgPostServiceImpl extends BaseServiceImpl<OrgPost, Long> implements OrgPostService{

	@Resource( name = "orgPostRepository")
	OrgPostRepository orgPostRepository;
	
	
	/*@Autowired
	OrgPostDAO orgPostDAO;*/
	
	@Resource( name = "orgPostRepository")
	@Override
	public void setBaseRepository(BaseRepository<OrgPost, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}	
	

	/*public OrgPost findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return orgPostDAO.findByEmail(email);	
	}*/

}
