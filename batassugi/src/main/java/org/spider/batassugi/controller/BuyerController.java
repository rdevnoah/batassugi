package org.spider.batassugi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.spider.batassugi.model.service.buyer.TradeServiceIf;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
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
 * 2018. 5. 15.  "SM HyeonGil Kim"  게시글 상세 보기, 삭제 완료
 * 2018. 5. 16.  "SM HyeonGil Kim"  게시글 수정 완료
 *      </pre>
 */
@Controller
public class BuyerController {

  @Resource
  private TradeServiceIf tradeService;
  
  /**
   * 거래 게시판 목록 출력 메서드.
   * @author "SL SangUk Lee"
   * @param model 뷰에 전달할 객체.
   * @param pageNum 페이징번호.
   * @return buyer/Read_tradePost.tiles
   */
  @RequestMapping(value = "tradePost", method = {RequestMethod.GET,RequestMethod.POST})
  public String getTradePostList(Model model, String pageNum) {
    TradePostListVo lvo = tradeService.getTradePostList(pageNum);
    model.addAttribute("tradePostListVo", lvo);
    return "buyer/Read_tradePost.tiles";
  }
  
  /**
   * 거래 게시판 상세 보기 메서드.
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체. 
   * @param tradeNo 게시글 번호 .
   * @return buyer/Read_tradePostResult.tiles
   */
  @RequestMapping(value = "findTradePostListByNo", method = {RequestMethod.GET,RequestMethod.POST})
  public String findTradePostDetailByNo(Model model, String tradeNo) {
    TradePostVo tvo = tradeService.findTradePostDetailByNo(Integer.parseInt(tradeNo));
    model.addAttribute("tvo", tvo);
    return "buyer/Read_tradePostResult.tiles";
  } 
 
  /**
   * 거래 게시판 글 삭제 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param tradeNo 게시글 번호. 
   * @return buyer/Read_tradePost.tiles
   */
  @RequestMapping("/deleteBoard")
  public String deleteTradePostByNo(Model model, String tradeNo) {
    tradeService.deleteTradePostByNo(Integer.parseInt(tradeNo));
    TradePostListVo lvo = tradeService.getTradePostList("1");
    model.addAttribute("tradePostListVo", lvo);
    return "redirect:tradePost";
  }
  
  @RequestMapping("/updateBoardForm")
  public String updateTradePostForm(Model model, TradePostVo tvo) {
    findTradePostDetailByNo(model, Integer.toString(tvo.getTradeNo()));
    return "buyer/Update_tradePostForm.tiles";
  }
  
  /**
   * 거래 게시판 수정 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param tvo 수정한 거래 게시판 객체.
   * @return buyer/Read_tradePostResult.tiles
   */
  @RequestMapping("/updateBoard")
  public String updateTradePost(Model model, TradePostVo tvo) {
    findTradePostDetailByNo(model, Integer.toString(tvo.getTradeNo()));
    tradeService.updateTradePost(tvo);
    System.out.println(tvo);
    model.addAttribute("tvo", tvo);
    return "buyer/Read_tradePostResult.tiles";
  }
}
