package platform.county.jiange.data.repository;


import javax.annotation.Resource;

import platform.county.jiange.model.entity.LetterReply;


@Resource(name = "letterReplyRepository")
public interface LetterReplyRepository extends BaseRepository<LetterReply, Long> {
    
}
