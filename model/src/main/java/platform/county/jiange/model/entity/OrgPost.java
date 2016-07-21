package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 组织职称 
 * @author Mick
 *
 */
@Entity
@Table(name = "orgpost")
public class OrgPost extends BaseEntity {
       
	/**
	 * 职称名称 如科长/主任/政委
	 */
	@Column(nullable = true,length=150)
    private String name; 
	
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }	  
   

    
}