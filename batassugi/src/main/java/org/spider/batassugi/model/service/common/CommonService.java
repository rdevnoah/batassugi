package org.spider.batassugi.model.service.common;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.common.CropsDaoIf;
import org.spider.batassugi.model.dao.common.MessageDaoIf;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.MessageVo;
import org.springframework.stereotype.Service;

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
  @Resource
  private MessageDaoIf messageDao;
  
  
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

  @Override
  public void registerMessage(MessageVo mgVo) {
    messageDao.registerMessage(mgVo);
  }

  @Override
  public List<MessageVo> findmyMassageListById(String id) {
    return messageDao.findmyMassageListById(id);
  }

  @Override
  public MessageVo finddetailsendBoxByNo(String messageNo) {
    return messageDao.finddetailsendBoxByNo(messageNo);
  }

  @Override
  public void deleteMessageProByNo(String messageNo) {
    messageDao.deleteMessageProByNo(messageNo);
  }
  
}
