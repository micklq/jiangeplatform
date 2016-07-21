package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 联络点 十二个联络点
 * @author Mick
 *
 */
@Entity
public class AreaManage extends BaseEntity {
      
	/**
	 * 片区名称
	 */
	@Column(nullable = true,length=150)
    private String name;   
   
	/**
	 * 片区联络点id
	 */
    private Long contactpointId;
    
    /**
     * 联络点名称
     */
    @Transient
    private String contactpoint;
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

	public Long getContactpointId() {
		return contactpointId;
	}

	public void setContactpointId(Long contactpointId) {
		this.contactpointId = contactpointId;
	}

	public String getContactpoint() {
		return contactpoint;
	}

	public void setContactpoint(String contactpoint) {
		this.contactpoint = contactpoint;
	}    
    
    

	
    
}