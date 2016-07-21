package platform.county.jiange.data.repository;

import java.util.Collection;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import platform.county.jiange.model.entity.Ruser;

@Resource(name = "ruserRepository")
public interface RuserRepository extends BaseRepository<Ruser, Long> {
	Ruser findByUsername(String username);
	
	List findByType(String type);
	
	@Query("select a.id from Ruser a where a.vipStat=?1")
	List<Long> findIdsByVipStat(int vipstate);
	
	@Query("select count(a.name) from Ruser a where a.name=?1 and id!=?2")
	public int countByName(String name,Long uid);
	
	@Query("select count(a.name) from Ruser a where a.name=?1")
	public int countByName(String name);
	
	@Query("select count(a.thirdUserame) from Ruser a where a.thirdUserame=?1 and a.thirdFrom=?2")
	public int countByThirdName(String thirdUsername,String thirdFrom);
	
	@Query(value="SELECT user FROM Ruser user WHERE (user.stat = 0 OR user.stat = 1) AND user.id in ?1 ")
	public List<Ruser> findRUsersByIds(Collection<Long> ids);
	
	@Modifying
	@Transactional
	@Query("update Ruser set videoCount = ?1 where id=?2")
	public void updateUserVideoCount(int count,Long uid);
	
	@Query("select count(*) from Ruser a where a.type='normal'")
	public long countAll();
	
	@Query("select a.id from Ruser a")
	List<Long> findAllIds();

}
