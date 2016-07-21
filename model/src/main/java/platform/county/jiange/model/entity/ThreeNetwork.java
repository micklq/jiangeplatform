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
public class ThreeNetwork extends BaseEntity {
       
    /**
     * 片区id
     */
    private Long areaid;
    
    /**
     * 片区名称
     */
    @Transient
    private String areaname;

    
    /**
     * 内容描述
     */
    @Column(length = 150, nullable = true)
    private String description;
   
    /**
     * 辐射乡镇ids 逗号分隔
     */
    private String countyids;
    
    /**
     * 辐射乡镇名称  逗号分隔
     */
    @Transient
    private String countynames;

	public Long getAreaid() {
		return areaid;
	}

	public void setAreaid(Long areaid) {
		this.areaid = areaid;
	}

	public String getAreaname() {
		return areaname;
	}

	public void setAreaname(String areaname) {
		this.areaname = areaname;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCountyids() {
		return countyids;
	}

	public void setCountyids(String countyids) {
		this.countyids = countyids;
	}

	public String getCountynames() {
		return countynames;
	}

	public void setCountynames(String countynames) {
		this.countynames = countynames;
	}
    
    
    
}