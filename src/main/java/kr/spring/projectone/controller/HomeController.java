package kr.spring.projectone.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.projectone.service.UserService;
import kr.spring.projectone.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private UserService userService;
	
	
	
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
			mv.setViewName("/main/home");
		} else {
			mv.setViewName("redirect:/signup");	
		}
		
		return mv;
	}
	
	// 로그인 (POST 추가 예정)
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
		} else {
			mv.addObject("user", user);
		}
		
		
		
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

	// about us 접속
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public ModelAndView aboutUsGet(ModelAndView mv) {
		mv.setViewName("/extraPage/aboutus");
		
		return mv;
	}
	
	
	// 크리에이터 기본 옵션 구현
	@RequestMapping(value = "/creator", method = RequestMethod.GET)
	public ModelAndView creatorGet(ModelAndView mv) {
		mv.setViewName("/creator/creatorStatus");
		
		return mv;
	}
	
}
