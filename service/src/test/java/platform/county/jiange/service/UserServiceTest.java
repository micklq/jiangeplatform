package platform.county.jiange.service;

import java.util.Date;
import javax.annotation.Resource;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import platform.county.jiange.model.entity.User;




public class UserServiceTest extends BaseTest {
		
	//private Logger logger = LoggerFactory.getLogger(EmployeeServiceTest.class);
	
	@Resource( name = "userService")
	public UserService userService;
	
	@Resource( name = "permissionService")
	public PermissionService permissionService;
	
	/*
	@Test
	public void createTest() 
	{
			
		    User user = new User();
		    user.setEmail("123456@qq.com");
		    user.setUsername("test1");
		    user.setPassword("lname");			
		    User cUser = userService.insert(user);
			System.out.println("Created Service=====>>>>>"+cUser.getId() + cUser.getUsername());	
		
	}*/
	
	/*@Test
	public void findAllTest() {
		Date s = new Date(); 
		Iterable<User> users = userService.findAll();
		for (User user : users) {
			System.out.println("Repository Service=====>>>>>"+user.getId() + "==="+ user.getUsername());
			User u1 = userService.findByUsername(user.getUsername());	
			System.out.println("Mybatis Service=====>>>>>"+u1.getId() + "==="+ u1.getUsername());	
		}	
		Date e = new Date();
		System.out.println("获取信息耗时====>>>time="+(e.getTime()-s.getTime())+"毫秒");
		//logger.info("获取信息耗时====>>>time="+(e.getTime()-s.getTime())+"毫秒");
	}*/
	
	/*@Test
	public void getMaxSortByPidTest() {
		Date s = new Date(); 
		Integer i = permissionService.getMaxSortByPid(0L);		
		System.out.println("print===>>>"+i);
		Date e = new Date();
		System.out.println("获取信息耗时====>>>time="+(e.getTime()-s.getTime())+"毫秒");
		//logger.info("获取信息耗时====>>>time="+(e.getTime()-s.getTime())+"毫秒");
	}*/
	
	
	

}
