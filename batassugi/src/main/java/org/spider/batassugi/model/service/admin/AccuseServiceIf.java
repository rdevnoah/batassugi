package org.spider.batassugi.model.service.admin;

import java.io.IOException;
import java.util.List;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;

public interface AccuseServiceIf {

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
   * 신고게시판에서 이미지를 등록하기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param vo
   * @return
   * @throws Exception
   * @throws IOException
   */
  public String registerImg(AccusePostVo vo) throws Exception, IOException;

  /**
   * 모든 신고 리스트를 불러오는 메소드.
   * 
   * @author "DL KimJieun"
   * @return
   */
  public List<AccusePostVo> getAllAccuseList();

  /**
   * 신고번호로 신고 상세정보를 가져옴.
   * 
   * @author "PL_Seonhwa"
   * @param accuseNo
   * @return
   */
  public AccusePostVo findDetailaccuseByNo(String accuseNo);

  /**
   * 신고번호내용을 처리.
   * 
   * @author "PL_Seonhwa"
   * @param accusePostVo
   */
  public void accusePro(AccusePostVo accusePostVo);

  /**
   * 정지된지 3개월이 된 회원의 정지를 풀어주는 메소드.
   * 
   * @author "DL KimJieun"
   */
  void updateAccuseRelease();


}
