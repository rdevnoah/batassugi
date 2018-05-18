package org.spider.batassugi.model.dao.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.springframework.stereotype.Repository;
@Repository
public class AdminDao implements AdminDaoIf {

  @Resource
  private SqlSessionTemplate template;
  
  @Override
  public List<ApplySellerVo> getAllApplyList() {
    return template.selectList("admin.getAllApplyList");
  }

  @Override
  public int getTotalApplyCount() {
    return template.selectOne("admin.getTotalApplyCount");
  }

  @Override
  public List<ApplySellerVo> findApplyListByPb(int startRowNumber, int endRowNumber) {
    Map<String, Integer> map=new HashMap<String,Integer>();
    map.put("startRowNumber", startRowNumber);
    map.put("endRowNumber", endRowNumber);
    return template.selectList("admin.findApplyListByPb", map);
  }

  @Override
  public ApplySellerVo findDetailApplyByNO(String applyNo) {
    return template.selectOne("admin.findDetailApplyByNO",applyNo);
  }

  @Override
  public void updateMemberLevel(String id) {
    template.update("admin.updateMemberLevel",id);
  }

  @Override
  public void updateApplySellerDate(ApplySellerVo avo) {
    template.update("admin.updateApplySellerDate",avo);
  }

}
