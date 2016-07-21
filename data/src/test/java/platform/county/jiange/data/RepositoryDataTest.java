package platform.county.jiange.data;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import platform.county.jiange.data.mapper.PermissionDAO;
import platform.county.jiange.data.repository.ContactPointScheduleRepository;

public class RepositoryDataTest extends BaseTest {
		
	
	@Resource( name = "employeeRepository")
	public ContactPointScheduleRepository employeeRepository;
	
	@Autowired // 注入
	private PermissionDAO permissionDAO;
	
	
	/*@Test
	public void saveTest() 
	{
		//for(int i=0; i<5 ; i++)
		{
			String r = RandomStringUtils.random(5,true,true).toLowerCase();
			Employee emp = new Employee();
			emp.setEmail(r+"email");
			emp.setFirstName(r+"fname");
			emp.setLastName(r+"lname");
			Employee createdEmp = employeeRepository.save(emp);
			System.out.println(createdEmp.toString());
			
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}*/
	
	/*@Test
	public void findMaxSortByPid() {
		
		Integer emps = permissionDAO.findMaxSortByPid(0L);					
			System.out.println("repository=====>>>>>"+emps);			
		
	}*/

}
