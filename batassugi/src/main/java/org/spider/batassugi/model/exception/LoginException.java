package org.spider.batassugi.model.exception;

/**
 * 로그인시 예외처리하여, 메세지를 출력하는 클래스.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.exception
 * @filename : LoginException.java
 * @author : "DL KimJieun"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15.  "DL KimJieun"    최초작성
 * </pre>
 */
public class LoginException extends Exception {
  private static final long serialVersionUID = 4299788644697990943L;
  
  public LoginException(String message) {
    super(message);
  }
}
