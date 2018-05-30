package org.spider.batassugi.model.vo.buyer;

public class TradePostSearchVo extends TradePostListVo {
 
  private String searchType;
  private String keyword;
  
  public TradePostSearchVo() {
    super();
  }
  /**
   * 거래 게시판 검색 Vo..
   * 
   * @author "SM HyeonGil Kim"
   * @param searchType 검색 타입.
   * @param keyword 검색어.
   */
  
  public TradePostSearchVo(String searchType, String keyword) {
    super();
    this.searchType = searchType;
    this.keyword = keyword;
  }

  public String getSearchType() {
    return searchType;
  }
  
  public void setSearchType(String searchType) {
    this.searchType = searchType;
  }
  
  public String getKeyword() {
    return keyword;
  }
  
  public void setKeyword(String keyword) {
    this.keyword = keyword;
  }
  
  
}
