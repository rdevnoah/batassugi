package org.spider.batassugi.model.service.common;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.spider.batassugi.model.dao.common.CropsDaoIf;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;

/**
 * 공통영역에서 사용하는 서비스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.service.common
 * @filename : CommonService.java
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
 * 2018. 5. 16.  "DL KimJieun"    농작물 사전에 작물을 등록하기 위한 메소드 추가
 *      </pre>
 */
@Service
public class CommonService implements CommonServiceIf {
  @Resource
  private CropsDaoIf cropsDao;
  
  @Override
  public List<CropsInfoVo> getCropsIconList() {
    List<CropsInfoVo> list = cropsDao.getCropsIconList();
    return list;
  }

  @Override
  public CropsInfoVo getCropsDetail(String cropsNo) {
    CropsInfoVo cropsInfoVo = cropsDao.getCropsDetail(cropsNo);
    return cropsInfoVo;
  }
  
}
