package platform.county.jiange.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 监督平台信息回复
 * @author Mick
 *
 */
@Entity
public class SupervisionReply extends BaseEntity{
    
	private Long supervid;
	
	private Long replyuserid;
	
	@Transient
	private String replyuser;	
	
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
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getReplyuser() {
		return replyuser;
	}

	public void setReplyuser(String replyuser) {
		this.replyuser = replyuser;
	}
    
    
    
}
