package platform.county.jiange.website.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import platform.county.jiange.model.entity.OperationLog;
import platform.county.jiange.service.BaseService;
import platform.county.jiange.service.OperationLogService;
import platform.county.jiange.webcomn.controller.CRUDController;

/**
 * 暂时结合easyui写的增删查改的例子
 * @author meizhiwen
 *
 */
@Controller()
@RequestMapping("operationLog")
public class OperationLogController extends CRUDController<OperationLog, Long>{

	private static final Logger logger = LoggerFactory.getLogger(OperationLogController.class);
	
	@Resource(name="operationLogService")
	private OperationLogService operationLogService;
	
	@Resource(name="operationLogService")
	@Override
	public void setBaseService(BaseService<OperationLog, Long> baseService) {
		this.baseService=baseService;
	}
	
	@RequestMapping("operationLoglist")
	public String list(){
		return "operationLog/list";
	}
}
