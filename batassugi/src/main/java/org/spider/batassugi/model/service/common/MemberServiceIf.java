package org.spider.batassugi.model.service.common;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.exception.LoginException;
import org.spider.batassugi.model.vo.common.MemberVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.common
 * @filename : MemberServiceIF.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15.  "PL_Seonhwa"    최초작성
 *      </pre>
 */
public interface MemberServiceIf {

  public String registerImg(MemberInfoVo vo) throws Exception, IOException;

  public void register(MemberInfoVo vo);

  MemberVo login(MemberVo vo) throws LoginException;

}
