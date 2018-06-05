package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.service.common.CommonServiceIf;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonController {

  @Resource
  private CommonServiceIf commonService;

  /**
   * 농작물 사전 클릭시 작물 리스트를 불러오는 컨트롤러.
   * 
   * @author "DL KimJieun"
   * @param model icon 변수에 list를 담아줌.
   * @return
   */
  @RequestMapping("home/crops_dictionary")
  public String getCropsIconList(Model model) {
    List<CropsInfoVo> list = commonService.getCropsIconList();
    model.addAttribute("icon", list);
    return "home/crops_dictionary.tiles";
  }

  /**
   * 농작물 사전에서 아이콘을 클릭 시, 농작물 상세정보를 불러오는 컨트롤러.
   * 
   * @author "DL KimJieun"
   * @param cropsNo 사용자가 클릭한 농작물아이콘의 농작물번호를 받아옴.
   * @return
   */
  @RequestMapping("home/crops_detail")
  @ResponseBody
  public Object getCropsDetail(String cropsNo) {
    return commonService.getCropsDetail(cropsNo);
  }

}
