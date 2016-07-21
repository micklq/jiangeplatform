package platform.county.jiange.data.repository;

import java.util.List;

import platform.county.jiange.model.entity.OperationLog;

import javax.annotation.Resource;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "operationLogRepository")
public interface OperationLogRepository extends BaseRepository<OperationLog, Long> {
	
}
