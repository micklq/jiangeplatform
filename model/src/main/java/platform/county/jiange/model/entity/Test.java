package platform.county.jiange.model.entity;
import javax.persistence.*;
/**
 * Created by
 * User: jones
 * Date: 12/3/13
 * Time: 9:34 AM
 */
@Entity
@Table(name = "test")
public class Test extends BaseEntity {
       
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
    
}