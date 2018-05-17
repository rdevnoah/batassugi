package org.spider.batassugi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 클래스 설명 : 관리자에서 사용하는 Controller입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : AdminController.java
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
 * 2018. 5. 17.  "PL_Seonhwa"     admin 마이페이지, 정보 수정 페이지 이동 메소드 추가
 *                                admin 페이지 이동 부분 Home에서 이동
 *      </pre>
 */

@Controller
public class AdminController {
  @Resource
  private MemberServiceIf memberService;

  /**
   * 마이페이지 - 관리자 페이지로 이동.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  @RequestMapping("admin_Home")
  public String adminHome() {
    return "admin.tiles";
  }

  /**
   * 회원정보 update.
   * 
   * @author "PL_Seonhwa"
   * @param uvo
   * @param request
   * @return
   */
  @RequestMapping("admin/updateMemberInfo")
  public String updateMemberInfo(@ModelAttribute("memberInfoVo") MemberInfoVo uvo,
      HttpServletRequest request) {
    MemberInfoVo memberInfoVo = memberService.updateMemberInfo(uvo);
    HttpSession session = request.getSession();
    memberInfoVo.setFile(null);
    session.setAttribute("mvo", memberInfoVo);
    return "redirect:updateMember_success";
  }

  /**
   * 관리자회원정보 수정.
   * 
   * @author "PL_Seonhwa"
   * @param model
   * @return
   */
  @RequestMapping("/admin/myinfoView")
  public String adminMyinfoView(Model model) {
    model.addAttribute("list", memberService.getAllCropsList());
    return "admin/myinfoView.tiles";
  }


  /**
   * admin view 처리.
   * 
   * @author "PL_Seonhwa"
   * @param viewName
   * @return
   */
  @RequestMapping("admin/{viewName}")
  public String updateMemberSuccess(@PathVariable String viewName) {
    return "admin/" + viewName + ".tiles";
  }

}
