package org.spider.batassugi.model.service.admin;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.admin.AccusePostDaoIf;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 * 관리자의 신고처리를 위한 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.service.admin
 * @filename : AccuseService.java
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
public class AccuseService implements AccuseServiceIf {
  @Resource
  private AccusePostDaoIf accusePostDao;

  @Resource
  private MemberDaoIf memberDao;

  @Override
  public List<MemberInfoVo> getAllMemberList() {
    List<MemberInfoVo> list = accusePostDao.getAllMemberList();
    return list;
  }

  @Override
  public void registerAccuseInfo(AccusePostVo accusePostVo) {
    accusePostDao.registerAccuseInfo(accusePostVo);
  }

  @Override
  public String registerImg(AccusePostVo vo) throws Exception, IOException {
    // MemberInfoVo의 파일을 multipartfile 형태로 저장
    MultipartFile multifile = vo.getFile();

    // 파일이름을 변형해서 저장하기 위한 작업
    // 원본의 이름을 가져옴
    String filename = multifile.getOriginalFilename();

    // 저장할 위치를 지정
    String fileSavePath =
        "C:\\Users\\User\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\img\\accuse_img\\";
    // 이름에 현재 날짜를 붙이자
    // String now = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());
    // 파일 이름에 난수 붙이기
    UUID uu = UUID.randomUUID();

    // 새로운 이름으로 파일저장
    File f = new File(fileSavePath + uu + "_" + filename);

    // 저장된 경로에 파일 생성
    multifile.transferTo(f);
    return f.getName();
  }

  @Override
  public List<AccusePostVo> getAllAccuseList() {
    List<AccusePostVo> list = accusePostDao.getAllAccuseList();
    return list;
  }

  @Override
  public AccusePostVo findDetailaccuseByNo(String accuseNo) {
    return accusePostDao.findDetailaccuseByNo(accuseNo);
  }

  @Override
  @Transactional
  public void accusePro(AccusePostVo accusePostVo) {
    // 1. 신고 거절 처리 - 거절 사유와 처리날짜만 update해준다. 거절 사유를 안적으면 default 메세지를 입력해줌
    if (accusePostVo.getAccuseState().equals("신고거절")) {
      if (accusePostVo.getResultReason().length() < 1) {
        accusePostVo.setResultReason("신고를 거절했습니다");
      }
    } else {
      accusePostVo.setResultReason("신고를 승인했습니다");
    }


    // 2. 신고 승인 처리
    // - 신고 대상 회원의 신고 승인 횟수를 알아야 한다.
    int accuseCount = accusePostDao.findMemberAccuseListById(accusePostVo.getReportedId());

    // - 신고 대상 멤버의 상태 번호를 가져온다.
    String stateNumber = memberDao.findStateNumberById(accusePostVo.getReportedId());

    // - 신고 1~2회 - 신고를 기록만함 - 아무 과정이 필요없음
    if (accuseCount < 2) {
      Map<String, String> map = new HashMap<String, String>();
      map.put("stateNumber", stateNumber);
      map.put("state", "활동");
      memberDao.updateMemberState(map);
    }
    // - 신고 3회 - 회원 정지 처리
    else if (accuseCount == 2) {
      Map<String, String> map = new HashMap<String, String>();
      map.put("stateNumber", stateNumber);
      map.put("state", "정지");
      memberDao.updateMemberState(map);
    }
    // - 신고 5회 - 회원 탈퇴 처리
    else if (accuseCount == 4) {
      Map<String, String> map = new HashMap<String, String>();
      map.put("stateNumber", stateNumber);
      map.put("state", "탈퇴");
      memberDao.updateMemberState(map);
    }

    // 3. 신고 내역 처리
    accusePostDao.updateAccuseStateInfo(accusePostVo);
  }

}
