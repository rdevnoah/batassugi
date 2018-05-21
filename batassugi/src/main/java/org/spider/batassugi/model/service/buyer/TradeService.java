package org.spider.batassugi.model.service.buyer;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.TradePostCommentDaoIf;
import org.spider.batassugi.model.dao.buyer.TradePostDaoIf;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
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
 * 2018. 5. 14. "SM HyeonGil Kim" findTradePostList, 
 *                                                getTotalTradePostCount, findTradePostDetailByNo추가
 * 2018. 5. 15. "SM HyeonGil Kim" deleteTradePostByNo 추가
 * 2018. 5. 16. "SM HyeonGil Kim" updateTradePost, createTradePost 추가
 *      </pre>
 */
@Service
public class TradeService implements TradeServiceIf {

  @Resource
  private TradePostDaoIf tradePostDao;
  @Resource
  private TradePostCommentDaoIf tradePostCommentDao;

  @Override
  public TradePostListVo findTradePostList(String pageNum) {
    int totalPostCount = tradePostDao.getTotalTradePostCount();
    BuyerPagingBean pb = null;
    if (pageNum == null) {
      pb = new BuyerPagingBean(totalPostCount);
    } else {
      pb = new BuyerPagingBean(Integer.parseInt(pageNum), totalPostCount);
    }
    return new TradePostListVo(pb, tradePostDao.findTradePostList(pb));
  }

  @Override
  public TradePostVo findTradePostDetailByNo(int no) {
    return tradePostDao.findTradePostDetailByNo(no);
  }
  
  @Override
  public void deleteTradePostByNo(int no) {
    tradePostCommentDao.deleteReplyByTradNo(no);
    tradePostDao.deleteTradePostByNo(no);
  }

  @Override
  public void updateTradePost(TradePostVo tvo) throws Exception, IOException {
    MultipartFile multifile = tvo.getFile();
    
    String filename = multifile.getOriginalFilename();
    String fileSavePath =
        "C:\\Users\\charm\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\"
        + "img\\trade_img\\";
    
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
        "C:\\Users\\charm\\git\\batassugi\\batassugi\\src\\main\\webapp\\resources\\"
        + "img\\trade_img\\";
    
    UUID uu = UUID.randomUUID();
    
    File f = new File(fileSavePath + uu + "_" + filename);
    multifile.transferTo(f);
    String path = f.getName();
    
    tvo.setTradePhoto(path);
    
    tradePostDao.createTradePost(tvo);
  }

  @Override
  public void updateHitsTradePost(TradePostVo tvo) {
    tradePostDao.updateHitsTradePost(tvo);
  }
}
