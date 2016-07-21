package platform.county.jiange.website.quartz;

import java.text.ParseException;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;


public class HotVideoRank {

	/*
	 * @Autowired private SchedulerFactoryBean schedulerFactoryBean;
	 */
	private QuartzProducer quartzProducer;
	private static String JOB_GROUP_NAME = "hot_video_group";
	private static String JOB_NAME = "hot_video_job";

	public void initDelayJob() {
//		try {
//			Scheduler sched = quartzProducer.getScheduler();
//			
//			if(sched.getJobDetail(JOB_NAME, JOB_GROUP_NAME)!= null){
//				sched.deleteJob(JOB_NAME, JOB_GROUP_NAME);
//			}
//			JobDetail jobDetail = new JobDetail(JOB_NAME, JOB_GROUP_NAME, HotVideoTask.class);// 任务名，任务组，任务执行类
//			Trigger trigger = new CronTrigger(JOB_NAME, JOB_GROUP_NAME, "0 0/5 * * * ?");
//			sched.scheduleJob(jobDetail, trigger);
//		} catch (ParseException e) {
//			e.printStackTrace();
//		} catch (SchedulerException e) {
//			e.printStackTrace();
//		}
	}

	public QuartzProducer getQuartzProducer() {
		return quartzProducer;
	}

	public void setQuartzProducer(QuartzProducer quartzProducer) {
		this.quartzProducer = quartzProducer;
	}
	
	
}
