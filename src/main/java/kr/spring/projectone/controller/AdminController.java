package kr.spring.projectone.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;

import kr.spring.projectone.service.ClassService;
import kr.spring.projectone.service.ServiceService;
import kr.spring.projectone.service.UserService;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.ServiceVo;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private UserService userService;
	@Autowired
	private ClassService classService;
	@Autowired
	private ServiceService serviceService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPageGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws IOException{
       
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		if (user != null && user.getSt_value().equals("ADMIN")) {
		
			ArrayList<TemporaryClassVo>tempClass;
			tempClass = classService.getTempClass();
			mv.addObject("tempClass", tempClass);
	         
			mv.setViewName("/admin/adminPage/adminPage");
		} 
		
		else {
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
		
		}
		
		
        return mv;
    }
	
	@RequestMapping(value = "/admin/announcement/list", method = RequestMethod.GET)
    public ModelAndView adminAnnouncementGet(ModelAndView mv, HttpServletRequest request){
	
		ArrayList<ServiceVo> adminAnnouncement = serviceService.getAdminAnnouncement();
		
		if (!(adminAnnouncement.isEmpty())) {
			mv.addObject("adminList", adminAnnouncement);
		}
		
		mv.setViewName("/admin/adminPage/adminAnnouncement");
	
		return mv;
	}
	
	@RequestMapping(value = "/admin/announcement/write", method = RequestMethod.GET)
    public ModelAndView adminAnnouncementWriteGet(ModelAndView mv, HttpServletRequest request){
	
		
		mv.setViewName("/admin/adminPage/adminTool/serviceWrite");
	
		return mv;
	}
	
	// 1차 심사 페이지
	
	
	@RequestMapping(value = "/admin/tempClass", method = RequestMethod.GET)
	public ModelAndView tempClassCheckGet(ModelAndView mv, String code) {
		
	
		// 밑에 있는 부분, 서비스에서 함수화 구현 예정
		
		TemporaryClassVo tempClass = null;
		
		if (code != null) {
			tempClass = classService.getTempClassCode(code);
			mv.addObject("tempClass", tempClass);
			
			if (tempClass != null) {
				ArrayList<TemporaryMainChapterVo>tempMain = classService.detectChapterCode(tempClass.getAddClass_code());
				mv.addObject("tempMain",tempMain);
				ArrayList<TemporarySubChapterVo>tempSubList = new ArrayList<TemporarySubChapterVo>();
				
				if (tempMain != null) {
					for(TemporaryMainChapterVo tmp: tempMain) {
						ArrayList<TemporarySubChapterVo>tempSub;
						tempSub = classService.getSubChapter(tmp.getConMainChapter_priNum());
						tempSubList.addAll(tempSub);
						
					}
					
					mv.addObject("tempSub", tempSubList);
				}
			}
		}
		
		
		mv.setViewName("/admin/adminPage/adminPreCheck");
	
		return mv;
	}
	
	@RequestMapping(value = "/admin/tempClass", method = RequestMethod.POST)
	public ModelAndView tempClassCheckPost(ModelAndView mv, String code, HttpServletRequest request, HttpServletResponse response, String addClass_adminComment2, char addClass_confirm2) throws IOException {
	
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		
		TemporaryClassVo tempClass = classService.getTempClassCode(code);
		String classCode = tempClass.getAddClass_code();
		
		
		boolean firstConfirmResult = classService.firstConfirm(addClass_adminComment2, addClass_confirm2, code);
		System.out.println(firstConfirmResult);
		
		if (firstConfirmResult == true) {
			
			request.getSession().getAttribute("tempClass");
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('정보 갱신이 완료 되었습니다.'); location.href='/projectone/admin'; </script>");
			printWriter.flush();
			printWriter.close();
			
		}
		if (firstConfirmResult == false) {
			
			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('크리에이터에게 전달사항을 작성하지 않으셨거나 150자를 초과하셨습니다.'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
			
			
		}
			
			
		return mv;
	}
	
	
	// 최종 컨펌 페이지
	
	@RequestMapping(value = "/admin/finalConfirm", method = RequestMethod.GET)
	public ModelAndView finalConfirmGet(ModelAndView mv, String code) {
	
		
		// 밑에 있는 부분, 서비스에서 함수화 구현 예정
		
		TemporaryClassVo tempClass = null;
		
		if (code != null) {
			tempClass = classService.getTempClassCode(code);
			mv.addObject("tempClass", tempClass);
			
			if (tempClass != null) {
				ArrayList<TemporaryMainChapterVo>tempMain = classService.detectChapterCode(tempClass.getAddClass_code());
				mv.addObject("tempMain",tempMain);
				ArrayList<TemporarySubChapterVo>tempSubList = new ArrayList<TemporarySubChapterVo>();
				
				if (tempMain != null) {
					for(TemporaryMainChapterVo tmp: tempMain) {
						ArrayList<TemporarySubChapterVo>tempSub;
						tempSub = classService.getSubChapter(tmp.getConMainChapter_priNum());
						tempSubList.addAll(tempSub);
						
					}
					
					mv.addObject("tempSub", tempSubList);
				}
			}
		}
		
		
		mv.setViewName("/admin/adminPage/adminFinalConfirm");
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/finalConfirm", method = RequestMethod.POST)
	public ModelAndView finalConfirmPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, TemporaryClassVo tempclass, String code, char addClass_finalSubmit2, String addClass_openDate2) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		
		TemporaryClassVo tempClass = classService.getTempClassCode(code);
		String classCode = tempClass.getAddClass_code();
		
		String startClass = classService.confirmClass(tempClass, code, addClass_finalSubmit2, addClass_openDate2);
		
		System.out.println(startClass);
		
		
		
		if (startClass != null) {
			classService.deteleTempClass(code);
			
			ArrayList<ClassVo> selectedClass = classService.getAllClass();
			mv.addObject("classList", selectedClass);
			


			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('클래스 개설이 완료되었습니다.'); location.href='/projectone/admin'; </script>");
			printWriter.flush();
			printWriter.close();
		

		}
		
		if (startClass == null) {

			printWriter.println("<script type=\"text/javascript\" charset=\"UTF-8\"> alert('크리에이터에게 전달사항을 작성하지 않으셨거나 150자를 초과하셨습니다.'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
	
		}
		
		return mv;
	}
	
	
	
}