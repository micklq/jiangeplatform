package platform.county.jiange.service.impl;

import javax.annotation.Resource; 

import org.springframework.stereotype.Service; 

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.OperationLogRepository;
import platform.county.jiange.model.entity.OperationLog;
import platform.county.jiange.service.OperationLogService;

@Service("operationLogService")
public class OperationLogServiceImpl extends BaseServiceImpl<OperationLog, Long> implements
OperationLogService { 
	@Resource(name = "operationLogRepository")
	private OperationLogRepository operationLogRepository; 

	@Resource(name = "operationLogRepository")
	@Override
	public void setBaseRepository(BaseRepository<OperationLog, Long> baseRepository) {
		super.setBaseRepository(baseRepository);
	}
}
