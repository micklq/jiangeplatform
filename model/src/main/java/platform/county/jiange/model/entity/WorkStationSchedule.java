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
public class WorkStationSchedule extends BaseEntity {
       
   
	/**
	 * 学校id
	 */
	private Long schoolid;
	
	/**
	 * 学校名称
	 */
	@Transient
	private String schoolname;
	
	    
    /**
     * 工作时间
     */
	private String worktime;
   
   
    /**
     * 联络科室id
     */
	private Long orgid;
	
	/**
	 * 联络科室名称
	 */
	@Transient
	private String orgname;
    
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
	 * 联络人id
	 */
	private Long officeid;
	
	/**
	 * 联络人姓名
	 */
	@Transient
	private String officename;

	public Long getSchoolid() {
		return schoolid;
	}

	public void setSchoolid(Long schoolid) {
		this.schoolid = schoolid;
	}

	public String getSchoolname() {
		return schoolname;
	}

	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}

	public String getWorktime() {
		return worktime;
	}

	public void setWorktime(String worktime) {
		this.worktime = worktime;
	}

	public Long getOrgid() {
		return orgid;
	}

	public void setOrgid(Long orgid) {
		this.orgid = orgid;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

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

	public Long getOfficeid() {
		return officeid;
	}

	public void setOfficeid(Long officeid) {
		this.officeid = officeid;
	}

	public String getOfficename() {
		return officename;
	}

	public void setOfficename(String officename) {
		this.officename = officename;
	}
	
	
	
    
}