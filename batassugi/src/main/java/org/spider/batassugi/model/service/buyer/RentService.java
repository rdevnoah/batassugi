package org.spider.batassugi.model.service.buyer;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.RentDaoIf;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.RentListVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 구매자가 판매자가 올린 농지를 대여할 수 있는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : RentService.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim" 최초작성
 * 2018. 5. 17.  "SL SangUk Lee"   registerRentByRentVo메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"   findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"   getRentList 메서드 추가
 *      </pre>
 */
@Service
public class RentService implements RentServiceIf {

  @Resource
  private RentDaoIf rentDao;

  @Override
  @Transactional
  public int registerRentByRentVo(RentVo rentVo) {
    rentDao.registerRentByRentVo(rentVo);
    return rentDao.updateRecruitSizeByRecruitNo(rentVo);
  }

  @Override
  public RecruitVo findRentDetailByRecruitNo(int recruitNo) {
    RecruitVo recruitVo = rentDao.findRentDetailByRecruitNo(recruitNo);
    int farmNo = recruitVo.getFarmVo().getFarmNo();
    recruitVo.getFarmVo().setCropsVo(rentDao.findFarmAvailableCropsListByFarmNo(farmNo));
    return recruitVo;
  }

  @Override
  public RentListVo getRentList(String pageNum) {
    int totalRentListCount = rentDao.totalRentListCount(); // 대여신청 게시글의 총 개수를 얻어옴.
    BuyerPagingBean pb = null;
    if (pageNum == null) {
      pb = new BuyerPagingBean(totalRentListCount);
    } else {
      pb = new BuyerPagingBean(Integer.parseInt(pageNum), totalRentListCount);
    }
    pb.setContentNumberPerPage(4);
    List<RecruitVo> list = rentDao.getRentList(pb); // 대여신청 게시글 목록을 list에 담음
    List<RecruitVo> recruitlist = new ArrayList<>(); // arrayList 선언
    List<CropsVo> cropslist = null;
    for (RecruitVo recruitVo : list) {
      int farmNo = recruitVo.getFarmVo().getFarmNo();
      cropslist = rentDao.findFarmAvailableCropsListByFarmNo(farmNo); // 재배가능 작물정보를 list에 담음.
      recruitVo.getFarmVo().setCropsVo(cropslist); // 대여신청Vo객체에 작물정보list를 set
      recruitlist.add(recruitVo);
    }
    return new RentListVo(pb, recruitlist);
  }
}
