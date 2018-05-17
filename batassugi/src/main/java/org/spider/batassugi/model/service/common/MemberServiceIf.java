package org.spider.batassugi.model.service.common;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberStateVo;
import org.spider.batassugi.model.exception.LoginException;
import org.spider.batassugi.model.vo.common.MemberVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.common
 * @filename : MemberServiceIF.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15.  "PL_Seonhwa"    최초작성
 * 2018. 5. 15.  "PL_Seonhwa"     회원등록을 위해 registerBasic, registerExtend 메소드 추가
 * 2018. 5. 16.  "PL_Seonhwa"     회원가입시 아이디 닉네임 중복확인 메소드 추가
 * 2018. 5. 17.  "PL_Seonhwa"     회원가입시 회원상태, 기호작물 입력 메소드 추가
 *                                로그인시 멤버 기호작물 리스트에 넣어주기
 *                                회원정보 수정 처리
 *      </pre>
 */
public interface MemberServiceIf {

  /**
   * 회원 프로필 등록.
   * 
   * @author "PL_Seonhwa"
   * @param vo 회원 가입정보.
   * @return
   * @throws Exception
   * @throws IOException
   */
  public String registerImg(MemberInfoVo vo) throws Exception, IOException;

  /**
   * 회원등록.
   * 
   * @author "PL_Seonhwa"
   * @param vo 회원 가입정보.
   */
  public void register(MemberInfoVo vo);

  public MemberInfoVo login(MemberVo vo) throws LoginException;

  /**
   * 회원 아이디 중복체크.
   * 
   * @author "PL_Seonhwa"
   * @param id 회원이 입력한 아이다.
   * @return
   */
  public String checkId(String id);

  /**
   * 회원 닉네임 중복체크.
   * 
   * @author "PL_Seonhwa"
   * @param nickname
   * @return
   */
  public String checkNickname(String nickname);

  /**
   * 회원 등록시 멤버 상태 등록.
   * 
   * @author "PL_Seonhwa"
   * @param mstVo 회원 상태 번호를 받아올 VO.
   */
  public void registerMemberState(MemberStateVo mstVo);

  /**
   * 로그인 후 멤버 기호 작물을 vo에 넣어줌.
   * 
   * @author "PL_Seonhwa"
   * @param mvo
   */
  public void findLikeCropsById(MemberInfoVo mvo);

  /**
   * 회원 정보 update.
   * 
   * @author "PL_Seonhwa"
   * @param uvo 수정할 회원정보.
   * @return
   */
  public MemberInfoVo updateMemberInfo(MemberInfoVo uvo);

}
