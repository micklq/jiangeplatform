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
public class GroupMember extends BaseEntity {
       
	/**
	 * 工作人员信息id
	 */
	private Long officeid;
	
	/**
	 * 所属小组
	 */
	private Long groupid;
	
	@Transient
	private String groupname;
	
	/**
	 * 小组职务
	 */
	private Long grouptitleid;
	
	@Transient
	private String grouptitle;
	/**
	 * 姓名
	 */
	@Transient
    private String name;

	/**
	 * 组织名称
	 */
	@Transient
    private String orgname;
	
	/**
	 * 职务名称
	 */
	@Transient
    private String postname;
	
	/**
     * 扩展信息 如 党组书记 /党组成员	
     */
	@Transient
    private String others;

	public Long getOfficeid() {
		return officeid;
	}

	public void setOfficeid(Long officeid) {
		this.officeid = officeid;
	}

	public Long getGroupid() {
		return groupid;
	}

	public void setGroupid(Long groupid) {
		this.groupid = groupid;
	}

	public Long getGrouptitleid() {
		return grouptitleid;
	}

	public void setGrouptitleid(Long grouptitleid) {
		this.grouptitleid = grouptitleid;
	}
	
	

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getGrouptitle() {
		return grouptitle;
	}

	public void setGrouptitle(String grouptitle) {
		this.grouptitle = grouptitle;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrgname() {
		return orgname;
	}

	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}

	public String getPostname() {
		return postname;
	}

	public void setPostname(String postname) {
		this.postname = postname;
	}

	public String getOthers() {
		return others;
	}

	public void setOthers(String others) {
		this.others = others;
	}
}