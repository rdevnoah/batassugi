package org.spider.batassugi.model.service.admin;

import java.io.IOException;
import java.util.List;

import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;

public interface AccuseServiceIf {
  public List<MemberInfoVo> getAllMemberList();
  
  public void registerAccuseInfo(AccusePostVo accusePostVo);
  
  public String registerImg(AccusePostVo vo) throws Exception, IOException;
  
  public List<AccusePostVo> getAllAccuseList();
}
