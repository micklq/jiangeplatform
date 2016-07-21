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
public class County extends BaseEntity {
       
    @Column(nullable = true,length=50)
    private String name;

    @Column(length = 255, nullable = true)
    private String description;
   
    private Long parentid;

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

	public Long getParentid() {
		return parentid;
	}

	public void setParentid(Long parentid) {
		this.parentid = parentid;
	}    
    
}