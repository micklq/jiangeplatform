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
public class FirstNetwork extends BaseEntity {
       
	/**
	 * 名称
	 */
    @Column(nullable = true,length=150)
    private String name;
    
   
    private Long officeid;
    
    @Transient
    private String officeName;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getOfficeid() {
		return officeid;
	}

	public void setOfficeid(Long officeid) {
		this.officeid = officeid;
	}

	public String getOfficeName() {
		return officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}   
    
    
      
    
}