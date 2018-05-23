package org.spider.batassugi.model.service.common;

import java.util.List;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.MessageVo;
import org.springframework.ui.Model;


public interface CommonServiceIf {
  /**
   * 농작물 사전 클릭시, 작물 리스트를 불러오기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @return
   */
  public List<CropsInfoVo> getCropsIconList();

  /**
   * 농작물 사전에서 아이콘 클릭시, 농작물의 상세정보 DB를 가져오기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param cropsNo 농작물 사전에서 아이콘 클릭 시 전달받은 농작물 번호.
   * @return
   */
  public CropsInfoVo getCropsDetail(String cropsNo);

  /**
   * 쪽지를 등록함.
   * 
   * @author "PL_Seonhwa"
   * @param mgVo
   */
  public void registerMessage(MessageVo mgVo);

  /**
   * 보낸편지함 리스트 가져오기(내게쓴거 제외).
   * 
   * @author "PL_Seonhwa"
   * @param id
   * @return
   */
  public List<MessageVo> findmyMassageListById(String id);

  /**
   * 보낸편지함 디테일 클릭시 내용 가져오기.
   * 
   * @author "PL_Seonhwa"
   * @param messageNo
   * @return
   */
  public MessageVo finddetailsendBoxByNo(String messageNo);

  /**
   * 보낸 메세지 삭제.
   * 
   * @author "PL_Seonhwa"
   * @param messageNo
   */
  public void deleteMessageProByNo(String messageNo);
}
