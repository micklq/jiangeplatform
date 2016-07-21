package platform.county.jiange.service;

import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import javax.annotation.Resource;


import platform.county.jiange.model.entity.County;



public class UnitServiceTest extends BaseTest {
		
	
	
	@Resource( name = "communityService")
	public VillageService communityService;
	
	@Resource( name = "countyService")
	public CountyService countyService;
	
	@Resource( name = "dangerPeopleCategoryService")
	public CaringPeopleCategoryService dangerPeopleCategoryService;
	
	@Resource( name = "dangerPeopleService")
	public CaringPeopleService dangerPeopleService;
	
	@Resource( name = "letterPetitionService")
	public LetterPetitionService letterPetitionService;
	
	@Resource( name = "letterReplyService")
	public LetterReplyService letterReplyService;	
	
	@Resource( name = "organizationService")
	public OrganizationService organizationService;
	
	@Resource( name = "orgPostService")
	public OrgPostService orgPostService;
	
	@Resource( name = "schoolService")
	public SchoolService schoolService;
	
	@Resource( name = "supervisionReplyService")
	public SupervisionReplyService supervisionReplyService;
	
	@Resource( name = "supervisionService")
	public SupervisionService supervisionService;
	
	
	/*@Test
	public void communityTest() 
	{
			
		   Community entity = new Community();
		   entity.setName("社区一");
		   entity.setDescription("社区一测试");
		   entity.setCountyid(0L);
		   entity.setTownid(0L);
		   entity.setVillageid(0L);
		   communityService.save(entity);
		   
		   List<Community> list= communityService.findAll();
		   for(Community o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 		
	}*/
	
	/*@Test
	public void countyTest() 
	{
			
		   County entity = new County();
		   entity.setName("剑阁县");
		   entity.setDescription("剑阁县");		   
		   countyService.save(entity);
		   
		   List<County> list= countyService.findAll();
		   for(County o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   }
		   
		   	
		
	}*/
	
	/*@Test
	public void dangerCategoryTest() 
	{
			
		DangerPeopleCategory entity = new DangerPeopleCategory();
		entity.setName("精神病人");
		entity.setDescription("剑阁县精神病人");		   
		dangerPeopleCategoryService.save(entity);
		   
		   List<DangerPeopleCategory> list= dangerPeopleCategoryService.findAll();
		   for(DangerPeopleCategory o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   }		   
		   	
		
	}*/
	
	/*@Test
	public void dangerPeopleTest() 
	{
			
		DangerPeople entity = new DangerPeople();
		entity.setCategoryid(1L);
		entity.setName("张三");
		entity.setDescription("张三");		   
		dangerPeopleService.save(entity);
		   
		   List<DangerPeople> list= dangerPeopleService.findAll();
		   for(DangerPeople o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	/*@Test
	public void letterPetitionTest() 
	{
			
		LetterPetition entity = new LetterPetition();	
		entity.setName("信访2-2016");
		entity.setDescription("剑阁县信访2-2016");		   
		letterPetitionService.save(entity);
		   
		   List<LetterPetition> list= letterPetitionService.findAll();
		   for(LetterPetition o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() +"<<<==>>"+ o.getName());  
		   } 
		
	}*/
	
	/*@Test
	public void letterReplyTest() 
	{
			
		LetterReply entity = new LetterReply();	
		entity.setLetterid(1L);
		entity.setReplyuserid(0L);
		entity.setName("信访批复2016");
		entity.setDescription("剑阁县信访批复2016");		   
		letterReplyService.save(entity);
		   
		   List<LetterReply> list= letterReplyService.findAll();
		   for(LetterReply o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	
	/*@Test
	public void organizationTest() 
	{
			
		Organization entity = new Organization();	
		entity.setName("组织信息2016");
		entity.setDescription("剑阁县组织信息2016");		   
		organizationService.save(entity);
		   
		   List<Organization> list= organizationService.findAll();
		   for(Organization o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	/*@Test
	public void orgPostTest() 
	{
			
		OrgPost entity = new OrgPost();	
		entity.setName("组织职务2016");		
		orgPostService.save(entity);
		   
		   List<OrgPost> list= orgPostService.findAll();
		   for(OrgPost o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	/*@Test
	public void schoolTest() 
	{
			
		School entity = new School();	
		entity.setName("学校信息2016");
		entity.setDescription("剑阁县学校信息2016");		   
		schoolService.save(entity);
		   
		   List<School> list= schoolService.findAll();
		   for(School o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	
	
	/*@Test
	public void supervisionTest() 
	{
			
		Supervision entity = new Supervision();	
		entity.setName("信访监督信息2016");
		entity.setDescription("剑阁县监督信息2016");		   
		supervisionService.save(entity);
		   
		   List<Supervision> list= supervisionService.findAll();
		   for(Supervision o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	
	/*@Test
	public void supervisionReplyTest() 
	{
			
		SupervisionReply entity = new SupervisionReply();	
		entity.setSupervid(1L);
		entity.setReplyuserid(0L);
		entity.setName("监督信息回复2016");
		entity.setDescription("剑阁县监督信息回复2016");		   
		supervisionReplyService.save(entity);
		   
		   List<SupervisionReply> list= supervisionReplyService.findAll();
		   for(SupervisionReply o:list){
			   
			   System.out.println("FindAll=====>>>>>"+o.getId() + o.getName());  
		   } 
		
	}*/
	

	
	
}
