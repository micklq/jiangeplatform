package platform.county.jiange.web.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import platform.county.jiange.model.constants.BicycleConstants;
import platform.county.jiange.model.entity.Ruser;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.service.RuserService;
import platform.county.jiange.webcomn.RespBody;
import platform.county.jiange.webcomn.controller.CRUDController;

@Controller()
@RequestMapping("ruser")
public class RuserController extends CRUDController<Ruser,Long> {

	@Override
	public void setBaseService(BaseService<Ruser, Long> baseService) {
		this.baseService=baseService;
	}
	@Resource(name="ruserService")
	private RuserService ruserService;
	
	@Resource(name="jedisService")
	private JedisService jedisService;
	
	/**
	 * 修改用户状态，禁言、封号、解除
	 * @param uid
	 * @param stat
	 * @return
	 * @throws IOException 
	 * @throws SolrServerException 
	 */
	@RequestMapping("chgstat")
	@ResponseBody
	public RespBody changeStat(Long uid,Integer stat,@RequestParam(value = "expired", required = false)  Date expired) throws SolrServerException, IOException{
		Ruser user = ruserService.find(uid);
		user.setStat(stat);
		if(expired != null)
			user.setLockedDate(expired);
		user.setModifyDate(new Date());
		
		ruserService.update(user);
		
		jedisService.saveAsMap(BicycleConstants.USER_INFO+user.getId(), user);

		String key = "FBU_"+uid.toString();
		if(stat.intValue() == 0){
			if(jedisService.keyExists(key))
				jedisService.delete(key);
		} else {
			jedisService.set(key, stat.toString());
			if(expired != null){
				Long expiredTime = expired.getTime()-System.currentTimeMillis();
				if(expiredTime>0)
					jedisService.expire(key, (int)(expiredTime/1000));
			}
		}
		
		return this.respBodyWriter.toSuccess();
	}
	
	/**
	 * 修改用户vip等级，蓝V、黄V
	 * @param uid
	 * @param stat
	 * @return
	 */
	@RequestMapping("chgvipstat")
	@ResponseBody
	public RespBody changeVipStat(Long uid,Integer stat){
		String blueKey = "VIP_OF_BLUE";
		String yellowKey = "VIP_OF_YELLOW";
		Ruser user = ruserService.find(uid);
		if(user.getVipStat().intValue()==1){
			jedisService.deleteSetItemFromShard(blueKey, uid.toString());
		}else if(user.getVipStat().intValue()==2){
			jedisService.deleteSetItemFromShard(yellowKey, uid.toString());
		}
		user.setVipStat(stat);
		user.setModifyDate(new Date());
		
		ruserService.update(user);
		
		jedisService.saveAsMap(BicycleConstants.USER_INFO+user.getId(), user);
		
		if(stat.intValue() == 1){
			jedisService.setValueToSetInShard(blueKey, uid.toString());
		} else if(stat.intValue() == 2){
			jedisService.setValueToSetInShard(yellowKey, uid.toString());
		}
		
		return this.respBodyWriter.toSuccess();
	}
	/**
	 * 显示注册用户数，大屏独立页面，无需登录
	 * @return
	 */
	@RequestMapping("showregist")
	public String showRegist(){
		return "user/registUserNum";
	}
	
	/**
	 * 查询累计注册用户数
	 * @return
	 */
	@RequestMapping("registcount")
	@ResponseBody
	public Map registNum(){
		Map rmap = new HashMap();
		DecimalFormat def = new DecimalFormat("###,###,###");
		DateFormat daf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
		Long count = ruserService.registNum();
		rmap.put("count", def.format(count));
		rmap.put("date", daf.format(new Date()));
		return rmap;
	}
	
	@RequestMapping("getNormalUsers")
	@ResponseBody
	public Map searchNormalUser(Integer page, Integer rows,@RequestParam(value = "name", required = false) String name,
				@RequestParam(value = "username", required = false) String username,
				@RequestParam(value = "phone", required = false) String phone){
		
		if(page==0){
    		page=1;
    	}
    	Map<String,Object> params = new HashMap<String,Object>();
        params.put("pageStart", (page-1)*rows);
        params.put("pageSize", rows);	
        if(StringUtils.isNotBlank(name)){
        	params.put("name", name);
        }
        if(StringUtils.isNotBlank(username)){
        	params.put("username", username);
        }
        if(StringUtils.isNotBlank(phone)){
        	params.put("phone", phone);
        }
        
        Page pinfo = ruserService.searchNormalUserList(page, rows, params);
        
		Map<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("total", pinfo.getTotalElements());//total键 存放总记录数，必须的 
        jsonMap.put("rows", pinfo.getContent());//rows键 存放每页记录 list  
        
        return jsonMap;
	}

}
