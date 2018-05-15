package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.service.buyer.TradeService;
import org.spider.batassugi.model.service.buyer.TradeServiceIf;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 구매자가 처리한 서비스와 뷰와 연결해주는 Controller입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : BuyerController.java
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
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 * 2018. 5. 15.  "SL SangUk Lee"      거래게시판 매핑 메서드 추가
 * 2018. 5. 15.  "SL SangUk Lee"      게시글 목록, 페이징 완료
 *      </pre>
 */
@Controller
public class BuyerController {

  @Resource
  private TradeServiceIf tradeService;
  
  /**
   * 여기에 설명을 쓰시오.
   * @author "SL SangUk Lee"
   * @param model 뷰에 전달할 객체.
   * @param pageNum 페이징번호.
   * @return
   */
  @RequestMapping(value = "tradePost", method = {RequestMethod.GET,RequestMethod.POST})
  public String getTradePostList(Model model, String pageNum) {
    System.out.println(pageNum);
    TradePostListVo lvo = tradeService.getTradePostList(pageNum);
    model.addAttribute("tradePostListVo", lvo);
    return "buyer/Read_tradePost.tiles";
  }

  
}
