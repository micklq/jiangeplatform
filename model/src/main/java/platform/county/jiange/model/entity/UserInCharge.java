package platform.county.jiange.model.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import java.util.*;

@Entity
public class UserInCharge extends BaseEntity {   
	
	/***用户Id***/
	private Long userid; 
	
	//主管负责区域
    /***县Id***/
    private Long countyid;
    /***乡镇id***/
    private Long townid;    
    /***村id***/
    private Long villageid;
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public Long getCountyid() {
		return countyid;
	}
	public void setCountyid(Long countyid) {
		this.countyid = countyid;
	}
	public Long getTownid() {
		return townid;
	}
	public void setTownid(Long townid) {
		this.townid = townid;
	}
	public Long getVillageid() {
		return villageid;
	}
	public void setVillageid(Long villageid) {
		this.villageid = villageid;
	}  
    
    
  
}

