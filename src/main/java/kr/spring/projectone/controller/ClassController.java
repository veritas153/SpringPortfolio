package kr.spring.projectone.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.spring.projectone.service.ClassService;
import kr.spring.projectone.service.UserService;
import kr.spring.projectone.utils.UploadFileUtils;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ClassController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	
	@Autowired
	private UserService userService;
	private ClassService classService;
	
	private String uploadPath = "D:\\jk\\git\\포트폴리오전용\\SpringPortfolio\\src\\main\\webapp\\resources\\uploadedImage";
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/class/all", method = RequestMethod.GET)
    public ModelAndView allClassGet(ModelAndView mv){
        mv.setViewName("/class/classList");
         
        return mv;
    }

	@RequestMapping (value = "/class/programming/test", method = RequestMethod.GET)
	public ModelAndView testGet(ModelAndView mv) {
		mv.setViewName("/class/classInfo");
		
		return mv;
	}
	
	// 크리에이터 기본 옵션 구현
	@RequestMapping(value = "/creator", method = RequestMethod.GET)
	public ModelAndView creatorGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) {
			mv.setViewName("/creator/creatorCenter/creatorStatus");	
		} 
		
		if (user == null || user.getSt_value().equals("STUDENT")) {
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
		
		}
		
	
		
		return mv;
	}
	
	
	
	// 크리에이터 신청
	
	@RequestMapping (value = "/creator/joinCreator", method = RequestMethod.GET)
	public ModelAndView joinCreatorGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 주의! response는 굉장히 민감해서 인코딩을 먼저 작성후 PrintWriter 실행 할 것!
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		if (user.getSt_value().equals("STUDENT") || user.getSt_value().equals("ADMIN")) {
			mv.setViewName("/creator/joinCreator");
		} else {

			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('이미 크리에이터시거나 허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
		}
		
		
		return mv;
	}
	
	@RequestMapping (value = "creator/joinCreator", method = RequestMethod.POST)
	public ModelAndView joinCreatorPost(ModelAndView mv, HttpServletRequest request, String st_creator) {
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		
		mv.setViewName("redirect:/");
		if (user != null) {
			user.setSt_creator(st_creator);
			user.setSt_value("CREATOR");
			userService.getInstructor(user);
			request.getSession().setAttribute("user", user); // 해당 세션이 있으면 덮어쓰기 처리됨
		}
		return mv;
	}
	
	// 클래스 제작 신청
	@RequestMapping (value = "creator/applyClass", method = RequestMethod.GET)
	public ModelAndView createClassGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) {
			mv.setViewName("/creator/creatorCenter/applyClassSteps/applyClass");	
		} 
		
		if (user == null || user.getSt_value().equals("STUDENT")) {
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
		
		}
		
		return mv;
	}
	
	@RequestMapping (value = "creator/applyClass", method = RequestMethod.POST)
	public ModelAndView createClassPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, TemporaryClassVo tempClass,  MultipartFile addClass_image, TemporaryMainChapterVo tempChapter, TemporarySubChapterVo tempSub) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) { // 예상치 못한 접근에 대비하기 위한 조건
			
			boolean ongoing = classService.submitClass(tempClass); // 이미지를 제외한 필수 정보 입력이 모두 완료된 상태이면 vo로 정보를 입력 한 다음 true로 돌려주는 함수
			
			if (ongoing == true) {
				
				// 여기서는 true로 반환된 경우에 한정되서 진행할 추가 작업.
				
				String file = UploadFileUtils.uploadFile(uploadPath, addClass_image.getOriginalFilename(), addClass_image.getBytes());
				tempClass.setAddClass_image(file);
				
				
			
				printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('개설 신청이 완료되었습니다. 1차 승인 여부는 7일 이내에 결정 되므로 기다려 주시면 감사하겠습니다.'); </script>");
				printWriter.flush();
				printWriter.close();
				
				request.getSession().setAttribute("user", user);
				mv.setViewName("redirect:/creator");
				
			}
			if (ongoing == false) {
				mv.setViewName("redirect:/creator/applyClass");
			}
			
		} 
		
		return mv;
	}
	
	
	
	
	// 집에서 작업할 백링크용!
	@RequestMapping(value = "/backLink", method = RequestMethod.GET)
	public ModelAndView backLinkGet(ModelAndView mv) {
		mv.setViewName("/creator/creatorCenter/applyClassSteps/applyClass");
		
		return mv;
	}
	
	
	
}
