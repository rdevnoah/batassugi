package org.spider.batassugi.model.dao.admin;

import java.util.List;

import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;

public interface AccusePostDaoIf {
  
  public List<MemberInfoVo> getAllMemberList();
  
  public void registerAccuseInfo(AccusePostVo accusePostVo);
  
  public List<AccusePostVo> getAllAccuseList();
}
