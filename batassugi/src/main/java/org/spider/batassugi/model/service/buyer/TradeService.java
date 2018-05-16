package org.spider.batassugi.model.service.buyer;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.TradePostDao;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

/**
 * 구매자가 거래 게시판에 게시글을 관리(작성, 수정, 삭제, 검색) 할 수 있는 서비스 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeService.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR            NOTE
 * -----------  -------------     --------------------------------
 * 2018. 5. 14. "SM HyeonGil Kim" 최초작성
 * 2018. 5. 14. "SM HyeonGil Kim" getTradePostList,getTotalTradePostCount, findTradePostDetailByNo추가
 * 2018. 5. 15. "SM HyeonGil Kim" deleteTradePostByNo 추가
 * 2018. 5. 16. "SM HyeonGil Kim" updateTradePost 추가
 *      </pre>
 */
@Service
public class TradeService implements TradeServiceIf {

  @Resource
  private TradePostDao tradePostDao;

  /**
   * 거래 게시판 목록 출력 후 페이징 처리 메서드.
   * 
   * @author "SM HyeonGil Kim".
   * @param pageNum 페이징 번호.
   * @return new TradePostListVo(pb, tradePostDao.getTradePostList(pb)).
   */

  @Override
  public TradePostListVo getTradePostList(String pageNum) {
    int totalPostCount = tradePostDao.getTotalTradePostCount();
    PagingBean pb = null;
    if (pageNum == null) {
      pb = new PagingBean(totalPostCount);
    } else {
      pb = new PagingBean(Integer.parseInt(pageNum), totalPostCount);
    }
    return new TradePostListVo(pb, tradePostDao.getTradePostList(pb));
  }

  /**
   * 거래게시판 글 상세보기 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param no 거래 게시판 글 번호.
   * @return tradePostDao.findTradePostListByNo(no)
   */
  @Override
  public TradePostVo findTradePostDetailByNo(int no) {
    return tradePostDao.findTradePostDetailByNo(no);
  }
  
  /**
   * 거래 게시판 글 삭제 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param no 거래 게시판 글 번호.
   */
  @Override
  public void deleteTradePostByNo(int no) {
    tradePostDao.deleteTradePostByNo(no);
  }

  /**
   * 거래 게시판 자신이 쓴 글 수정 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 수정 정보 vo.
   * @throws IOException 
   * @throws Exception 
   */
  @Override
  public void updateTradePost(TradePostVo tvo) throws Exception, IOException {
    MultipartFile multifile = tvo.getFile();
    
    String filename = multifile.getOriginalFilename();
    String fileSavePath =
        "C:\\Users\\HyunGil\\git\\batassugi\\batassugi\\src\\"
        + "main\\webapp\\resources\\img\\trade_img\\";
    
    UUID uu = UUID.randomUUID();
    
    File f = new File(fileSavePath + uu + "_" + filename);
    multifile.transferTo(f);
    String path = f.getName();
    
    tvo.setTradePhoto(path);
    
    tradePostDao.updateTradePost(tvo);
  }

  @Override
  public void createTradePost(TradePostVo tvo) throws Exception, IOException {
    
    MultipartFile multifile = tvo.getFile();
    
    String filename = multifile.getOriginalFilename();
    String fileSavePath =
        "C:\\Users\\HyunGil\\git\\batassugi\\batassugi\\src\\"
        + "main\\webapp\\resources\\img\\trade_img\\";
    
    UUID uu = UUID.randomUUID();
    
    File f = new File(fileSavePath + uu + "_" + filename);
    multifile.transferTo(f);
    String path = f.getName();
    
    tvo.setTradePhoto(path);
    
    tradePostDao.createTradePost(tvo);
  }
}
