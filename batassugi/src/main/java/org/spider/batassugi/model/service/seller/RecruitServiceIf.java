package org.spider.batassugi.model.service.seller;

import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 판매자가 임대 등록을 하면 구매자가 대여신청을 하기 위한 서비스 인터페이스.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitServiceIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "SL SangUk Lee"    최초작성
 * </pre>
 */
public interface RecruitServiceIf {

  public void registerRecruit(RecruitVo vo);

}
