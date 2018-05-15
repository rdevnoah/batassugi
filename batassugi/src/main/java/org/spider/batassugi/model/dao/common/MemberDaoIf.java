package org.spider.batassugi.model.dao.common;

import org.spider.batassugi.model.vo.common.MemberVo;


public interface MemberDaoIf {

  public MemberVo login(MemberVo vo);

  public MemberVo findMemberById(String id);

}
