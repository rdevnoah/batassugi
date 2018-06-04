package org.spider.batassugi.service;

import javax.annotation.Resource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.spider.batassugi.model.dao.admin.AdminDaoIf;
import org.spider.batassugi.model.service.admin.AdminServiceIf;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring-model.xml"})
public class AdminServiceTest {

  @Resource
  AdminServiceIf adminService;
  @Resource
  AdminDaoIf adminDao;
  
  @Test
  public void adminServiceTest() {

    // 판매자 신청 리스트 출력 테스트
    /*List<ApplySellerVo> list=adminService.getAllApplyList();
    for(ApplySellerVo asv:list)
      System.out.println(asv);*/
    
    // 판매자 신청 리스트 페이징 테스트
   /* PagingBean pb=adminService.paging("1");
    List<ApplySellerVo> list=adminService.findApplyListByPb(pb);
    for(ApplySellerVo asv:list)
      System.out.println(asv);*/
    
    // 판매자 신청 리스트 데이터 확인
   // System.out.println(adminDao.findDetailApplyByNO("1"));
    
    
    //판매자 신청 업데이트
    /*
     * ApplySellerVo avo=new ApplySellerVo("24", new MemberVo("Tottenham23", null, null, null, null,
     * null, null), null, null, "승인처리", null, null); avo.setApplyReason("승인처리되었습니다");
     * //adminDao.updateMemberLevel(avo.getMemberVo().getId()); adminDao.updateApplySellerDate(avo);
     */
  }
}
