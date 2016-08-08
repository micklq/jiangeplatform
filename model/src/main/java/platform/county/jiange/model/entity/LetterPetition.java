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
        
	
	/**
	 * 标题
	 */
	@Column(length=300, nullable = true)
	private String title; 
	
	/**
	 * 描述
	 */
	@Column(length=1500, nullable = true)
    private String description;
	
	/**
	 * 联络人id
	 */
	private Long officeid;	
	
	/**
	 * 联络人姓名
	 */
	@Transient
	private String officename;
	
	
	/**
	 * 地点id
	 */
	private Long locationid;
	
	/**
	 * 地点名称
	 */
	@Transient
	private String location;
	
	/**
	 * 事件时间
	 */
	private String eventtime;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getEventtime() {
		return eventtime;
	}

	public void setEventtime(String eventtime) {
		this.eventtime = eventtime;
	} 
	


	  
    
}