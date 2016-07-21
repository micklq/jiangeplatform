package platform.county.jiange.service.impl;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.mapper.RuserDAO;
import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.RuserRepository;
import platform.county.jiange.model.Filter;
import platform.county.jiange.model.constants.BicycleConstants;
import platform.county.jiange.model.entity.NoRedis;
import platform.county.jiange.model.entity.Ruser;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.ReflectionService;
import platform.county.jiange.service.RuserService;


@Service("ruserService")
public class RuserServiceImpl extends BaseServiceImpl<Ruser, Long> implements
		RuserService{

	private Logger logger = LoggerFactory.getLogger(RuserServiceImpl.class);
	
	@Resource(name = "ruserRepository")
	@Override
	public void setBaseRepository(BaseRepository<Ruser, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}

	@Autowired
	private RuserRepository ruserRepository;
	
	@Autowired
	RuserDAO ruserDAO;
	
	@Resource(name="jedisService")
	private JedisService jedisService;

	// @Autowired
	// private PasswordHelper passwordHelper;

	@Override
	public Ruser createUser(Ruser user) {
		// 加密
		// passwordHelper.encryptPassword(user);
		throw new UnsupportedOperationException("不支持的操作");
		// return ruserRepository.save(user);
	}

	@Override
	public void changePassword(Long userId, String newPassword) {
		throw new UnsupportedOperationException("不支持的操作");
		// Ruser user = ruserRepository.findOne(userId);
		// user.setPassword(newPassword);
		// passwordHelper.encryptPassword(user);
		// ruserRepository.saveAndFlush(user);
	}

	@Override
	public Ruser findByUsername(String username) {
		return ruserRepository.findByUsername(username);
	}

	@Override
	public List findByType(String type) {
		return this.ruserRepository.findByType(type);
	}

	public boolean existByName(String name, Long uid) {
		int c = ruserRepository.countByName(name, uid);
		if (c == 0)
			return false;
		else
			return true;
	}

	public boolean existByName(String name) {
		int c = ruserRepository.countByName(name);
		if (c == 0)
			return false;
		else
			return true;
	}

	public boolean countByThirdName(String thirdUsername, String thirdFrom) {
		int c = ruserRepository.countByThirdName(thirdUsername, thirdFrom);
		if (c == 0)
			return false;
		return true;
	}

	@Override
	public boolean isUserInfoCompletion(String username) {
		Ruser ruser = findByUsername(username);
		if (ruser == null)
			return false;
		if(StringUtils.isBlank(ruser.getEmail()))
			return false;
		return true;
	}
	
	public Map<Long,Ruser> getRusers(List<Long> ids){
		//Date s = new Date(); 
		List<Ruser> ls = ruserDAO.getRusers(ids);
		Map<Long,Ruser> map = new HashMap<Long,Ruser>(20); 
		for(int i=0;ls!=null&&i<ls.size();i++){
			if(ls.get(i)!=null)
				map.put(ls.get(i).getId(), ls.get(i));
		}
		//Date e = new Date();
		//logger.info("一次获取,ruser信息,耗时，time="+(e.getTime()-s.getTime())+"毫秒");
		return map;
	}

	@Override
	public Long registNum() {
		// TODO Auto-generated method stub
		return ruserRepository.countAll();
	}

	@Override
	public Page searchNormalUserList(Integer pageNo, Integer pageSize, Map<String, Object> params) {
		List<Ruser> list = ruserDAO.getNormalUser(params);
		Integer count = ruserDAO.getNormalUserCount(params);
		return  new PageImpl<Ruser>(list,new PageRequest(pageNo-1, pageSize, null),count);
	}

	@Override
	public List<Long> findIdsByVipState(int vipstate) {
		return this.ruserRepository.findIdsByVipStat(vipstate);
	}

	@Override
	public List<Long> findAllIds() {
		return this.ruserRepository.findAllIds();
	}

	@Override
	public List<Ruser> findUserByKeyWord(String uid,Date timestamp,String keyWord,int count) {
		Map<String,Object> params = new HashMap<String, Object>();
		params.put("timestamp", timestamp);
		params.put("keyWord", keyWord);
		params.put("count", count);
		params.put("uid", uid);
		List<Ruser> list = ruserDAO.findUserByPhoneOrName(params);
		return list == null?new ArrayList<Ruser>():list;
	}
	
	@Override
	public List<Ruser> findUsersByIds(List<Long> ids) {
		return ruserRepository.findRUsersByIds(ids);
	}

	@Override
	public Map<String,String> getUserFromRedis(Long id) {
		Map<String,String> map = jedisService.getMapByKey(BicycleConstants.USER_INFO+id);
		//如果redis中取不到用户信息，去数据库查询
		if (map == null || map.size() == 0){
			Ruser user = find(id);
			if (user != null) {
				//将数据库查询出来的用户信息解析成map返回
				List<Field> fields = ReflectionService.getDeclaredFields(user);
				map = new HashMap<String, String>();
				for (Field field : fields) {
					NoRedis noRedis = field.getAnnotation(NoRedis.class);
					if (noRedis != null) {// 设置为不需要保存redis的字段直接跳过
						continue;
					} else {
						String fieldName = field.getName();
						Object o = ReflectionService.getFieldValue(user, fieldName);
						String value = "";
						if (o != null) {
							value = o.toString();
						}
						map.put(fieldName, value);
					}
				}
				
				//再重新将将用户信息放入到redis
				String key = BicycleConstants.USER_INFO+user.getId();
				jedisService.saveAsMap(key, user);
			}
		}
		if (map != null && map.size()>0)
			map.put("password", "");
		return map;
	}

	@Override
	public void dayUsertPopularityToRedis() {
		Map<String,Object> params = new HashMap<String,Object>();
		String videoCount = jedisService.getValueFromMap(BicycleConstants.DAY_POPULARITY_WEIGHT, BicycleConstants.DAY_VIDEOCOUNT_WEIGHT);
		if(videoCount != null && StringUtils.isNumeric(videoCount)){
			params.put("videoCountRate", Double.parseDouble(videoCount));
		} else {
			params.put("videoCountRate", 0.3);
		}
		String fansCount = jedisService.getValueFromMap(BicycleConstants.DAY_POPULARITY_WEIGHT, BicycleConstants.DAY_FANSCOUNT_WEIGHT);
		if(fansCount != null && StringUtils.isNumeric(fansCount)){
			params.put("fansCountRate", Double.parseDouble(fansCount));
		} else {
			params.put("fansCountRate", 0.7);
		}
		
		ruserDAO.execDayUserPopularityProc(params);
		List<Ruser> rusers = ruserDAO.findDayUserPopularityTop50(50);
		if(rusers!=null && rusers.size()>0){
			jedisService.setObject(BicycleConstants.DAY_USER_POPULARITY, rusers);
			logger.info("======当日用户人气排行，前50======size:"+rusers.size());
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Ruser> findDayUserPopularity(Long uid,Integer count) {
		List<Ruser> userRank = (List<Ruser>)jedisService.getObject(BicycleConstants.DAY_USER_POPULARITY);
		Ruser self = null;
		if(userRank != null && userRank.size()>0){
			if(uid != null && uid>0){
				self = this.find(uid);
				if(self != null){
					for(int i=0;i<userRank.size();i++){
						if(self.getId().equals(userRank.get(i).getId())){
							self.setHotRank(i+1);
							break;
						}
					}
				}
			}
			if(count!=null && count>0 && count<50){
				userRank = userRank.subList(0, count);
			}
			if(self != null){
				userRank.add(self);
			}
		}
	
		return userRank;
	}
	
}
