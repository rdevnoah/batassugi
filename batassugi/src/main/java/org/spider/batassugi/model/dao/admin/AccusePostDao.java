package org.spider.batassugi.model.dao.admin;

import java.util.List;

import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.stereotype.Repository;

/**
 * 관리자의 신고 처리를 위하여 신고 데이터를 불러오는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.dao.common
 * @filename : AccusePostDao.java
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
@Repository
public class AccusePostDao implements AccusePostDaoIf {
  @Resource
  private SqlSessionTemplate template;

  @Override
  public List<MemberInfoVo> getAllMemberList() {
    return template.selectList("member.getAllMemberList");
  }

  @Override
  public void registerAccuseInfo(AccusePostVo accusePostVo) {
    template.insert("member.registerAccuseInfo", accusePostVo);
  }

  @Override
  public List<AccusePostVo> getAllAccuseList() {
    return template.selectList("member.getAllAccuseList");
  }
  
}
