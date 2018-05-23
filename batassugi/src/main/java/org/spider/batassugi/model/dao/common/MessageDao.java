package org.spider.batassugi.model.dao.common;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.common.MessageVo;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDao implements MessageDaoIf {

  @Resource
  private SqlSessionTemplate template;
  
  @Override
  public void registerMessage(MessageVo mgVo) {
    template.insert("message.registerMessage",mgVo);
  }

  @Override
  public List<MessageVo> findmyMassageListById(String id) {
    return template.selectList("message.findmyMassageListById", id);
  }

  @Override
  public MessageVo finddetailsendBoxByNo(String messageNo) {
    return template.selectOne("message.finddetailsendBoxByNo", messageNo);
  }

  @Override
  public void deleteMessageProByNo(String messageNo) {
    template.update("message.deleteMessageProByNo",messageNo);
  }

}
