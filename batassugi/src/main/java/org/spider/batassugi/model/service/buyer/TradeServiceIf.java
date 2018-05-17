package org.spider.batassugi.model.service.buyer;

import java.io.IOException;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeServiceIf.java
 * @author : "LeeSangUk"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15. "SL SangUk Lee"  최초작성
 * 2018. 5. 15. "SL SangUk Lee"  findTradePostList, 
 *                                            getTotalTradePostCount, findTradePostDetailByNo추가
 * 2018. 5. 15. "SM HyeonGil Kim" deleteTradePostByNo 추가
 * 2018. 5. 16. "SM HyeonGil Kim" updateTradePost, createTradePost 추가
 * 
 *      </pre>
 */
public interface TradeServiceIf {
  /**
   * 거래 게시판 목록 출력 후 페이징 처리 메서드.
   * 
   * @author "SM HyeonGil Kim".
   * @param pageNum 페이징 번호.
   * @return 
   */
  public TradePostListVo findTradePostList(String pageNum);
  
  /**
   * 거래게시판 글 상세보기 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param no 거래 게시판 글 번호.
   * @return 
   */
  public TradePostVo findTradePostDetailByNo(int no);
  
  /**
   * 거래 게시판 글 삭제 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param no 거래 게시판 글 번호.
   */
  public void deleteTradePostByNo(int no);
  
  /**
   * 거래 게시판 자신이 쓴 글 수정 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 수정 정보 생성자.
   * @throws IOException 파일 업로드 예외 처리.
   * @throws Exception 예외처리.
   */
  public void updateTradePost(TradePostVo tvo) throws Exception, IOException;
  
  /**
   * 거래 게시판에 글 등록 하는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 등록 한 글 정보 생성자
   * @throws Exception 예외처리.
   * @throws IOException 파일 업로드 예외 처리.
   */
  public void createTradePost(TradePostVo tvo) throws Exception, IOException;
  
  /**
   * 거래 게시판 상세보기 후 조회수 증가하는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 거래 게시판 번호와 조회수를 위한 생성자.
   */
  public void updateHitsTradePost(TradePostVo tvo);
}
