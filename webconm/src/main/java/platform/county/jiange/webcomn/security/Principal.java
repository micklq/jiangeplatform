package platform.county.jiange.webcomn.security;

import java.io.Serializable;

public class Principal implements Serializable {

    private static final long serialVersionUID = 5798882004228239559L;
    private Long id;
    private String username;

    public Principal(Long id, String username) {
        this.id = id;
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String toString() {
        return username;
    }
}
