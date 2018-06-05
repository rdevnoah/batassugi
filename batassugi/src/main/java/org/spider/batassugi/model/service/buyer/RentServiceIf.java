package org.spider.batassugi.model.service.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentListVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.buyer.SearchRentListVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : RentServiceIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SL SangUk Lee"  최초작성
 * 2018. 5. 17.  "SL SangUk Lee"    registerRentByRentVo메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    getRentList 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    getCropsList 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    getFarmAddressList 메서드 추가
 * 2018. 5. 28.  "SL SangUk Lee"    findTotalRentListCountByKeyword 메서드 추가
 *      </pre>
 */
public interface RentServiceIf {

  /**
   * 대여신청하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청정보를 담고있는 객체.
   * @return int
   */
  public int registerRentByRentVo(RentVo rentVo);

  /**
   * 상세정보에 뿌려질 데이터를 전달하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param recruitNo 대여신청번호.
   * @return RecruitVo
   */
  public RecruitVo findRentDetailByRecruitNo(int recruitNo);

  /**
   * 대여신청 게시판 목록 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return List
   */
  public RentListVo getRentList(String pageNum);

  /**
   * 대여신청 게시판에서 작물검색시 자동완성 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return List
   */
  public List<String> getCropsList();
  
  /**
   * 대여신청 게시판에서 주소검색시 자동완성 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return List
   */
  public List<String> getFarmAddressList();
  
  public SearchRentListVo findRentListByKeyword(String pageNum, SearchRentListVo searchVo);
}
