package org.spider.batassugi.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class CommonAspect {
  private Log log = LogFactory.getLog(getClass());

  /**
   * 메소드 설명 : 여기에 설명을 쓰시오.
   * 
   * @author "Team Spider"
   * @param point
   * @return
   * @throws Throwable 허허.
   */
/*  @Around("execution()")
  public Object report(ProceedingJoinPoint point) throws Throwable {
    Object retValue = null;
    retValue = point.proceed();
    @SuppressWarnings("rawtypes")
    List list = (List) retValue;
    if (list.isEmpty() == false) {
      Object params[] = point.getArgs();
      String word = (String) params[0];
      String cn = point.getTarget().getClass().getName();
      String mn = point.getSignature().getName();
      log.info(cn + " " + mn + " " + params[0] + "검색어 등록");
    }
    return retValue;
  }*/
  
}
