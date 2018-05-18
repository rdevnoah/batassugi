package org.spider.batassugi.model.dao.admin;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.admin
 * @filename : AdminDaoIf.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "PL_Seonhwa"    최초작성
 *      </pre>
 */
public interface AdminDaoIf {

  /**
   * 판매자 신청 리스트를 가져오는 메소드.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  public List<ApplySellerVo> getAllApplyList();

  /**
   * 총 판매자 신청 카운트를 가져올 메소드.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  public int getTotalApplyCount();

  /**
   * 페이징빈 처리에 따른 신청자 리스트.
   * 
   * @author "PL_Seonhwa"
   * @param startRowNumber
   * @param endRowNumber
   * @return
   */
  public List<ApplySellerVo> findApplyListByPb(int startRowNumber, int endRowNumber);

  /**
   * 판매자 신청 번호로 상세내역 가져오는 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param applyNo
   * @return
   */
  public ApplySellerVo findDetailApplyByNO(String applyNo);

  /**
   * 멤버 레벨을 판매자로 변경해주는 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param id
   */
  public void updateMemberLevel(String id);

  /**
   * 판매자 신청 정보를 업데이트.
   * 
   * @author "PL_Seonhwa"
   * @param avo
   */
  public void updateApplySellerDate(ApplySellerVo avo);


}
