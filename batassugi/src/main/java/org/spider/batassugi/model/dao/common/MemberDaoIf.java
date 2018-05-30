package org.spider.batassugi.model.dao.common;

import java.sql.Date;
import java.util.List;
import java.util.Map;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberStateVo;
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
 * 2018. 5. 15.  "PL_Seonhwa"     회원등록을 위해 registerBasic, registerExtend 메소드 추가
 * 2018. 5. 16.  "PL_Seonhwa"     회원가입시 아이디 닉네임 중복확인 메소드 추가
 * 2018. 5. 17.  "PL_Seonhwa"     회원가입시 회원상태, 기호작물 입력 메소드 추가
 *                                로그인시 멤버 기호작물 리스트에 넣어주기
 *                                회원정보 수정 처리
 *      </pre>
 */

public interface MemberDaoIf {

  public MemberInfoVo login(MemberVo vo);


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


  /**
   * 회원 가입시 아이디 존재 여부 확인.
   * 
   * @author "PL_Seonhwa"
   * @param id 회원이 입력한 아이디.
   * @return
   */
  public int checkId(String id);


  /**
   * 회원 가입시 닉네임 존재 여부 확인. .
   * 
   * @author "PL_Seonhwa"
   * @param nickname 회원이 입력한 닉네임.
   * @return
   */
  public int checkNickname(String nickname);

//  /**
//   * 회원 가입시 회원상태 입력.
//   * 
//   * @author "PL_Seonhwa"
//   * @param mstVo
//   */
//  public void registerMemberState(MemberStateVo mstVo);

  /**
   * 회원 가입시 회원기호 작물 입력.
   * 
   * @author "PL_Seonhwa"
   * @param map 아이디와 기호작물 번호를 입력한 map.
   */
  public void registerLikeCrop(Map<String, String> map);

  /**
   * 회원 기호 작물 존재 여부 확인.
   * 
   * @author "PL_Seonhwa"
   * @param mvo 회원정보를 위한 vo.
   * @return
   */
  public int findCropsCountById(MemberInfoVo mvo);


  /**
   * 회원기호 작물 리스트에 넣기.
   * 
   * @author "PL_Seonhwa"
   * @param mvo 회원 정보를 위한 vo.
   * @return
   */
  public List<String> findLikeCropsById(MemberInfoVo mvo);


  /**
   * 기존 회원의 전체 정보 가져오기(회원 업데이트용).
   * 
   * @author "PL_Seonhwa"
   * @param id 정보를 가져올 아이디.
   * @return
   */
  public MemberInfoVo findMemberInfoById(String id);

  /**
   * 회원정보 수정시 수정할 작물정보가 있으면 기존 작물정보를 지움.
   * 
   * @author "PL_Seonhwa"
   * @param id 지울 아이디.
   */
  public void deleteLikeCrops(String id);

  /**
   * 회원 부가 정보 update.
   * 
   * @author "PL_Seonhwa"
   * @param uvo
   */
  public void updateMemberInfo(MemberInfoVo uvo);

  /**
   * 회원 기본 정보 update.
   * 
   * @author "PL_Seonhwa"
   * @param uvo
   */
  public void updateMember(MemberVo memberVo);

  /**
   * 회원기호 작물 입력을 위하여 DB에서 작물 리스트를 가져오는 메소드.
   * 
   * @author "DL KimJieun"
   * @return
   */
  public List<CropsInfoVo> getAllCropsList();



  /**
   * 회원 아이디로 회원 상태번호 가져오기.
   * 
   * @author "PL_Seonhwa"
   * @param reportedId
   * @return
   */
  public String findStateNumberById(String reportedId);

  public void updateMemberStateNumberPlus(String reportedId);

  public void updateMemberStateNumberMinus(String reportedId);
  
  public void updateMemberStateNumber2Plus(String reportedId);


  public List<MemberInfoVo> getAllMemberInfo();


  public String getSysdate();


  public void updateMemberStateRelease(String id);


  public void updateMemberStopDate(String id);


}
