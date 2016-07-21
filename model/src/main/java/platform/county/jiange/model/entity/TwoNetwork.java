package platform.county.jiange.model.entity;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;
/**
 * 区域 县和乡镇
 * @author Mick
 *
 */
@Entity
public class TwoNetwork extends BaseEntity {       
   
    /**
     * 挂包领导id
     */
    private Long leadid;
    
    /**
     * 挂包领导姓名
     */
    @Transient
    private String leadname;
    
    /**
     * 联络点ids 逗号分隔
     */
    @Column(length = 200, nullable = true)
    private String contactids;
    
    /**
     * 联络点名称 逗号分隔
     */
    @Transient
    private String contactnames;
    
    /**
     * 科室ids 逗号分隔
     */
    @Column(length = 200, nullable = true)
    private String orgids;
    
    /**
     * 科室名称 逗号分隔
     */
    @Transient
    private String orgnames;
    
    
    /**
     * 责任人ids 逗号分隔
     */
    @Column(length = 200, nullable = true)
    private String officeids;
    
    /**
     * 责任人姓名 逗号分隔
     */
    @Transient
    private String officenames;

	public Long getLeadid() {
		return leadid;
	}

	public void setLeadid(Long leadid) {
		this.leadid = leadid;
	}

	public String getLeadname() {
		return leadname;
	}

	public void setLeadname(String leadname) {
		this.leadname = leadname;
	}

	public String getContactids() {
		return contactids;
	}

	public void setContactids(String contactids) {
		this.contactids = contactids;
	}

	public String getContactnames() {
		return contactnames;
	}

	public void setContactnames(String contactnames) {
		this.contactnames = contactnames;
	}

	public String getOrgids() {
		return orgids;
	}

	public void setOrgids(String orgids) {
		this.orgids = orgids;
	}

	public String getOrgnames() {
		return orgnames;
	}

	public void setOrgnames(String orgnames) {
		this.orgnames = orgnames;
	}

	public String getOfficeids() {
		return officeids;
	}

	public void setOfficeids(String officeids) {
		this.officeids = officeids;
	}

	public String getOfficenames() {
		return officenames;
	}

	public void setOfficenames(String officenames) {
		this.officenames = officenames;
	}
    
    
    
       
    
}