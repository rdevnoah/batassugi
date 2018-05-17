package org.spider.batassugi.model.dao.seller;

import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * RecruitDao interface로서 DI의 타입을 하나로 통일하기 위해 사용한다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.seller
 * @filename : RecruitDaoIF.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15.  "PM KimYoungHo"    최초작성
 * </pre>
 */
public interface RecruitDaoIf {

  /**
   * 판매자가 보유한 농장에서 모집을 시작할때 모집 테이블로 데이터를 저장.
   * @author "PM KimYoungHo"
   * @param recruitVo 모집 데이터를 저장하는 Vo객체
   */
  void registerRecruit(RecruitVo recruitVo);

}
