package platform.county.jiange.data.repository;


import javax.annotation.Resource;

import platform.county.jiange.model.entity.Organization;


@Resource(name = "organizationRepository")
public interface OrganizationRepository extends BaseRepository<Organization, Long> {
    
}
