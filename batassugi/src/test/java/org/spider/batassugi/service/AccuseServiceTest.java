package org.spider.batassugi.service;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.admin.AccusePostDaoIf;
import org.spider.batassugi.model.service.admin.AccuseServiceIf;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class AccuseServiceTest {
  @Resource
  private AccusePostDaoIf accusePostDao;
  
  @Resource
  private AccuseServiceIf accuseService;
 
  @Test
  public void accuseServiceTest() {
    //System.out.println(accusePostDao.getAllMemberList());
    //System.out.println(accuseService.getAllMemberList());
   /* AccusePostVo accusePostVo = 
        new AccusePostVo(null, "accuseCategory", "qing52", "admin", null, "accuseReason", "img.jpg", null, null, null);*/
    //accusePostDao.registerAccuseInfo(accusePostVo);
    //accuseService.registerAccuseInfo(accusePostVo);
    
    // 신고 정보 전체 출력
/*	  System.out.println(accusePostDao.getAllAccuseList().get(0));
    System.out.println(accuseService.getAllAccuseList().get(0));*/
    // 신고 번호로 신고 상세내역 가져오기
    System.out.println(accusePostDao.findDetailaccuseByNo("1"));
    //System.out.println(accuseService.findDetailaccuseByNo("1"));
  }
}
