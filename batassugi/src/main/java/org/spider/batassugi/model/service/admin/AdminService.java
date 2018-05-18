package org.spider.batassugi.model.service.admin;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.admin.AdminDaoIf;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 구매자의 판매자 신청 승인을 하기 위한 관리자 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.service.admin
 * @filename : AdminService.java
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
@Service
public class AdminService implements AdminServiceIf {
  @Resource
  private AdminDaoIf adminDao;

  @Override
  public List<ApplySellerVo> getAllApplyList() {
    return adminDao.getAllApplyList();
  }

  @Override
  public PagingBean paging(String nowPage) {
    int page = Integer.parseInt(nowPage);
    int totalPostCount = adminDao.getTotalApplyCount();
    PagingBean pb = new PagingBean(page, totalPostCount);
    return pb;
  }

  @Override
  public List<ApplySellerVo> findApplyListByPb(PagingBean pb) {
    return adminDao.findApplyListByPb(pb.getStartRowNumber(), pb.getEndRowNumber());
  }

  @Override
  public Object findDetailApplyByNO(String applyNo) {
    return adminDao.findDetailApplyByNO(applyNo);
  }

  @Override
  @Transactional
  public void updateMemberLevel(ApplySellerVo avo) {
    // 승인 처리 시
    if (avo.getApplyState().equals("승인처리")) {
      avo.setApplyReason("승인처리되었습니다");
      adminDao.updateMemberLevel(avo.getMemberVo().getId());
    }
    // 승인 거절시 아무 거절 사유를 적지 않은 경우
    if(avo.getApplyState().equals("승인처리")&&avo.getApplyReason().equals("")){
      avo.setApplyReason("승인거절 처리되었습니다");
    }
    adminDao.updateApplySellerDate(avo);
  }

  @Override
  public List<AccusePostVo> findAccuseListByPb(PagingBean pb) {
    return adminDao.findAccuseListByPb(pb.getStartRowNumber(), pb.getEndRowNumber());
  }

  @Override
  public PagingBean paging2(String nowPage) {
    int page = Integer.parseInt(nowPage);
    int totalPostCount = adminDao.getTotalAccuseCount();
    PagingBean pb = new PagingBean(page, totalPostCount);
    return pb;
  }

}
