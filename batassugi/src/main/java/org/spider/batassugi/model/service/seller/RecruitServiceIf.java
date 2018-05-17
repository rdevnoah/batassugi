package org.spider.batassugi.model.service.seller;

import java.util.Map;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 판매자가 등록한 농지에서 대여 혹은 주말농장을 모집하는 서비스를 처리하는 비즈니스 계층입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.seller
 * @filename : RecruitServiceIf.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "PM KimYoungHo"    최초작성
 * </pre>
 */
public interface RecruitServiceIf {
  /**
   * 모집글을 등록하는 비즈니스 로직입니다.
   * @author "PM KimYoungHo"
   * @param vo View에서 전달받은 RecruitVo 입니다.
   */
  public void registerRecruit(RecruitVo vo);

  /**
   * 판매자가 모집할 때 현재 밭의 대여중인 농지의 크기를 제외한 남은 농지의 크기를 처리하는 비즈니스 로직입니다.
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public String findRestFarmSizeByFarmNo(String farmNo);

  /**
   * 모집 글에 기본적으로 입력되어 있어야 할 대여 가능한 최대 농지 크기, 대여 가능한 최대 기간 값을 처리하는 비즈니스 로직입니다.
   * 메소드 설명 : 여기에 설명을 쓰시오.
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  public Map<String, Object> findRentSizeAndFarmNoAndCropsAndMaxMonth(String farmNo);
}
