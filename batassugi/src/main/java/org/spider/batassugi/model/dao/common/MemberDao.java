package org.spider.batassugi.model.dao.common;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
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
 * 2018. 5. 15.  "PL_Seonhwa"     회원등록을 위해 registerBasic, registerExtend 메소드 추가
 *      </pre>
 */
@Repository
public class MemberDao implements MemberDaoIf {
  @Resource
  private SqlSessionTemplate template;

  @Override
  public MemberVo login(MemberVo vo) {
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
  
}
