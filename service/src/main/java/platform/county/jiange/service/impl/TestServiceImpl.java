package platform.county.jiange.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import platform.county.jiange.data.repository.BaseRepository;
import platform.county.jiange.data.repository.TestRepository;
import platform.county.jiange.model.entity.Test;
import platform.county.jiange.service.TestService;

@Service("testService")
public class TestServiceImpl extends BaseServiceImpl<Test,Long> implements TestService {
	
	@Resource(name = "testRepository")
    private TestRepository testRepository;
    
    @Resource(name = "testRepository")
    @Override
    public void setBaseRepository(BaseRepository<Test, Long> baseRepository) {
        super.setBaseRepository(baseRepository);
    }
    
    
}
