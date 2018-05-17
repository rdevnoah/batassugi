package org.spider.batassugi.model.dao.common;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberStateVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.stereotype.Repository;

/**
 * 회원 정보 데이터를 불러오는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.dao.common
 * @filename : MemberDao.java
 * @author : "Team Spider"
 * @since : 2018. 5. 12.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 12.  "Team Spider"    최초작성
 * 2018. 5. 15.  "DL KimJieun"    회원로그인을 위한 login 메소드 추가 
 * 2018. 5. 15.  "PL_Seonhwa"     회원등록을 위해 registerBasic, registerExtend 메소드 추가
 * 2018. 5. 16.  "PL_Seonhwa"     회원가입시 아이디 닉네임 중복확인 메소드 추가
 * 2018. 5. 17.  "PL_Seonhwa"     회원가입시 회원상태, 기호작물 입력 메소드 추가
 *      </pre>
 */
@Repository
public class MemberDao implements MemberDaoIf {
  @Resource
  private SqlSessionTemplate template;

  @Override
  public MemberInfoVo login(MemberVo vo) {
    return template.selectOne("member.login", vo);
  }

  @Override
  public void registerBasic(MemberInfoVo vo) {
    template.insert("member.registerBasic",vo);    
  }

  @Override
  public void registerExtend(MemberInfoVo vo) {
    template.insert("member.registerExtend",vo);
  }

  @Override
  public MemberVo findMemberById(String id) {
    return template.selectOne("member.findMemberById", id);
  }

  @Override
  public int checkId(String id) {
    return template.selectOne("member.checkId",id);
  }

  @Override
  public int checkNickname(String nickname) {
    return template.selectOne("member.checkNickname",nickname);
  }

  @Override
  public void registerMemberState(MemberStateVo mstVo) {
    template.insert("member.registerMemberState",mstVo);
    
  }

  @Override
  public void registerLikeCrop(Map<String, String> map) {
    template.insert("member.registerLikeCrop",map);
    
  }

  @Override
  public List<CropsInfoVo> getAllCropsList() {
    return template.selectList("crops.getAllCropsList");
  }
  
}
