package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 监督平台信息回复
 * @author Mick
 *
 */
@Entity
public class SupervisionReply extends BaseEntity{
    
	private Long supervid;
	
	private Long replyuserid;
	
    @Column(nullable = true,length=50)
    private String name;

    @Column(length = 500, nullable = true)
    private String description;

	public Long getSupervid() {
		return supervid;
	}

	public void setSupervid(Long supervid) {
		this.supervid = supervid;
	}

	public Long getReplyuserid() {
		return replyuserid;
	}

	public void setReplyuserid(Long replyuserid) {
		this.replyuserid = replyuserid;
	}

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
    
    
    
}
