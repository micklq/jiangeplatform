package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 学校
 * @author Mick
 *
 */
@Entity
public class School extends BaseEntity {
       
    @Column(nullable = true,length=150)
    private String name;

    @Column(length = 500, nullable = true)
    private String description;

    /**
     * 县Id
     */
    private Long countyid;   
    
    @Transient
    private String countyname;   
    
    /**
     * 村id
     */
    private long villageid;
    
    /**
     * 是否阳光工作站
     */
    private int issun;
    
    @Transient
    private String issuntext;
        
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

	public long getVillageid() {
		return villageid;
	}

	public void setVillageid(long villageid) {
		this.villageid = villageid;
	}

	public int getIssun() {
		return issun;
	}

	public void setIssun(int issun) {
		this.issun = issun;
	}

	public String getIssuntext() {
		return issuntext;
	}

	public void setIssuntext(String issuntext) {
		this.issuntext = issuntext;
	}

	
	 
	
	
    
}