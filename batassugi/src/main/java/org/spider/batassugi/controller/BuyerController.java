package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.buyer.RentServiceIf;
import org.spider.batassugi.model.service.buyer.TradeCommentServiceIf;
import org.spider.batassugi.model.service.buyer.TradeServiceIf;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
<<<<<<< HEAD
 * 2018. 5. 14. "SM HyeonGil Kim" 최초작성
 * 2018. 5. 16. "SL SangUk Lee"   getRentList 메서드 추가 
 * 2018. 5. 17. "SL SangUk Lee"   findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17. "SL SangUk Lee"   registerRentByRentVo 메서드 추가
=======
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 * 2018. 5. 15.  "SL SangUk Lee"      거래게시판 매핑 메서드 추가
 * 2018. 5. 15.  "SL SangUk Lee"      거래게시판 목록, 페이징 완료
 * 2018. 5. 15.  "SM HyeonGil Kim"  거래게시판 글 상세 보기, 삭제 완료
 * 2018. 5. 16.  "SM HyeonGil Kim"  거래게시판 글 쓰기, 수정 완료
 * 2018. 5. 17.  "SM HyeonGil Kim"  거래게시판 글 조회수 처리 완료
<<<<<<< HEAD
>>>>>>> refs/heads/buyer
=======
 * 2018. 5. 18.  "SM HyeonGil Kim"  거래게시판 댓글 리스트, 댓글 작성 완료
>>>>>>> refs/heads/buyer
 *      </pre>
 */
@Controller
public class BuyerController {

  @Resource
  private TradeServiceIf tradeService;
  @Resource
  private TradeCommentServiceIf tradeCommentService;
  
  @Resource
  private RecruitServiceIf recruitService;

  @Resource
  private RentServiceIf rentService;
  
  @RequestMapping(value = "buyer_Home", method = RequestMethod.GET)
  public String buyerHome() {
    return "buyer.tiles";
  }

  
  /**
   * 대여신청 게시판뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return MappingUrl
   */
  @RequestMapping(value = "getRentList", method = { RequestMethod.POST, RequestMethod.GET })
  public String getRentList(HttpServletRequest request, Model model, String pageNum) {
    HttpSession session = request.getSession(false);
    if (session == null) {
      return "redirect:/";
    }
    model.addAttribute("rentListVo", rentService.getRentList(pageNum));
    return "rent/Read_RentList.tiles";
  }

  /**
   * 대여신청 상세정보뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param model 상세정보뷰에 뿌려질 데이터를 전달하기 위함.
   * @param recruitNo 대여신청번호.
   * @return MappingUrl
   */
  @RequestMapping(value = "findRentDetailByRecruitNo",
      method = { RequestMethod.POST, RequestMethod.GET })
  public String findRentDetailByRecruitNo(Model model, String recruitNo,
      HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    if (session == null) {
      return "redirect:/";
    }
    RecruitVo recruitVo = rentService.findRentDetailByRecruitNo(Integer.parseInt(recruitNo));
    model.addAttribute("recruitVo", recruitVo);
    return "rent/Read_RentDetail.tiles";
  }

  /**
   * 대여신청하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청에 필요한 정보.
   * @param rttr 대여신청 성공시 성공메세지 출력하기 위함.
   * @param request 세션에 저장된 로그인정보를 가져오기 위함.
   * @return mappingUrl
   */
  @RequestMapping(value = "registerRentByRentVo", method = RequestMethod.POST)
  public String registerRentByRentVo(RentVo rentVo, RedirectAttributes rttr,
      HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    RentVo rvo = rentVo; 
    if (session == null || rvo == null) {
      return "redirect:/";
    }
    MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo");
    rvo.setId(mvo.getMemberVo().getId());
    rentService.registerRentByRentVo(rentVo);
    rttr.addFlashAttribute("success", "대여신청이 완료되었습니다.");
    return "redirect:getRentList";
  }
  
  /**
   * 거래 게시판 목록 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param model 뷰에 전달할 객체.
   * @param pageNum 페이징번호.
   * @return buyer/Read_tradePost.tiles
   */
  @RequestMapping(value = "tradePost", method = {RequestMethod.GET,RequestMethod.POST})
  public String getTradePostList(Model model, String pageNum) {
    TradePostListVo lvo = tradeService.findTradePostList(pageNum);
    model.addAttribute("tradePostListVo", lvo);
    return "buyer/Read_tradePost.tiles";
  }
  
  /**
   * 거래 게시판 상세 보기 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체. 
   * @param tradeNo 게시글 번호.
   * @param request 데이터 요청.
   * @param response 데이터 전송.
   * @return
   */
  @RequestMapping(value = "findTradePostListByNo", method = {RequestMethod.GET,RequestMethod.POST})
  public String findTradePostDetailByNo(Model model, String tradeNo, HttpServletRequest request,
      HttpServletResponse response) {
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("mvo") == null) {
      return "redirect:/";
    }
    Cookie[ ] cookies = request.getCookies();
    for (int i = 0; i < cookies.length; i++) {
      if (cookies[i].getName().equals("tradeHits")) {
        if (!(cookies[i].getValue().contains("!!" + tradeNo + "!!"))) {
          String vp = cookies[i].getValue();
          vp += tradeNo + "!!";
          cookies[i].setValue(vp);
          response.addCookie(cookies[i]);
          return "redirect:hit?tradeNo=" + tradeNo;
        } else {
          return "redirect:nohit?tradeNo=" + tradeNo;
        }
      }
    }
    return "error";
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
    TradePostListVo lvo = tradeService.findTradePostList("1");
    model.addAttribute("tradePostListVo", lvo);
    return "redirect:tradePost";
  }
  
  /**
   * 게시판 수정 폼으로 이동하는 메서드 .
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param tvo 현재 거래 게시판 정보 전달 객체.
   * @return buyer/Update_tradePostForm.tiles
   */
  @RequestMapping("/updateBoardForm")
  public String updateTradePostForm(Model model, TradePostVo tvo) {
    noHitdetailViewCheck(tvo, model);
    return "buyer/Update_tradePostForm.tiles";
  }
  
  /**
   * 거래 게시판 수정 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param tvo 수정한 거래 게시판 객체.
   * @return buyer/Read_tradePostDetail.tiles
   */
  @RequestMapping(method = RequestMethod.POST, value = "/updateBoard")
  public String updateTradePost(Model model, @ModelAttribute TradePostVo tvo) {
    try {
      tradeService.updateTradePost(tvo);
    } catch (Exception e) {
      e.printStackTrace();
    }
    model.addAttribute("tvo", tvo);
    model.addAttribute("list", findReplyListByTradeNo(tvo.getTradeNo()));
    return "buyer/Read_tradePostDetail.tiles";
  }
  
  /**
   * 게시판 글 쓰기 폼으로 이동하는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @return buyer/Create_tradePost.tiles
   */
  @RequestMapping("/createTradePostForm")
  public String createTradePostForm() {
    return "buyer/Create_tradePost.tiles";
  }
  
  /**
   * 거래 게시판 글 쓰기 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @return redirect:tradePost
   */
  @RequestMapping(method = RequestMethod.POST, value = "/createBoard")
  public String createTradePost(HttpServletRequest request, Model model,
      @ModelAttribute TradePostVo tvo) {
    
    HttpSession session = request.getSession(false);
    if (session != null) {
      MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo");
      if (mvo != null) {
        tvo.setMemberVo(mvo.getMemberVo());
      }
    }
    try {
      tradeService.createTradePost(tvo);
    } catch (Exception e) {
      e.printStackTrace();
    }
    TradePostListVo lvo = tradeService.findTradePostList("1");
    model.addAttribute("tradePostListVo", lvo);
    return "redirect:tradePost";
  }
  
  /**
   * 거래 게시판 글 상세보기 후 조회수 증가 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 거래글 상세보기를 위한 객체.
   * @param model 뷰에 전달할 객체.
   * @return buyer/Read_tradePostDetail.tiles
   */
  @RequestMapping("/hit")
  public String hitdetailViewCheck(TradePostVo tvo, Model model) {
    tradeService.updateHitsTradePost(tvo);
    model.addAttribute("tvo", tradeService.findTradePostDetailByNo(tvo.getTradeNo()));
    return "buyer/Read_tradePostDetail.tiles";
  }
  
  /**
   * 거래 게시판 글 상세보기 후 조회수 증가하지 않는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 거래글 상세보기를 위한 객체.
   * @param model 뷰에 전달할 객체.
   * @return buyer/Read_tradePostDetail.tiles
   */
  @RequestMapping("/nohit")
  public String noHitdetailViewCheck(TradePostVo tvo, Model model) {
    model.addAttribute("tvo", tradeService.findTradePostDetailByNo(tvo.getTradeNo()));
    return "buyer/Read_tradePostDetail.tiles";
  }
  
  /**
   * 댓글 출력 메서드.
   *
   * @author "SM HyeonGil Kim"
   * @param tradeNo 게시판 번호.
   * @return list
   */
  @RequestMapping("commentList")
  @ResponseBody
  public List<TradeCommentVo> findReplyListByTradeNo(int tradeNo) {
    List<TradeCommentVo> list = tradeCommentService.findReplyListByTradeNo(tradeNo);
    return list;
  }
  
  /**
   * 댓글 작성 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tcvo 댓글 정보.
   * @param request 데이터 요청.
   */
  @RequestMapping("/createReply")
  @ResponseBody
  public TradeCommentVo createReply(TradeCommentVo tcvo, HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    if (session != null) {
      MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo");
      if (mvo != null) {
        tcvo.setMemberVo(mvo.getMemberVo());
      }
    }
    tradeCommentService.createReply(tcvo);
    return tcvo;
  }
}
