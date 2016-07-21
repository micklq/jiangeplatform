package platform.county.jiange.service.impl;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.OrganizationRepository;
import platform.county.jiange.model.entity.Organization;
import platform.county.jiange.service.OrganizationService;

@Service("organizationService")
public class OrganizationServiceImpl extends BaseServiceImpl<Organization, Long> implements OrganizationService{

	@Resource( name = "organizationRepository")
	OrganizationRepository organizationRepository;
	
	
	/*@Autowired
	OrganizationDAO organizationDAO;*/
	
	@Resource( name = "organizationRepository")
	@Override
	public void setBaseRepository(BaseRepository<Organization, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}		

	/*public Organization findByEmail(String email){
		if(email.isEmpty()){
			return null;
		}		
		return organizationDAO.findByEmail(email);	
	}*/

}
