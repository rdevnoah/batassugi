package org.spider.batassugi.model.dao.common;

import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.common
 * @filename : MemberDaoIf.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 16.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "PL_Seonhwa"    최초작성
 *      </pre>
 */

public interface MemberDaoIf {
  /**
   * 회원 로그인을 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param vo 회원이 로그인을 위해 기입한 정보.
   * @return
   */
  public MemberVo login(MemberVo vo);


  /**
   * 회원 기본정보 등록을 위한 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param vo 회원이 가입을 위해 기입한 정보.
   */
  public void registerBasic(MemberInfoVo vo);

  /**
   * 회원 추가정보 등록을 위한 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param vo 회원이 가입을 위해 기입한 정보.
   */
  public void registerExtend(MemberInfoVo vo);

  /**
   * 로그인 익셉션 처리를 위한 아이디 찾기 메소드.
   * 
   * @author "DL KimJieun"
   * @param id 입력한 아이디가 있는지 없는지 체크하기 위해 입력받는 정보.
   * @return
   */
  public MemberVo findMemberById(String id);

}
