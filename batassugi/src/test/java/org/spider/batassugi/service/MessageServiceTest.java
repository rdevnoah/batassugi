package org.spider.batassugi.service;

import java.util.List;
import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.common.MessageDaoIf;
import org.spider.batassugi.model.service.common.CommonServiceIf;
import org.spider.batassugi.model.vo.common.MessageVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring-model.xml" })
public class MessageServiceTest {

  @Resource
  CommonServiceIf commonService;
  @Resource
  MessageDaoIf messageDao;
  
  @Test
  public void memberServiceTest() {
    //쪽지 등록 테스트
    /*MessageVo msVo=new MessageVo(null, "java12","안녕", "안녕 테스트중이야",null,null,null,null,"admin");
    messageDao.registerMessage(msVo);
    System.out.println(msVo);*/
    
    //보낸 쪽지 조회 테스트
    List<MessageVo> msList=messageDao.findmyMassageListById("admin");
    for(MessageVo vo:msList)
      System.out.println(vo);
  }
}
