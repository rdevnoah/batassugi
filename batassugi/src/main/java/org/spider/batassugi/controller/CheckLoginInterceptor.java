package org.spider.batassugi.controller;


/*
 * Spring Handler Interceptor : DispatcherServlet이 해당 컨트롤러를 호출하기 전,후에 요청과 응답을 제어하는 역할을 한다.
 * 
 * 컨트롤러 실행전 preHandle(request,response,handler) 컨트롤러 실행후 postHandle(request,response,handler) 응답완료
 * afterCompletion(request,response,handler) Spring에서 제공하는 HandlerInterceptorAdapter 를 상속받아 위와 같은
 * 메서드를 오버라이딩해서 사용한다
 * 
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 클래스 설명 : 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : CheckLoginInterceptor.java
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
 * 
 *      </pre>
 */
public class CheckLoginInterceptor extends HandlerInterceptorAdapter {

  /**
   * 메소드 설명 : 로그인 체크가 필요한 메소드는 로그인이 되어있는지 세션을 먼저 체크후 실행.
   */
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
      throws Exception {
    HttpSession session = request.getSession(false);
    MemberInfoVo mvo=(MemberInfoVo)session.getAttribute("mvo");
    if (session != null && mvo.getMemberVo().getmemberLevel().equals("관리자")) {
      return true;
    } else {
      response.sendRedirect(request.getContextPath()+"/home/nosession");
      return false;
    }
  }
}
