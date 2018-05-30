package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.buyer.BuyerFarmServiceIf;
import org.spider.batassugi.model.service.buyer.RentServiceIf;
import org.spider.batassugi.model.service.buyer.TradeCommentServiceIf;
import org.spider.batassugi.model.service.buyer.TradeServiceIf;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;
import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostSearchVo;
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
 * 2018. 5. 14. "SM HyeonGil Kim"   최초작성
 * 2018. 5. 16. "SL SangUk Lee"     getRentList 메서드 추가 
 * 2018. 5. 17. "SL SangUk Lee"     findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17. "SL SangUk Lee"     registerRentByRentVo 메서드 추가
 * 2018. 5. 14.  "SM HyeonGil Kim"  최초작성
 * 2018. 5. 15.  "SL SangUk Lee"    거래게시판 매핑 메서드 추가
 * 2018. 5. 15.  "SL SangUk Lee"    거래게시판 목록, 페이징 완료
 * 2018. 5. 15.  "SM HyeonGil Kim"  거래게시판 글 상세 보기, 삭제 완료
 * 2018. 5. 16.  "SM HyeonGil Kim"  거래게시판 글 쓰기, 수정 완료
 * 2018. 5. 17.  "SM HyeonGil Kim"  거래게시판 글 조회수 처리 완료
 * 2018. 5. 18.  "SM HyeonGil Kim"  거래게시판 댓글 리스트, 댓글 작성 완료
 * 2018. 5. 29.  "SM HyeonGil Kim"  거래게시판 검색 기능 완료
 * 2018. 5. 30.  "SM HyeonGil Kim"  거래게시판 댓글 삭제, 댓글 갯수 출력 기능 완료
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

  @Resource
  private BuyerFarmServiceIf buyerService;

  /**
   * 구매자가 대여한 농지정보 조회 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param model 구매자가 대여한 농지정보를 전달하기 위함.
   * @param request 세션의 아이디값을 가져오기 위함.
   * @return mapping url
   */
  @RequestMapping(value = {"buyer/buyer_Home","buyer/buyer_myinfoView"}, method = RequestMethod.GET)
  public String buyerHome(Model model, HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo"); // 세션에 있는 회원Vo객체를 얻어옴
    String id = mvo.getMemberVo().getId(); // vo객체 안에 있는 id값을 얻어옴
    
    List<RentVo> rentList = buyerService.findRentFarmInfoById(id); // 현재 농지대여중인 목록을 조회해서 list에 담음
    ApplySellerVo applySellerVo = buyerService.findApplySellerById(id); // 판매자신청 정보를 조회해서 vo에 담음
    
    model.addAttribute("rentList", rentList); // 뷰로 보내줄 모델 객체.
    session.setAttribute("applySellerVo", applySellerVo); // 뷰로 보내줄 세션 객체
    if (request.getServletPath().equals("/buyer_myinfoView")) {
      return "buyer/myinfoView.tiles";
    }
    return "buyer.tiles";
  }

  /**
   * 구매자가 신청한 농지대여를 취소하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청번호.
   * @param rttr 신청취소 완료시 성공메세지를 출력해주기 위함.
   * @return maaping Url
   */
  @RequestMapping(value = "buyer/deleteRentByRentNo", method = RequestMethod.POST)
  public String deleteRentByRentNo(RentVo rentVo, RedirectAttributes rttr) {
    buyerService.deleteRentByRentNo(rentVo);
    // 농지대여신청을 취소. 대여신청 정보를 삭제.
    
    rttr.addFlashAttribute("success", "신청취소되었습니다."); // 뷰에 성공메세지 출력을 위해 보내줄 객체 
    return "redirect:/buyer/buyer_Home";
  }

  /**
   * 구매자에서 판매자신청 하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param applySellerVo 판매자 신청 정보 Vo객체.
   * @param rttr 신청 후 성공 메세지를 출력해주기 위함.
   * @return
   */
  @RequestMapping(value = "buyer/registerApplySeller", method = RequestMethod.POST)
  public String rgisterApplySeller(@ModelAttribute ApplySellerVo applySellerVo,
      HttpServletRequest request, RedirectAttributes rttr) {
    HttpSession session = request.getSession(false);
    String path = "";
    try {
      path = buyerService.farmerDocument(applySellerVo); // 파일경로를 얻어옴.
    } catch (Exception e) {
      e.printStackTrace();
    }
    applySellerVo.setFarmerDocument(path); // vo객체에 파일경로를 set
    MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo"); // 세션에 있는 회원Vo객체를 얻어옴
    applySellerVo.setMemberVo(mvo.getMemberVo()); //판매자신청Vo 객체에회원Vo객체 set
    
    buyerService.registerApplySeller(applySellerVo); // 판매자신청 정보를 insert
    
    rttr.addFlashAttribute("success", "판매자신청이 완료되었습니다."); // 뷰에 성공메세지를 출력하기위해 보내줄 객체
    return "redirect:/buyer/buyer_Home";
  }



  /**
   * 대여신청 게시판뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return Mapping Url
   */
  @RequestMapping(value = "common/getRentList", method = { RequestMethod.POST, RequestMethod.GET })
  public String getRentList(HttpServletRequest request, Model model, String pageNum) {
    model.addAttribute("rentListVo", rentService.getRentList(pageNum)); // 뷰에 보내줄 대여신청 목록 리스트 
    return "rent/Read_RentList.tiles";
  }

  /**
   * 대여신청 상세정보뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param model 상세정보뷰에 뿌려질 데이터를 전달하기 위함.
   * @param recruitNo 대여신청번호.
   * @return Mapping Url
   */
  @RequestMapping(value = "common/findRentDetailByRecruitNo",
      method = { RequestMethod.POST, RequestMethod.GET })
  public String findRentDetailByRecruitNo(Model model, String recruitNo) {
    // 대여신청 번호로 대여신청 상세정보를 vo객체에 담음
    RecruitVo recruitVo = rentService.findRentDetailByRecruitNo(Integer.parseInt(recruitNo)); 
    model.addAttribute("recruitVo", recruitVo); // 뷰에 보내줄 대여신청Vo 객체
    return "rent/Read_RentDetail.tiles";
  }

  /**
   * 대여신청하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청에 필요한 정보.
   * @param rttr 대여신청 성공시 성공메세지 출력하기 위함.
   * @param request 세션에 저장된 로그인정보를 가져오기 위함.
   * @return mapping Url
   */
  @RequestMapping(value = "common/registerRentByRentVo", method = RequestMethod.POST)
  public String registerRentByRentVo(RentVo rentVo, RedirectAttributes rttr,
      HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    RentVo rvo = rentVo; // 뷰에서 대여신청 정보를 얻어와서 대여신청Vo객체에 담음
    MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo"); // 세션에 있는 회원Vo객체를 얻어옴
    rvo.setId(mvo.getMemberVo().getId()); // 대여신청Vo객체에 회원Vo객체를 set
    
    rentService.registerRentByRentVo(rentVo); //대여신청Vo객체를 insert
    
    rttr.addFlashAttribute("success", "대여신청이 완료되었습니다."); // 뷰에 성공메세지를 출력하기위해 보내줄 객체
    return "redirect:getRentList";
  }

  /**
   * 거래 게시판 목록 출력 및 검색결과 출력 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param pageNum 페이징번호.
   * @param request 경로 확인.
   * @param tps 검색결과.
   * @return trade/Read_tradePost.tiles
   */
  @RequestMapping(value = {"common/tradePost", "common/findtradePostBySearch"},
      method = {RequestMethod.GET, RequestMethod.POST})
  public String getTradePostList(Model model, String pageNum, HttpServletRequest request,
      TradePostSearchVo tps, RedirectAttributes rttr) {
    if (request.getServletPath().equals("/common/tradePost")) {
      TradePostListVo lvo = tradeService.findTradePostList(pageNum);
      model.addAttribute("tradePostListVo", lvo);
    } else {
      TradePostSearchVo lvo = tradeService.findtradePostBySearch(pageNum, tps);
      if (lvo.getTradepostList().isEmpty()) {
        rttr.addFlashAttribute("fail", "검색결과가 없습니다!");
        return "redirect:/common/tradePost";
      }
      model.addAttribute("tps", tps);
      model.addAttribute("tradePostListVo", lvo);
    }
    return "trade/Read_tradePost.tiles";
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
  @RequestMapping(value = "common/findTradePostListByNo",
      method = { RequestMethod.GET, RequestMethod.POST })
  public String findTradePostDetailByNo(Model model, String tradeNo, HttpServletRequest request,
      HttpServletResponse response) {
    Cookie[] cookies = request.getCookies();
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
   * @return trade/Read_tradePost.tiles
   */
  @RequestMapping("common/deleteBoard")
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
   * @return trade/Update_tradePostForm.tiles
   */
  @RequestMapping("common/updateBoardForm")
  public String updateTradePostForm(Model model, TradePostVo tvo) {
    noHitdetailViewCheck(tvo, model);
    return "trade/Update_tradePostForm.tiles";
  }

  /**
   * 거래 게시판 수정 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param model 뷰에 전달할 객체.
   * @param tvo 수정한 거래 게시판 객체.
   * @return trade/Read_tradePostDetail.tiles
   */
  @RequestMapping(method = RequestMethod.POST, value = "common/updateBoard")
  public String updateTradePost(Model model, @ModelAttribute TradePostVo tvo) {
    try {
      tradeService.updateTradePost(tvo);
    } catch (Exception e) {
      e.printStackTrace();
    }
    model.addAttribute("tvo", tvo);
    model.addAttribute("list", findReplyListByTradeNo(tvo.getTradeNo()));
    return "trade/Read_tradePostDetail.tiles";
  }

  /**
   * 게시판 글 쓰기 폼으로 이동하는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @return trade/Create_tradePost.tiles
   */
  @RequestMapping("common/createTradePostForm")
  public String createTradePostForm() {
    return "trade/Create_tradePost.tiles";
  }

  /**
   * 거래 게시판 글 쓰기 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @return redirect:tradePost
   */
  @RequestMapping(method = RequestMethod.POST, value = "common/createBoard")
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
   * @return trade/Read_tradePostDetail.tiles
   */
  @RequestMapping("common/hit")
  public String hitdetailViewCheck(TradePostVo tvo, Model model) {
    tradeService.updateHitsTradePost(tvo);
    model.addAttribute("tvo", tradeService.findTradePostDetailByNo(tvo.getTradeNo()));
    return "trade/Read_tradePostDetail.tiles";
  }

  /**
   * 거래 게시판 글 상세보기 후 조회수 증가하지 않는 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param tvo 거래글 상세보기를 위한 객체.
   * @param model 뷰에 전달할 객체.
   * @return trade/Read_tradePostDetail.tiles
   */
  @RequestMapping("common/nohit")
  public String noHitdetailViewCheck(TradePostVo tvo, Model model) {
    model.addAttribute("tvo", tradeService.findTradePostDetailByNo(tvo.getTradeNo()));
    return "trade/Read_tradePostDetail.tiles";
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
  public TradeCommentVo createReply(TradeCommentVo tcvo, HttpServletRequest request, Model model) {
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
  
  /**
  * 작성자가 댓글 삭제가능한 메서드.
   * 
   * @author "SM HyeonGil Kim"
   * @param replyNo 댓글 번호.
   * @param tradeNo 게시글 번호.
   * @param model 뷰에 전달할 객체.
   * @return trade/Read_tradePostDetail.tiles
   */
  @RequestMapping("common/deleteReply")
  public String deleteReplyByReplyNo(String replyNo, String tradeNo, Model model) {
    tradeCommentService.deleteReplyByReplyNo(Integer.parseInt(replyNo));
    TradePostVo tvo = tradeService.findTradePostDetailByNo(Integer.parseInt(tradeNo));
    model.addAttribute("tvo", tvo);
    return "trade/Read_tradePostDetail.tiles";
  }
}
