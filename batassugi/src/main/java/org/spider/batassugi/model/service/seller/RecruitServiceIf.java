package org.spider.batassugi.model.service.seller;

import java.util.Map;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * <<<<<<< HEAD 판매자가 등록한 농지에서 대여 혹은 주말농장을 모집하는 서비스를 처리하는 비즈니스 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitServiceIf.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "PM KimYoungHo"    최초작성
=======
 * 판매자가 임대 등록을 하면 구매자가 대여신청을 하기 위한 서비스 인터페이스.
 * &#64;title 밭아쓰기
 * &#64;packagename : org.spider.batassugi.model.service.seller
 * &#64;filename : RecruitServiceIf.java
 * &#64;author : "SL SangUk Lee"
 * &#64;since : 2018. 5. 17.
 * &#64;version : 1.0
 * &#64;see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "SL SangUk Lee"    최초작성
>>>>>>> refs/heads/develop_to_buyer
 *      </pre>
 */
public interface RecruitServiceIf {
  /**
   * 모집글을 등록하는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param vo View에서 전달받은 RecruitVo 입니다.
   */
  public void registerRecruit(RecruitVo vo);

  /**
   * 판매자가 모집할 때 현재 밭의 대여중인 농지의 크기를 제외한 남은 농지의 크기를 처리하는 비즈니스 로직입니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public String findRestFarmSizeByFarmNo(String farmNo);

  /**
   * 모집 글에 기본적으로 입력되어 있어야 할 대여 가능한 최대 농지 크기, 대여 가능한 최대 기간 값을 처리하는 비즈니스 로직입니다. 메소드 설명 : 여기에 설명을 쓰시오.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public Map<String, Object> findRentSizeAndFarmNoAndCropsAndMaxMonth(String farmNo);

  public void updateRentStatusConfirm(String[] rentNo);

  public void updateRentStatusReject(String[] rentNo);
}
