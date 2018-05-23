package org.spider.batassugi.model.dao.common;

import java.util.List;
import org.spider.batassugi.model.vo.common.MessageVo;

public interface MessageDaoIf {

  /**
   * 회원이 보낸 쪽지를 등록.
   * 
   * @author "PL_Seonhwa"
   * @param mgVo
   */
  public void registerMessage(MessageVo mgVo);

  /**
   * 회원이 보낸 쪽지 리스트 가져오기(내게쓴 편지 제외).
   * 
   * @author "PL_Seonhwa"
   * @param id
   * @return
   */
  public List<MessageVo> findmyMassageListById(String id);

  /**
   * 보낸쪽지 상세 페이지 정보 가져오기.
   * 
   * @author "PL_Seonhwa"
   * @param messageNo
   * @return
   */
  public MessageVo finddetailsendBoxByNo(String messageNo);

  /**
   * 보낸 쪽지 삭제.
   * 
   * @author "PL_Seonhwa"
   * @param messageNo
   */
  public void deleteMessageProByNo(String messageNo);

}
