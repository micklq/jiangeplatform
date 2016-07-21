package platform.county.jiange.model.entity;
import java.util.Date;

import javax.persistence.*;
/**
 * 信访
 * @author Mick
 *
 */
@Entity
public class LetterPetition extends BaseEntity {
        
	//姓名
	private String name; 
	
//	//性别
//	private Integer gender;	
//	//出生年月
//	private String birthdate;	
//	//民族
//	private String nation;
//	//籍贯
//	private String birthplace;
//	//参加工作时间
//	private String beginWorktime;
//    //政治面貌
//	private String politicalstatus;
//	//学历
//	private String degree;
//	//联系电话
//	private String mobile;
//	//家庭地址或工作单位
//	@Column(length=200, nullable = true)
//	private String familyaddress;
//	
//	//涉检事由
//	@Column(length=1500, nullable = true)
//	private String eventcause;
//	
//	//村（社区）调查等奖情况或意见
//	@Column(length=500, nullable = true)
//	private String eventresult;    
	
    //事件时间
	private String eventtime ;    
	   
    //事件描述
    @Column(length=1500, nullable = true)
    private String description;
    
    //提交人地点
    @Column(length =350, nullable = true)
    private String location; 
    //提交人姓名
    @Column(length=1500, nullable = true)
    private String username;
   
    
   
    
   
   
	

	  
    
}