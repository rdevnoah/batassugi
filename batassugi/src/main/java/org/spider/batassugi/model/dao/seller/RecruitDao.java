package org.spider.batassugi.model.dao.seller;

import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Repository;

/**
 * 판매자가 자신의 농지에서 구매자를 모집하는 데이터에 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.seller
 * @filename : RecruitDao.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "PM KimYoungHo"    최초작성
 *      </pre>
 */
@Repository
public class RecruitDao implements RecruitDaoIf {
  
  @Resource
  private SqlSessionTemplate template;
  
  @Override
  public void registerRecruit(RecruitVo recruitVo) {
    template.insert("recruit.registerRecruit",recruitVo);
  }

  @Override
  public String findRestFarmSizeByFarmNo(String farmNo) {
    return template.selectOne("recruit.findRestFarmSizeByFarmNo", farmNo);
  }

  @Override
  public String findMaxMonth(String farmNo) {
    return template.selectOne("recruit.findMaxRecruitMonth",farmNo);
  }
  
}

