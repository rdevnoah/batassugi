package org.spider.batassugi.model.dao.admin;

import java.util.List;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;

public interface AccusePostDaoIf {
	
  /**
   * 신고게시판에서 모든 멤버 아이디를 불러오기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param id
   * @return
   */
  public List<MemberInfoVo> getAllMemberList(String id);

  /**
   * 신고 게시판에서 입력된 정보를 DB에 저장하기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param accusePostVo
   */
  public void registerAccuseInfo(AccusePostVo accusePostVo);

  /**
   * 모든 신고 리스트를 불러오는 메소드.
   * 
   * @author "DL KimJieun"
   * @return
   */
  public List<AccusePostVo> getAllAccuseList();


  /**
   * 신고 신청번호로 신고 상세 내역 가져오는 메소드
   * 
   * @author "PL_Seonhwa"
   * @param accuseNo
   * @return
   */
  public AccusePostVo findDetailaccuseByNo(String accuseNo);

  /**
   * 신고정보를 업데이트.
   * 
   * @author "PL_Seonhwa"
   * @param accusePostVo
   */
  public void updateAccuseStateInfo(AccusePostVo accusePostVo);

  /**
   * 신고대상 회원의 신고 처리 횟수를 확인.
   * 
   * @author "PL_Seonhwa"
   * @param reportedId
   * @return 
   */
  public int findMemberAccuseListById(String reportedId);
}
