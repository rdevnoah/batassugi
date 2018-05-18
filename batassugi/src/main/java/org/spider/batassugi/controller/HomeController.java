package org.spider.batassugi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.spider.batassugi.model.exception.LoginException;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 클래스 설명 : 공통내용을 담을 Controller입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : HomeController.java
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
 *      </pre>
 */
@Controller
public class HomeController {
  @Resource
  private MemberServiceIf memberService;

  /**
   * 기본 페이지로 이동.
   * 
   * @author "Team Spider"
   * @return String /로 접속시 home.tiles로 이동합니다.
   */
  @RequestMapping("/")
  public String home() {
    return "home.tiles";
  }

  /**
   * 디렉토리/페이지가 별도의 매핑이 없으면 같은이름에 tiles로 보냄.
   * 
   * @author "PL_Seonhwa"
   * @param dirName 해당 페이지가 존재하는 디렉토리.
   * @param viewName 이동하려는 페이지.
   * @return
   */
  @RequestMapping("{dirName}/{viewName}")
  public String showView(@PathVariable String dirName, @PathVariable String viewName) {
     System.out.println("여기들어왔다.");
    return dirName + "/" + viewName + ".tiles";
  }

  /**
   * 로그인을 위한 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param request 세션 설정을 위한 파라미터.
   * @param vo 아이디 패스워드.
   * @return
   */
  @RequestMapping("login")
  public String login(HttpServletRequest request, Model model, MemberVo vo) {
    try {
      HttpSession session = request.getSession();
      MemberVo mvo = memberService.login(vo);
      session.setAttribute("mvo", mvo);
      return "redirect:/";
    } catch (LoginException e) {
      model.addAttribute("message", e.getMessage());
      return "member/login_fail";
    }
  }
  
  /**
   * 로그아웃을 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param request 세션 설정을 위한 파라미터.
   * @return
   */
  @RequestMapping("logout")
  public String logout(HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    if (session != null) {
      session.invalidate();
    }
    return "redirect:/";
  }

}
