package org.spider.batassugi.model.service.common;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.common.MemberDaoIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 * 공통에서 회원부분을 처리하는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.service.common
 * @filename : MembeerServiceImpl.java
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
 * 2018. 5. 15.  "PL_Seonhwa"     회원등록을 위해 registerImg(회원프로필사진 등록), register 메소드 등록
 *      </pre>
 */
@Service
public class MemberService implements MemberServiceIf {

  @Resource
  private MemberDaoIf memberDao;

  @Override
  public MemberVo login(MemberVo vo) {
    return memberDao.login(vo);
  }

  @Override
  public String registerImg(MemberInfoVo vo) throws Exception, IOException {
    // MemberInfoVo의 파일을 multipartfile 형태로 저장
    MultipartFile multifile = vo.getFile();

    // 파일이름을 변형해서 저장하기 위한 작업
    // 원본의 이름을 가져옴
    String filename = multifile.getOriginalFilename();

    // 저장할 위치를 지정
    String fileSavePath =
        "C:\\Users\\User\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\img\\profile_img\\";

    // 이름에 현재 날짜를 붙이자
    String now = new SimpleDateFormat("yyyyMMddHmsS").format(new Date());

    // 새로운 이름으로 파일저장
    File f = new File(fileSavePath + now + "_" + filename);

    // 저장된 경로에 파일 생성
    multifile.transferTo(f);
    return f.getName();
  }

  @Override
  @Transactional
  public void register(MemberInfoVo vo) {
    memberDao.registerBasic(vo);
    memberDao.registerExtend(vo);
  }



}
