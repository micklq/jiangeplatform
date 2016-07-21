package platform.county.jiange.data.repository;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.jpa.repository.Query;

import platform.county.jiange.model.entity.Test;

/**
 * Created by djyin on 7/19/2014.
 */
@Resource(name = "testRepository")
public interface TestRepository extends BaseRepository<Test, Long> {
    
}
