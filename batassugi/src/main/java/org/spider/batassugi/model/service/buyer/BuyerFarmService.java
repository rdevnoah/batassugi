package org.spider.batassugi.model.service.buyer;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.BuyerFarmDaoIf;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.springframework.stereotype.Service;
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
public class BuyerFarmService implements BuyerFarmServiceIf {
  
  @Resource
  private BuyerFarmDaoIf buyerFarmDao;
  
  @Override
  public List<RentVo> findRentFarmInfoById(String id) {
    return buyerFarmDao.findRentFarmInfoById(id);
  }

  @Override
  public void deleteRentByRentNo(int rentNo) {
    buyerFarmDao.deleteRentByRentNo(rentNo);
  }

  @Override
  public void registerApplySeller(ApplySellerVo applySellerVo) {
    buyerFarmDao.registerApplySeller(applySellerVo);
  }
  
  @Override
  public String farmerDocument(ApplySellerVo applySellerVo) throws Exception, IOException {
    MultipartFile multifile = applySellerVo.getFile();// MemberInfoVo의 파일을 multipartfile 형태로 저장

    // 파일이름을 변형해서 저장하기 위한 작업
    String filename = multifile.getOriginalFilename();// 원본의 이름을 가져옴
    String fileSavePath =
        "C:\\Users\\kosta\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\"
        + "img\\farmer_doc\\"; // 저장할 위치를 지정
    UUID uu = UUID.randomUUID(); // 파일 이름에 난수 붙이기
    File f = new File(fileSavePath + uu + "_" + filename); // 새로운 이름으로 파일저장
    System.out.println(f.getCanonicalPath());
    multifile.transferTo(f); // 저장된 경로에 파일 생성
    return f.getName();
  }

  @Override
  public ApplySellerVo findApplySellerById(String id) {
    return buyerFarmDao.findApplySellerById(id);
  }

}
