package org.spider.batassugi.model.service.seller;

import javax.annotation.Resource;
import org.spider.batassugi.model.dao.seller.RecruitDaoIf;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Service;

/**
 * 판매자가 등록한 농지의 구매자를 모집하는 일련의 서비스를 정의합니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitService.java
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
@Service
public class RecruitService implements RecruitServiceIf {
  @Resource
  private RecruitDaoIf recruitDao;
  
  /**
   * 판매자가 농지의 대여인을 모집하는 글을 등록하는 메소드.
   * @author "PM KimYoungHo"
   * @param vo 모집에 필요한 데이터를 받는 매개변수
   */
  @Override
  public void registerRecruit(RecruitVo vo) {
    recruitDao.registerRecruit(vo);
  }
}
