package org.spider.batassugi.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.common.CommonServiceIf;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.spider.batassugi.model.vo.common.MessageVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommonController {

  @Resource
  private CommonServiceIf commonService;

  @Resource
  private MemberServiceIf memberService;

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
   * @param model info 변수에 cropsInfoVo를 담아줌.
   * @param cropsNo 사용자가 클릭한 농작물아이콘의 농작물번호를 받아옴.
   * @return
   */
  @RequestMapping("home/crops_detail")
  @ResponseBody
  public Object getCropsDetail(String cropsNo) {
    return commonService.getCropsDetail(cropsNo);
  }

  /**
   * 닉네임 검색.
   * 
   * @author "PL_Seonhwa"
   * @param nickname
   * @return
   */
  @RequestMapping("{dirName}/findNicknameByWord")
  @ResponseBody
  public Object findNicknameByWord(String nickname,HttpServletRequest request) {
    // 회원 아이디 가져오기
    HttpSession session=request.getSession();
    MemberInfoVo mvo=(MemberInfoVo)session.getAttribute("mvo");
    String id=mvo.getMemberVo().getId();
    
    //닉네임과 회원아이디를 map에 넣기
    Map<String,String> map=new HashMap<String,String>();
    map.put("id", id);
    map.put("nickname", nickname);
    List<MemberVo> nicknameList = memberService.findNicknameByWord(map);

    return nicknameList;
  }

  @RequestMapping("{dirName}/sendBox")
  public String registerMessage(@PathVariable String dirName,HttpServletRequest request,Model model) {
    // 회원 아이디 가져오기
    HttpSession session=request.getSession();
    MemberInfoVo mvo=(MemberInfoVo)session.getAttribute("mvo");
    String id=mvo.getMemberVo().getId();
    
    //내가 보낸 쪽지 리스트 가져오기
    List<MessageVo> myMassageList = commonService.findmyMassageListById(id);
    model.addAttribute("myMassageList", myMassageList);
    return dirName+"/sendBox.tiles";
  }
  
  
  @RequestMapping("{dirName}/registerMessage")
  public String registerMessage(@PathVariable String dirName, MessageVo mgVo) {
    commonService.registerMessage(mgVo);
    return "redirect:/" + dirName + "/sendMessage_success";
  }
  
  @RequestMapping("{dirName}/detailsendBox")
  @ResponseBody
  public Object detailsendBox(String messageNo) {
    MessageVo msVo=commonService.finddetailsendBoxByNo(messageNo);
    return msVo;
  }
  
  @RequestMapping("{dirName}/deleteMessagePro")
  public String deleteMessagePro(String messageNo) {
    commonService.deleteMessageProByNo(messageNo);
    return "";
  }
  
}
