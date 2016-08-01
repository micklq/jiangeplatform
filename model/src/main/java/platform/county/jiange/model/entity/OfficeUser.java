package platform.county.jiange.model.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import platform.county.jiange.model.enums.UserType;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import java.util.*;

/**
 * Created by
 * User: djyin
 * Date: 12/3/13
 * Time: 9:33 AM
 */
@Entity
@Table(name = "officeuser")
public class OfficeUser extends BaseEntity {
    
    /**
     * 姓名
     */
    @Column(nullable = true, length = 150)
    private String name;      
    
	/**
	 * 性别   
	 */
	private String gender;	 
	
	/**
	 * 电话
	 */
	@Column(nullable = true,length =50)
    private String phone;
 
	/**
	 * 电子邮件
	 */
    @Column(length = 200)
    private String email;

    /**
     * 扩展信息 如 党组书记 /党组成员	
     */
    @Transient
    private String others;
    
    
    /***用户类型***/
    private Integer otype;
    
    /***所属组织id***/
    private Long orgid; 
    /***所属职务Id***/
    private Long postid;
    
    /***所在乡镇Id***/
    private Long locationid;
    
    
    @Transient
    private String orgname; 
    
    @Transient
    private String postname;
    
    @Transient
    private String location;
    
    /**责任点？？？*/
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getOrgid() {
		return orgid;
	}

	public void setOrgid(Long orgid) {
		this.orgid = orgid;
	}

	public Long getPostid() {
		return postid;
	}

	public void setPostid(Long postid) {
		this.postid = postid;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getPostname() {
		return postname;
	}

	public void setPostname(String postname) {
		this.postname = postname;
	}	

	
	public Long getLocationid() {
		return locationid;
	}

	public void setLocationid(Long locationid) {
		this.locationid = locationid;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public Integer getOtype() {
		return otype;
	}

	public void setOtype(Integer otype) {
		this.otype = otype;
	}
	
	
	
   
}

