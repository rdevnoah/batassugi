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
}
