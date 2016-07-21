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
public class GroupManage extends BaseEntity {
       
    /**
     * 组名称 
     */
	@Column(nullable = true,length=100)
    private String name;
    /**
     * 组描述
     */
    @Column(length = 800, nullable = true)
    private String description;
    /**
     * 所属小组 根级为 0
     */
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