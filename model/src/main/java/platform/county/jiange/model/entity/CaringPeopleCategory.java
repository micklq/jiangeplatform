package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 重点关注人群分类
 * @author Mick
 *
 */
@Entity
public class CaringPeopleCategory extends BaseEntity{
	
	   @Column(nullable = true,length=100)
	    private String name;	   
	   
	    private Long parentid;
	    
	    @Column(length = 800, nullable = true)
	    private String description;
	    
	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }
	   
		public Long getParentid() {
			return parentid;
		}

		public void setParentid(Long parentid) {
			this.parentid = parentid;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}    
		
}
