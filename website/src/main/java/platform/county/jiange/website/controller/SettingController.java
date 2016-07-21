package platform.county.jiange.website.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import platform.county.jiange.model.constants.BicycleConstants;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.cache.JedisService;
import platform.county.jiange.webcomn.controller.CRUDController;

@Controller
@RequestMapping("setting")
public class SettingController extends CRUDController{
	
	@Resource(name="jedisService")
	private JedisService jedisService;
	
	@RequestMapping("weight")
	public String weightSetting(@RequestParam(required = false)Integer all_praise,
			@RequestParam(required = false)Integer all_evaluation,
			@RequestParam(required = false)Integer all_pubtime,
			@RequestParam(required = false)Integer all_playcount,
			@RequestParam(required = false)Integer act_praise,
			@RequestParam(required = false)Integer act_evaluation,
			@RequestParam(required = false)Integer act_pubtime,
			@RequestParam(required = false)Integer act_playcount,HttpServletRequest request){
		
		if(all_praise!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ALL, BicycleConstants.PRIASE_WEIGHT, all_praise.toString());
		}
		
		if(all_evaluation!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ALL, BicycleConstants.EVALUATION_WEIGHT, all_evaluation.toString());
		}
		
		if(all_pubtime!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ALL, BicycleConstants.PUBLISH_WEIGHT, all_pubtime.toString());
		}
		
		if(all_playcount!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ALL, BicycleConstants.PLAY_WEIGHT, all_playcount.toString());
		}
		
		if(act_praise!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY, BicycleConstants.PRIASE_WEIGHT, act_praise.toString());
		}
		
		if(act_evaluation!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY, BicycleConstants.EVALUATION_WEIGHT, act_evaluation.toString());
		}
		
		if(act_pubtime!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY, BicycleConstants.PUBLISH_WEIGHT, act_pubtime.toString());
		}
		
		if(act_playcount!=null){
			jedisService.setValueToMap(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY, BicycleConstants.PLAY_WEIGHT, act_playcount.toString());
		}
	
		request.setAttribute("dayHotVideo", jedisService.getMapByKey(BicycleConstants.DAY_HOT_VIDEOS_WEIGHT));
		request.setAttribute("dayPopularity", jedisService.getMapByKey(BicycleConstants.DAY_POPULARITY_WEIGHT));
		
		request.setAttribute("hotVideo", jedisService.getMapByKey(BicycleConstants.HOT_WEIGHT_OF_ALL));
		request.setAttribute("hotActivity", jedisService.getMapByKey(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY));
		
		return "setting/weight";
	}
	
	@RequestMapping("rankWeight")
	public String rankWeightSetting(@RequestParam(required = false)Double playcount,
			@RequestParam(required = false)Double praiseCount,
			@RequestParam(required = false)Double evaluationCount,
			@RequestParam(required = false)Double videoCount,
			@RequestParam(required = false)Double fansCount,HttpServletRequest request){
		
		if(playcount!=null){
			jedisService.setValueToMap(BicycleConstants.DAY_HOT_VIDEOS_WEIGHT, BicycleConstants.DAY_PLAYCOUNT_WEIGHT, playcount.toString());
		}
		
		if(evaluationCount!=null){
			jedisService.setValueToMap(BicycleConstants.DAY_HOT_VIDEOS_WEIGHT, BicycleConstants.DAY_EVALUATIONCOUNT_WEIGHT, evaluationCount.toString());
		}
		
		if(praiseCount!=null){
			jedisService.setValueToMap(BicycleConstants.DAY_HOT_VIDEOS_WEIGHT, BicycleConstants.DAY_PRAISECOUNT_WEIGHT, praiseCount.toString());
		}
		
		if(videoCount!=null){
			jedisService.setValueToMap(BicycleConstants.DAY_POPULARITY_WEIGHT, BicycleConstants.DAY_VIDEOCOUNT_WEIGHT, videoCount.toString());
		}
		
		if(fansCount!=null){
			jedisService.setValueToMap(BicycleConstants.DAY_POPULARITY_WEIGHT, BicycleConstants.DAY_FANSCOUNT_WEIGHT, fansCount.toString());
		}
		
		request.setAttribute("dayHotVideo", jedisService.getMapByKey(BicycleConstants.DAY_HOT_VIDEOS_WEIGHT));
		request.setAttribute("dayPopularity", jedisService.getMapByKey(BicycleConstants.DAY_POPULARITY_WEIGHT));
		
		request.setAttribute("hotVideo", jedisService.getMapByKey(BicycleConstants.HOT_WEIGHT_OF_ALL));
		request.setAttribute("hotActivity", jedisService.getMapByKey(BicycleConstants.HOT_WEIGHT_OF_ACTIVITY));
		
		return "setting/weight";
	}

	@Override
	public void setBaseService(BaseService baseService) {
		// TODO Auto-generated method stub
		
	}

}
