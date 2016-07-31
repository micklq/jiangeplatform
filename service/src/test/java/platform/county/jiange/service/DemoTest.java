package platform.county.jiange.service;

import java.util.ArrayList;
import java.util.Date;
import javax.annotation.Resource;
import org.apache.commons.lang3.RandomStringUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import platform.county.jiange.model.entity.User;




public class DemoTest  {		
	
	

//	@SuppressWarnings({ "null", "unused" })
//	@Test
//	public void splitTest() 
//	{
//			String str ="1,2,3,4,5,6";
//			String[] ary = str.split(",");
//			ArrayList<Long> result = new ArrayList<Long>();
//			System.out.println("arylen:"+ary.length);
//			if(ary.length>0){
//				
//				for(int i=0; i<ary.length; i++){
//					
//					Long oo = Long.parseLong(ary[i]);
//					if(oo!=null&&oo>0)
//					{
//						System.out.println("oo1:"+oo);						
//						result.add(oo);
//					}
//			
//				
//			}
//			}
//			if(result.size()>0)
//			{
//				
//				for(Long o :result){
//					
//					System.out.println(o);
//				}
//				
//				
//			}
//		    
//		
//	}
	
	@Test
	public void modelTest() 
	{
		int dataCount =12;
		int dataPage = (int) (12/12);
		System.out.println("dataPage:" +dataPage);
		if(dataCount%12==0){
			System.out.println("dataCount:" +dataCount);
			dataPage= dataPage-1; //分页整除 减一 以下再加一
		}
		System.out.println("dataPage:" +dataPage);
	}
	
	
	
	
	

}
