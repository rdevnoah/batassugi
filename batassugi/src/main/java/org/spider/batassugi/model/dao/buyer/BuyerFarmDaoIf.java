/**
 * 
 */
package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentVo;


/**
 * 반드시 마침표를 찍습니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : BuyerFarmDaoIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "SL SangUk Lee"    최초작성
 * </pre>
 */
public interface BuyerFarmDaoIf {

  public List<RentVo> findRentFarmInfoById(String id);

}
