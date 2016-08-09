package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 监督平台信息
 * @author Mick
 *
 */
@Entity
public class Supervision extends BaseEntity{
	
	    /**
	     * 标题
	     */
	    @Column(length=300, nullable = true)
		private String title ; 	    
	    
		/**
		 * 描述
		 */
		@Column(length=1500, nullable = true)
	    private String description;
		
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
		 * 发起人id
		 */
		private Long officeid;	
		
		/**
		 * 发起人姓名
		 */
		@Transient
		private String officename;
		
		
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

		public Long getLocationid() {
			return locationid;
		}

		public void setLocationid(Long locationid) {
			this.locationid = locationid;
		}

		public String getLocation() {
			return location;
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

		public void setLocation(String location) {
			this.location = location;
		}

		
	     
}
