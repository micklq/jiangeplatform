package platform.county.jiange.model.entity;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import platform.county.jiange.model.enums.Sex;
import platform.county.jiange.model.enums.UserStatus;
import platform.county.jiange.model.enums.UserType;
import platform.county.jiange.model.enums.VipStatus;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * restwww 前端用户使用
 * @author meizhiwen
 *
 */
@Entity
@Table(name = "ruser")
@JsonIgnoreProperties(value = {"password", "activationCode", "roles","salt"})

public class Ruser extends BaseEntity {
	
    public enum ThirdUser{
    	
    	self("busonline","捕梦"),sina("sina","新浪"),qq("qq","QQ"),wechat("wechat","微信");
    	
    	private ThirdUser(String c,String description){
    		this.value=c;
    		this.description=description;
    	}
    	
    	private String value; 
    	private String description;  
    	
		public String getValue() {
			return value;
		}
		public void setValue(String value) {
			this.value = value;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
    	
    }

    @NotEmpty(groups = {Save.class,Update.class})
    @Pattern(regexp = "^[0-9a-z_A-Z\\u4e00-\\u9fa5 -]+$")
    @Length(min = 2, max = 20)
    @Column(nullable = false, updatable = true, unique = true)
    private String username;

    @NotEmpty(groups = {Save.class,Update.class})
    @Pattern(regexp = "^[^\\s&\"<>]+$")
    @Length(min = 4, max = 200)
    @Column(nullable = false)
    private String password;

    @Email
    @Length(max = 200)
    @Column(length = 200)
    private String email;

    @Column(nullable = false)
    private String type=UserType.普通用户.getName();

    @Column(nullable = true)
    private String phone;

    @Length(max = 200)
    @Column(nullable = true, length = 200)
    private String name;//名字
    @Length(max = 255)
    @Column(nullable = true, length = 255)
    private String department;

    @Column(length = 255)
    private String activationCode;

    @NotNull
    @Column(nullable = false)
    private Boolean isEnabled=true;

    @NotNull
    @Column(nullable = false)
    private Boolean isLocked=false;

    @Column
    private Integer loginFailureCount;

    @Column
    private Date lockedDate;

    @Column
    private Date loginDate;


    @Column(length = 128)
    private String loginIp;
    
    @Column
    private Integer fansCount = 0;
    
    @Column
    private Integer attentionCount = 0;
    
    @Column(name = "sign_sum")
    private Integer signSum=0;//积分数
    
    /*密码盐*/
    @Column
    private String salt;
    //性别
    private String sex=Sex.不男不女.getName();
    //所在地
    private String addr;
    //个性签名
    private String signature;
    
    private String pic;//用户头像

    private String homePic;//个人首页背景图 

    private Integer videoCount=0;//个人上传并通过审核的视频数 

    private Integer allVideoCount=0;//个人上传的视频总数 
    
    private String thirdFrom=ThirdUser.self.getValue();//第三方联合登录的用户来源   
    
    private String thirdUserame;//第三方账户 
    
    @Transient
    private int isAttention = 0;//是否关注该用户
    
    /**
     * 用户状态，默认激活 0,禁言 1,封号 2
     */
    @Column(name = "stat",columnDefinition = "tinyint NOT NULL DEFAULT 0",nullable=true)
    private Integer stat = UserStatus.active.getStat();
    
    /**
     * 用户vip等级状态，暂时支持（普通 0 默认，蓝V 1，黄V 2）
     */
    @Column(name = "vstat",columnDefinition = "tinyint NOT NULL DEFAULT 0",nullable=true)
    private Integer vipStat = VipStatus.normal.getStat();
    
    @Transient
    private int age;//年龄
    
    private Date birthday;//生日
	//人气值
    @Column(name = "day_popularity",columnDefinition = "double(32,2)  NULL DEFAULT '0.00'",nullable=true)
	private Double dayPopularity;
    
  //人气排名
  	@Transient
  	private int hotRank = 0;
    
	public Integer getAllVideoCount() {
		return allVideoCount;
	}

	public void setAllVideoCount(Integer allVideoCount) {
		this.allVideoCount = allVideoCount;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getAge() {
		if(birthday==null)
			return 0;
		else{
			Calendar old = Calendar.getInstance();
			old.setTime(birthday); 
			Calendar now = Calendar.getInstance(); 
			return (now.get(Calendar.YEAR)-old.get(Calendar.YEAR));
		} 
	} 

	public String getThirdFrom() {
		return thirdFrom;
	}

	public void setThirdFrom(String thirdFrom) {
		this.thirdFrom = thirdFrom;
	}

	public String getThirdUserame() {
		return thirdUserame;
	}

	public void setThirdUserame(String thirdUserame) {
		this.thirdUserame = thirdUserame;
	}

	public Integer getVideoCount() {
		return videoCount;
	}

	public void setVideoCount(Integer videoCount) {
		this.videoCount = videoCount;
	}

	public String getHomePic() {
		return homePic;
	}

	public void setHomePic(String homePic) {
		this.homePic = homePic;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

//	@NoRedis
//	@ManyToMany(fetch = FetchType.LAZY, targetEntity = Wrole.class)
//    @JoinTable(name = "ruser_rrole")
//    private List<Wrole> roles = new ArrayList<Wrole>();

    public String getCredentialsSalt() {
		return username + salt;
	}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getName() {
    	if(StringUtils.isBlank(name)){
    		if(username.trim().matches("\\d{11}")){ //是否电话号码
    			return username.substring(0,3)+"****"+username.substring(8,10);
    		}else{
    			return username;
    		}
    	}
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }


    public Boolean getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }


    public Boolean getIsLocked() {
        return isLocked;
    }

    public int getHotRank() {
		return hotRank;
	}

	public void setHotRank(int hotRank) {
		this.hotRank = hotRank;
	}

	public Double getDayPopularity() {
		return dayPopularity;
	}

	public void setDayPopularity(Double popularity) {
		this.dayPopularity = popularity;
	}

	public void setIsLocked(Boolean isLocked) {
        this.isLocked = isLocked;
    }


    public Integer getLoginFailureCount() {
        return loginFailureCount;
    }

    public void setLoginFailureCount(Integer loginFailureCount) {
        this.loginFailureCount = loginFailureCount;
    }

    public Date getLockedDate() {
        return lockedDate;
    }

    public void setLockedDate(Date lockedDate) {
        this.lockedDate = lockedDate;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getActivationCode() {
        return activationCode;
    }

    public void setActivationCode(String activationCode) {
        this.activationCode = activationCode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


//    public List<Wrole> getRoles() {
//        return roles;
//    }
//
//    public void setRoles(List<Wrole> roles) {
//        this.roles = roles;
//    }
    
    public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Ruser)) return false;
        if (!super.equals(o)) return false;

        Ruser user = (Ruser) o;

        if (department != null ? !department.equals(user.department) : user.department != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (phone != null ? !phone.equals(user.phone) : user.phone != null) return false;
        if (!type.equals(user.type)) return false;
        if (!username.equals(user.username)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + username.hashCode();
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + type.hashCode();
        result = 31 * result + (phone != null ? phone.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (department != null ? department.hashCode() : 0);
        return result;
    }

	/**
	 * @return the signature
	 */
	public String getSignature() {
		return signature;
	}

	/**
	 * @param signature the signature to set
	 */
	public void setSignature(String signature) {
		this.signature = signature;
	}

	/**
	 * @return the addr
	 */
	public String getAddr() {
		return addr;
	}

	/**
	 * @param addr the addr to set
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	public Integer getStat() {
		return stat;
	}

	public void setStat(Integer stat) {
		this.stat = stat;
	}

	public Integer getVipStat() {
		return vipStat;
	}

	public void setVipStat(Integer vipStat) {
		this.vipStat = vipStat;
	}

	public Integer getFansCount() {
		return fansCount;
	}

	public void setFansCount(Integer fansCount) {
		this.fansCount = fansCount;
	}

	public Integer getAttentionCount() {
		return attentionCount;
	}

	public void setAttentionCount(Integer attentionCount) {
		this.attentionCount = attentionCount;
	}

	public int getIsAttention() {
		return isAttention;
	}

	public void setIsAttention(int isAttention) {
		this.isAttention = isAttention;
	}

	public Integer getSignSum() {
		return signSum;
	}

	public void setSignSum(Integer signSum) {
		this.signSum = signSum;
	}
	
}
