package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 乡村和社区
 * @author Mick
 *
 */
@Entity
public class Village extends BaseEntity {
       
	@Column(nullable = true,length=50)
    private String name;

    @Column(length = 255, nullable = true)
    private String description;
   
    /**
     * 乡镇id
     */
    private Long countyid;   
   
    /**
     * 乡镇名称
     */
    @Transient
	private String countyname;
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

	public Long getCountyid() {
		return countyid;
	}

	public void setCountyid(Long countyid) {
		this.countyid = countyid;
	}

	public String getCountyname() {
		return countyname;
	}

	public void setCountyname(String countyname) {
		this.countyname = countyname;
	}	
	
    
}