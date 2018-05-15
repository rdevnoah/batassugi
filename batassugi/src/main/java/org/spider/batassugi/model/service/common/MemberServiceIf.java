package org.spider.batassugi.model.service.common;

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
  MemberVo login(MemberVo vo) throws LoginException;
}
