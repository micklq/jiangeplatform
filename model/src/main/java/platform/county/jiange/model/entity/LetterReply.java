package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * 信访回复
 * @author Mick
 *
 */
@Entity
public class LetterReply extends BaseEntity {
       
	
	private Long  letterid;
	
	private Long replyuserid;
	
	
    @Column(nullable = true,length=50)
    private String name;

    @Column(length = 500, nullable = true)
    private String description;

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

	public Long getLetterid() {
		return letterid;
	}

	public void setLetterid(Long letterid) {
		this.letterid = letterid;
	}

	public Long getReplyuserid() {
		return replyuserid;
	}

	public void setReplyuserid(Long replyuserid) {
		this.replyuserid = replyuserid;
	}

	
    
    
    
}