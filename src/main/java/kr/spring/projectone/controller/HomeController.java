package kr.spring.projectone.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.projectone.service.PaymentService;
import kr.spring.projectone.service.UserService;
import kr.spring.projectone.service.VipService;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;
import kr.spring.projectone.vo.UserVo;
import kr.spring.projectone.vo.VipCodeListVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private UserService userService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private VipService vipService;
	
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home(ModelAndView mv){
		mv.setViewName("/main/home");
        
        return mv;
    }
	

	// 회원가입부분 
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv) {
		
		mv.setViewName("/member/signup");
		
		
		return mv;
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv, UserVo user) {
		
		if (userService.signup(user)) {
			mv.setViewName("redirect:/");
		} else {
			mv.setViewName("redirect:/signup");	
		}
		
		return mv;
	}
	
	// 로그인 
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginGet(ModelAndView mv) {
		mv.setViewName("/member/login");
		
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(ModelAndView mv, UserVo detectUser) {
		
		UserVo user = userService.isUser(detectUser);
		mv.addObject("id", detectUser.getSt_id());
		if (user == null) {
			mv.addObject("isLogin", false);
			mv.setViewName("redirect:/login");
		} else {
			mv.addObject("user", user);
			mv.setViewName("redirect:/");
		}
		
		return mv;
	}
	
	// 아이디 저장
	@RequestMapping(value = "/idCheck")
	@ResponseBody
	public Map<Object, Object> idCheck(@RequestBody String st_id){
		 Map<Object, Object> map = new HashMap<Object, Object>();
		 map.put("check", userService.getUser(st_id) == null);
		 
		 return map;
	}
	
	
	//로그아웃
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logoutGet(ModelAndView mv, HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		mv.setViewName("redirect:/");
	
		return mv;
	}
	
	// VIP 클래스 접속
	@RequestMapping(value = "/vipClass", method = RequestMethod.GET)
	public ModelAndView vipGet(ModelAndView mv) {
		mv.setViewName("/vip/first");
		
		return mv;
	}
	
	@RequestMapping(value = "/vipClass/plan", method = RequestMethod.GET)
	public ModelAndView vipPlanGet(ModelAndView mv) {
		mv.setViewName("/vip/planExplanation");
		
		return mv;
	}
	
	// VIP플랜 신청
	

	// VIP플랜 회원 확인

	@RequestMapping(value = "/vipClass/subscription", method = RequestMethod.GET)
	public ModelAndView vipPlanSignUpGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, String st_id) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter printWriter = response.getWriter();
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		
		if (user == null) {
			mv.setViewName("redirect:/login");
		}
		if (user != null) {
			
			 VipCodeListVo vipCode  = vipService.checkVip(st_id);
			 
			 if (vipCode != null) {
				 
				printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('이미 플랜에 가입하셨습니다.'); history.back(); </script>");
				printWriter.flush();
				printWriter.close();
				 
			 }
			 
			if (vipCode == null) {
				
				PaymentVo paymentInfo = paymentService.getPaymentInfo(user.getSt_id());
				
				if (paymentInfo == null) { // 그러니까 결제한 적이 없으면 그냥 패스
					
				}
				if (paymentInfo != null){ // 결제 내역이 있으면 Attribute를 불러서 정보 불러옴
					
					mv.addObject("paymentInfo", paymentInfo);
					
				}
				mv.setViewName("/vip/signPlan");
			}
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/vipClass/subscription", method = RequestMethod.POST)
	public ModelAndView vipPlanSignUpPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, VipCodeListVo vipCodeList, PurchaseHistoryVo purchaseInfo) throws IOException {
	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter printWriter = response.getWriter();
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		
		if (user == null) {
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); location.href=\"login\"; </script>");
			printWriter.flush();
			printWriter.close();
			
		}
		if (user != null) {
			
			vipService.insertVipCode(user.getSt_id());
			
			
			
		}
		
		
		
		return mv;
	}

	// about us 접속
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView aboutUsGet(ModelAndView mv) {
		mv.setViewName("/extraPage/aboutus");
		
		return mv;
	}
	
	
	
	
}
