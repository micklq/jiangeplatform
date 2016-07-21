package platform.county.jiange.data.repository;

import javax.annotation.Resource;

import platform.county.jiange.model.entity.LetterPetition;


@Resource(name = "letterPetitionRepository")
public interface LetterPetitionRepository extends BaseRepository<LetterPetition, Long> {
    
}
