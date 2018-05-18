package org.spider.batassugi.model.service.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.spider.batassugi.model.dao.admin.AccusePostDaoIf;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.stereotype.Service;
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
  AccusePostDaoIf accusePostDao;
  
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
	    String fileSavePath = "C:\\Users\\kosta\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\img\\accuse_img\\";
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
  
}
