package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 危险人员信息
 * @author Mick
 *
 */
@Entity
public class CaringPeople extends BaseEntity{
	   
	
	   
	    private Long categoryid;
	     
	    @Column(nullable = true,length=100)
	    private String name;	   
	   	    
	   
	    private String gender;	
	    
	   
	    private String address;
	    
	    /**
	     * 监护人
	     */
	    private String guardian;
	    /**
	     * 监护人电话
	     */
	    private String guardianMobile;
	    /**
	     * 是否有暴力倾向
	     */
	    private Boolean isViolenceTendency;
	    
	    
	    @Column(length =500, nullable = true)
	    private String others;
	    
	   

		public Long getCategoryid() {
			return categoryid;
		}

		public void setCategoryid(Long categoryid) {
			this.categoryid = categoryid;
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

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getGuardian() {
			return guardian;
		}

		public void setGuardian(String guardian) {
			this.guardian = guardian;
		}

		public String getGuardianMobile() {
			return guardianMobile;
		}

		public void setGuardianMobile(String guardianMobile) {
			this.guardianMobile = guardianMobile;
		}

		public Boolean getIsViolenceTendency() {
			return isViolenceTendency;
		}

		public void setIsViolenceTendency(Boolean isViolenceTendency) {
			this.isViolenceTendency = isViolenceTendency;
		}

		public String getOthers() {
			return others;
		}

		public void setOthers(String others) {
			this.others = others;
		}    
		
		
}
