package org.spider.batassugi.model.service.common;

import javax.annotation.Resource;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.exception.LoginException;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.stereotype.Service;

/**
 * 공통에서 회원부분을 처리하는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.service.common
 * @filename : MembeerServiceImpl.java
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
 *      </pre>
 */
@Service
public class MemberService implements MemberServiceIf {

  @Resource
  private MemberDaoIf memberDao;

  @Override
  public MemberVo login(MemberVo vo) throws LoginException {
    MemberVo memberVo = memberDao.findMemberById(vo.getId());
    String password = vo.getPassword();
    if (memberVo == null) {
      throw new LoginException("아이디가 존재하지 않습니다.");
    } else if (!password.equals(memberVo.getPassword())) {
      throw new LoginException("비밀번호가 다릅니다.");
    }
    return memberDao.login(vo);
  }
  

}
