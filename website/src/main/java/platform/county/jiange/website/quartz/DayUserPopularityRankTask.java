package platform.county.jiange.website.quartz;
/**
 * @author dmsong
 * @description 视频当日热度排行
 */
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;

import platform.county.jiange.service.RuserService;
import platform.county.jiange.webcomn.util.SpringWebUtils;

public class DayUserPopularityRankTask implements Job {

	private static final Logger logger = LoggerFactory.getLogger(DayUserPopularityRankTask.class);
	
	private RuserService ruserService;


	public void execute(JobExecutionContext context) throws JobExecutionException {
		logger.info("======day user popularity schedule job execute start======");
		ApplicationContext appCtx = SpringWebUtils.getApplicationContext();
		ruserService = (RuserService) appCtx.getBean("ruserService");
		ruserService.dayUsertPopularityToRedis();
	}
}
