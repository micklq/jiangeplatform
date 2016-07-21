package platform.county.jiange.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;

import platform.county.jiange.model.entity.Ruser;

public interface RuserService extends BaseService<Ruser, Long> {
	/**
	 * 创建用户
	 * 
	 * @param user
	 */
	public Ruser createUser(Ruser user);

	/**
	 * 修改密码
	 * 
	 * @param userId
	 * @param newPassword
	 */
	public void changePassword(Long userId, String newPassword);

	/**
	 * 根据用户名查找用户
	 * 
	 * @param username
	 * @return
	 */
	public Ruser findByUsername(String username);
	
	public List findByType(String type);
	public List<Long> findIdsByVipState(int vipstate);
	public List<Long> findAllIds();
	
	public boolean existByName(String name,Long uid);
	public boolean existByName(String name);
	/**
	 * 判断第三方账号是否已经存在
	 * @param thirdUsername
	 * @param thirdFrom
	 * @return
	 */
	public boolean countByThirdName(String thirdUsername,String thirdFrom);
	/**
	 * 判断用户信息是否完整[目前当email为空时视为资料不完整]
	 * @param username
	 * @return
	 */
	public boolean isUserInfoCompletion(String username);
	
	public Map<Long,Ruser> getRusers(List<Long> ids);
	
	/**
	 * 注册用户数
	 * @return
	 */
	public Long registNum();
	
	public Page searchNormalUserList(Integer pageNo, Integer pageSize, Map<String, Object> params);

	//根据手机号码或者昵称查询用户信息
	public List<Ruser> findUserByKeyWord(String uid,Date timestamp,String keyWord,int count);

	List<Ruser> findUsersByIds(List<Long> ids);
	
	//根据id从redis中读取用户信息，返回map格式
	Map<String,String> getUserFromRedis(Long id);
	//用户人气日排行榜，执行存储过程，前50条存redis
	public void dayUsertPopularityToRedis();
	public List<Ruser> findDayUserPopularity(Long uid,Integer count);
}
