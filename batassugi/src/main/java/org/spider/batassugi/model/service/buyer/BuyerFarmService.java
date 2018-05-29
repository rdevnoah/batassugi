package org.spider.batassugi.model.service.buyer;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.spider.batassugi.model.dao.common.PathInfo;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 * 구매자가 자신이 대여한 농지를 관리(수확상태 확인, 신청중인 농지 취소, 대여한 농지 상세정보)를 할 수 있는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : BuyerFarmService.java
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
 * 2018. 5. 14.  "SM HyeonGil Kim"  최초작성
 * 2018. 5. 19.  "SL SangUk Lee"    findRentFarmInfoById 메서드추가
 * 2018. 5. 19.  "SL SangUk Lee"    deleteRentByRentNo 메서드추가
 * 2018. 5. 20.  "SL SangUk Lee"    registerApplySeller 메서드추가
 * 2018. 5. 20.  "SL SangUk Lee"    farmerDocument 메서드추가
 * 2018. 5. 20.  "SL SangUk Lee"    findApplySellerById 메서드추가
 *      </pre>
 */
@Service
public class BuyerFarmService implements BuyerFarmServiceIf, PathInfo {

  @Resource
  private BuyerFarmDaoIf buyerFarmDao;

  @Override
  public List<RentVo> findRentFarmInfoById(MemberInfoVo mvo) {
    String id = mvo.getMemberVo().getId();
    List<RentVo> list = buyerFarmDao.findRentFarmInfoById(id);
    for (RentVo rentVo : list) {
      int harvestStatus = rentVo.getHarvestStatus();

      if (harvestStatus >= 100) {
        buyerFarmDao.updateRentStatus(rentVo.getRentNo());
      }

    }
    return buyerFarmDao.findRentFarmInfoById(id);
  }

  /**
   * 구매자 등급업해주는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param mvo 회원정보.
   * @return
   */
  public String updateMemberLevel(MemberInfoVo mvo) {
    int cnt = 0;
    String levelUp = "";
    String id = mvo.getMemberVo().getId(); // 세션에 저장된 id
    List<RentVo> list = findRentFarmInfoById(mvo); // 대여신청 목록을 담음
    Map<String, String> map = new HashMap<>(); 
    for (RentVo rentVo : list) {
      String rentStatus = rentVo.getRentStatus(); // 대여처리 상태
      String level = mvo.getMemberVo().getmemberLevel(); // 회원의 등급
      map.put("id", id);
      if (rentStatus.equals("대여만료")) {
        cnt++; // 대여만료1건 있을시 +1
        if (level.equals("초급") && cnt > 2 && cnt < 6) {
          map.put("level", "중급"); 
          buyerFarmDao.updateMemberLevel(map); // 등급업
          levelUp = "중급";
          break;
        } else if (level.equals("중급") && cnt > 5) {
          map.put("level", "고급");
          buyerFarmDao.updateMemberLevel(map); // 등급업
          levelUp = "고급";
          break;
        }
      }
    }
    return levelUp;
  }

  @Transactional
  @Override
  public void deleteRentByRentNo(RentVo rentVo) {
    buyerFarmDao.updateRecruitSizeResetByRecruitNo(rentVo);
    buyerFarmDao.deleteRentByRentNo(rentVo);
  }

  @Transactional
  @Override
  public void registerApplySeller(ApplySellerVo applySellerVo) {
    if (findApplySellerById(applySellerVo.getMemberVo().getId()) != null) {
      buyerFarmDao.updateApplySeller(applySellerVo);
    } else {
      buyerFarmDao.registerApplySeller(applySellerVo);
    }
  }

  @Override
  public String farmerDocument(ApplySellerVo applySellerVo) throws Exception, IOException {
    MultipartFile multifile = applySellerVo.getFile();// MemberInfoVo의 파일을 multipartfile 형태로 저장

    // 파일이름을 변형해서 저장하기 위한 작업
    String filename = multifile.getOriginalFilename();// 원본의 이름을 가져옴
    String fileSavePath = Image_PATH + "\\farmer_doc\\"; // 저장할 위치를 지정
    UUID uu = UUID.randomUUID(); // 파일 이름에 난수 붙이기
    File f = new File(fileSavePath + uu + "_" + filename); // 새로운 이름으로 파일저장
    multifile.transferTo(f); // 저장된 경로에 파일 생성
    return f.getName();
  }

  @Override
  public ApplySellerVo findApplySellerById(String id) {
    return buyerFarmDao.findApplySellerById(id);
  }

}
