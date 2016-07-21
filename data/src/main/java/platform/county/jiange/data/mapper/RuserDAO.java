package platform.county.jiange.data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import platform.county.jiange.model.entity.Ruser;

public interface RuserDAO { 
	public List<Ruser> getRusers(List<Long> ids);
	public void incAllVideoCount(@Param("uid")Long uid);
	public void decVideoCountAndAllCount(@Param("uid")Long uid);
	public void decAllVideoCount(@Param("uid")Long uid);
	public List<Ruser> getNormalUser(Map<String,Object> params);
	public List<Ruser> findUserByPhoneOrName(Map<String,Object> params);
	public Integer getNormalUserCount(Map<String,Object> params);
	public void execDayUserPopularityProc(Map<String,Object> params);
	public List<Ruser> findDayUserPopularityTop50(Integer count);
}
