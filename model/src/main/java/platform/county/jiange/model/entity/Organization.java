package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 检察院组织
 * @author Mick
 *
 */
@Entity
public class Organization extends BaseEntity {
       
	/**
	 * 机构名称 如检察院 /政治处
	 */
	@Column(nullable = true,length=150)
    private String name;

	/**
	 * 扩展信息 如 党组书记 /党组成员	
	 */
//    @Column(length = 150, nullable = true)
//    private String extmessage;
   
    /**
     * 上级机构 默认一级 0
     */
    private long parentid;
    
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

	public long getParentid() {
		return parentid;
	}

	public void setParentid(long parentid) {
		this.parentid = parentid;
	}    
    
}