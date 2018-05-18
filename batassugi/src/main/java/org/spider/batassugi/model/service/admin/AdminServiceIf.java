package org.spider.batassugi.model.service.admin;

import java.util.List;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.common.PagingBean;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.admin
 * @filename : AdminServiceIf.java
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
public interface AdminServiceIf {

  /**
   * 판매자 신청 리스트를 가져올 메소드.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  public List<ApplySellerVo> getAllApplyList();

  /**
   * 판매자 신청 리스트 페이징 처리.
   * 
   * @author "PL_Seonhwa"
   * @param nowPage
   * @return
   */
  public PagingBean paging(String nowPage);

  /**
   * 페이징 처리에 따른 리스트 가져올 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param pb
   * @return
   */
  public List<ApplySellerVo> findApplyListByPb(PagingBean pb);

  /**
   * 지원번호로 apply정보를 가져옴.
   * 
   * @author "PL_Seonhwa"
   * @param applyNo
   * @return
   */
  public Object findDetailApplyByNO(String applyNo);

  /**
   * 판매자 신청 처리.
   * 
   * @author "PL_Seonhwa"
   * @param avo
   */
  public void updateMemberLevel(ApplySellerVo avo);

  /**
   * 신고게시판 페이징 처리.
   * 
   * @author "PL_Seonhwa"
   * @param pb
   * @return
   */
  public List<AccusePostVo> findAccuseListByPb(PagingBean pb);

  /**
   * 신고게시판 페이징빈 계산.
   * 
   * @author "PL_Seonhwa"
   * @param nowPage
   * @return
   */
  public PagingBean paging2(String nowPage);


}
