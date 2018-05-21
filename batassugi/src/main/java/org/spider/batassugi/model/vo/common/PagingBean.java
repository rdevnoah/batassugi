package org.spider.batassugi.model.vo.common;

/**
 * 클래스 설명 : 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : PagingBean.java
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

public class PagingBean {
  private int nowPage = 1;
  private int postCountPerPage = 5;
  private int pageCountPerPageGroup = 4;
  private int totalPostCount;

  public PagingBean() {
    super();
  }

  /**
   * 메소드 설명 : 페이징Bean 입력받을 값을 처리.
   * 
   * @param nowPage 현재 페이지.
   * @param totalPostCount 전체 페이지.
   */
  public PagingBean(int nowPage, int totalPostCount) {
    super();
    this.nowPage = nowPage;
    this.totalPostCount = totalPostCount;
  }
  
  public PagingBean(int totalPostCount) {
    super();
    this.totalPostCount = totalPostCount;
  }

  public int getNowPage() {
    return nowPage;
  }

  public void setNowPage(int nowPage) {
    this.nowPage = nowPage;
  }

  public int getPostCountPerPage() {
    return postCountPerPage;
  }

  public void setPostCountPerPage(int postCountPerPage) {
    this.postCountPerPage = postCountPerPage;
  }

  public int getPageCountPerPageGroup() {
    return pageCountPerPageGroup;
  }

  public void setPageCountPerPageGroup(int pageCountPerPageGroup) {
    this.pageCountPerPageGroup = pageCountPerPageGroup;
  }

  public int getTotalPostCount() {
    return totalPostCount;
  }

  public void setTotalPostCount(int totalPostCount) {
    this.totalPostCount = totalPostCount;
  }

  public int getStartRowNumber() {
    int startRowNumber = ((nowPage - 1) * postCountPerPage) + 1;
    return startRowNumber;
  }

  /**
   * 메소드 설명 : 페이징 처리시 게시판에 들어갈 마지막 게시물 번호.
   * 
   * @author "Team Spider"
   * @return
   */
  public int getEndRowNumber() {
    int endRowNumber = nowPage * postCountPerPage;
    if (totalPostCount < endRowNumber) {
      endRowNumber = totalPostCount;
    }
    return endRowNumber;
  }


  /**
   * 메소드 설명 : .
   * 
   * @author "Team Spider"
   * @return
   */
  public int getTotalPage() {
    int totalPage;
    if (this.totalPostCount % this.postCountPerPage == 0) {
      totalPage = (totalPostCount / postCountPerPage);
    } else {
      totalPage = (totalPostCount / postCountPerPage) + 1;
    }
    return totalPage;
  }

  public int getTotalPageGroup() {
    int totalPageGroup;
    if (totalPostCount % (postCountPerPage * pageCountPerPageGroup) == 0)
      totalPageGroup = this.getTotalPage() / pageCountPerPageGroup;
    else
      totalPageGroup = (this.getTotalPage() / pageCountPerPageGroup) + 1;
    return totalPageGroup;
  }

  public int getNowPageGroup() {
    int nowPageGroup;
    if (nowPage % pageCountPerPageGroup == 0) {
      nowPageGroup = nowPage / pageCountPerPageGroup;
    } else {
      nowPageGroup = (nowPage / pageCountPerPageGroup) + 1;
    }
    return nowPageGroup;
  }

  public int getStartPageOfPageGroup() {
    int startPageGroup = ((this.getNowPageGroup() - 1) * pageCountPerPageGroup) + 1;
    return startPageGroup;
  }

  public int getEndPageOfPageGroup() {
    int endPageGroup = this.getNowPageGroup() * pageCountPerPageGroup;
    if (this.getTotalPage() < endPageGroup)
      endPageGroup = this.getTotalPage();
    return endPageGroup;
  }

  public boolean isPreviousPageGroup() {
    boolean flag = false;
    if (this.getNowPageGroup() > 1)
      flag = true;
    return flag;
  }

  /**
   * 메소드 설명 : 여기에 설명을 쓰시오.
   * 
   * @author "Team Spider"
   * @return
   */
  public boolean isNextPageGroup() {
    boolean flag = false;
    if (this.getNowPageGroup() < this.getTotalPageGroup()) {
      return true;
    }
    return flag;
  }

  @Override
  public String toString() {
    return "PagingBean [nowPage=" + nowPage + ", postCountPerPage=" + postCountPerPage
        + ", pageCountPerPageGroup=" + pageCountPerPageGroup + ", totalPostCount=" + totalPostCount
        + "]";
  }

}
