package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 危险人员信息
 * @author Mick
 *
 */
@Entity
public class CaringPeople extends BaseEntity{	   
	
	   
	    /**
	     * 维稳类型
	     */
	    private Long categoryid;
	    
	    @Transient
	    private String categoryname;
	    
	    /**
	     * 联络点id
	     */
	    private Long countyid;
	    
	    @Transient
	    private String countyname;
	     
	    @Column(nullable = true,length=100)
	    private String name;	   
	   	    
	   
	    private String gender;	
	    
	    /**
	     * 出生日期
	     */
	    private String birthdate;	
	    /**
	     * 民族
	     */
	    private String nation;	
	    /**
	     * 籍贯
	     */
	    private String  nativeplace;
	    
	    /**
	     * 家庭地址或工作单位
	     */
	    private String address;
	    
	    /**
	     * 参加工作时间
	     */
	    private String worktime;	
	    /**
	     * 政治面貌
	     */
	    private String political;
	    /**
	     * 学历
	     */
	    private String degree;
	    /**
	     * 联系电话
	     */
	    private String mobile;	    
	    /**
	     * 监护人/责任人
	     */
	    private String guardian;    
	    	    
	    /**
	     * 监护人电话
	     */
	    /*private String guardianMobile;*/
	    
	    /**
	     * 是否有暴力倾向
	     */
	    /*private Boolean isViolenceTendency;*/
	    
	    /**
	     * 检测事由
	     */
	    @Column(length =500, nullable = true)
	    private String description;

	    /**
	     * 其他备注
	     */
	    @Column(length =200, nullable = true)
	    private String others;
	    
		public Long getCategoryid() {
			return categoryid;
		}

		public void setCategoryid(Long categoryid) {
			this.categoryid = categoryid;
		}

		public String getCategoryname() {
			return categoryname;
		}

		public void setCategoryname(String categoryname) {
			this.categoryname = categoryname;
		}

		public String getCountyname() {
			return countyname;
		}

		public void setCountyname(String countyname) {
			this.countyname = countyname;
		}

		public Long getCountyid() {
			return countyid;
		}

		public void setCountyid(Long countyid) {
			this.countyid = countyid;
		}

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

		public String getBirthdate() {
			return birthdate;
		}

		public void setBirthdate(String birthdate) {
			this.birthdate = birthdate;
		}

		public String getNation() {
			return nation;
		}

		public void setNation(String nation) {
			this.nation = nation;
		}

		public String getNativeplace() {
			return nativeplace;
		}

		public void setNativeplace(String nativeplace) {
			this.nativeplace = nativeplace;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getWorktime() {
			return worktime;
		}

		public void setWorktime(String worktime) {
			this.worktime = worktime;
		}

		public String getPolitical() {
			return political;
		}

		public void setPolitical(String political) {
			this.political = political;
		}

		public String getDegree() {
			return degree;
		}

		public void setDegree(String degree) {
			this.degree = degree;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getGuardian() {
			return guardian;
		}

		public void setGuardian(String guardian) {
			this.guardian = guardian;
		}

		public String getOthers() {
			return others;
		}

		public void setOthers(String others) {
			this.others = others;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}
	    
		
}
