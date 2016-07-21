package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 监督平台信息
 * @author Mick
 *
 */
@Entity
public class Supervision extends BaseEntity{
	
	   //事件名称
		private String name ; 
		
	    //事件时间
		private String eventtime ;      
	    
	    
	    //事件描述
	    @Column(length=1500, nullable = true)
	    private String description;
	  

	    public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEventtime() {
			return eventtime;
		}

		public void setEventtime(String eventtime) {
			this.eventtime = eventtime;
		}		

		public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }   
}
