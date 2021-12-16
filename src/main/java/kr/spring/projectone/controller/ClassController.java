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
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import kr.spring.projectone.service.ClassService;
import kr.spring.projectone.service.PaymentService;
import kr.spring.projectone.service.ServiceService;
import kr.spring.projectone.service.UserService;
import kr.spring.projectone.service.VipService;
import kr.spring.projectone.utils.UploadFileUtils;
import kr.spring.projectone.vo.ClassVo;
import kr.spring.projectone.vo.CurrentClassVo;
import kr.spring.projectone.vo.MainChapterVo;
import kr.spring.projectone.vo.PaymentVo;
import kr.spring.projectone.vo.PurchaseHistoryVo;
import kr.spring.projectone.vo.ServiceVo;
import kr.spring.projectone.vo.SubChapterVo;
import kr.spring.projectone.vo.TemporaryClassVo;
import kr.spring.projectone.vo.TemporaryMainChapterVo;
import kr.spring.projectone.vo.TemporarySubChapterVo;
import kr.spring.projectone.vo.UserVo;
import kr.spring.projectone.vo.VipCodeListVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ClassController {

	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);

	@Autowired
	private UserService userService;
	@Autowired
	private ClassService classService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private VipService vipService;
	@Autowired
	private ServiceService serviceService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/class/all", method = RequestMethod.GET)
	public ModelAndView allClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getCurrentClass();

		mv.addObject("classList", classList);

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/arts", method = RequestMethod.GET)
	public ModelAndView artsClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getArtsCurrentClass();
		
		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}
		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/illustration", method = RequestMethod.GET)
	public ModelAndView illustrationClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getIllustrationCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/craft", method = RequestMethod.GET)
	public ModelAndView craftClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getCraftCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/sport", method = RequestMethod.GET)
	public ModelAndView sportClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getSportCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/humanities", method = RequestMethod.GET)
	public ModelAndView humanitiesClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getHumanitiesCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/music", method = RequestMethod.GET)
	public ModelAndView musicClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getMusicCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/programming", method = RequestMethod.GET)
	public ModelAndView programmingClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getProgrammingCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	
	@RequestMapping(value = "/class/film", method = RequestMethod.GET)
	public ModelAndView filmClassGet(ModelAndView mv, HttpServletRequest request) {

		ArrayList<ClassVo> classList = classService.getFilmCurrentClass();

		if (!classList.isEmpty()) {
			mv.addObject("classList", classList);
		}

		mv.setViewName("/class/classList");

		return mv;
	}
	

	@RequestMapping(value = "/class", method = RequestMethod.GET)
	public ModelAndView classGet(ModelAndView mv, HttpServletRequest request, String code) {

		UserVo user = (UserVo) request.getSession().getAttribute("user");

		if (user != null) { // vip플랜 사용하거나 해당 클래스 결제 확인. 만약 둘 중 하나를 만족하면 결제 대신 클래스 수강하는 처리

			ArrayList<CurrentClassVo> purchaseHistory = classService.searchPurchaseHistory(user.getSt_id(), code);

			if (!purchaseHistory.isEmpty()) { // 배열로 지정했는데 없으면 null 이 아닌 []로 뜨기 때문에 == null 이 아니라 isEmpty()를 써야 올바르게 작동 
				System.out.println(purchaseHistory);
				mv.addObject("classCode", purchaseHistory);

			}

			VipCodeListVo vipCode = vipService.checkVip(user.getSt_id());
			System.out.println(vipCode);

			if (vipCode != null) {
				mv.addObject("vipCode", vipCode);
			}

		}

		ClassVo classList = classService.getSelectedClass(code);
		if (classList != null) {

			mv.addObject("classList", classList);

			ArrayList<MainChapterVo> mainChapter = classService.getMainChapters(code);

			if (!mainChapter.isEmpty()) {

				mv.addObject("mainChapter", mainChapter);

				ArrayList<SubChapterVo> subChapter = new ArrayList<SubChapterVo>();
				
				for (MainChapterVo main : mainChapter) {
					ArrayList<SubChapterVo> subTmp;
					subTmp = classService.findSubChapter(main.getMainChapter_priNum());
					subChapter.addAll(subTmp);

				}

				mv.addObject("subChapter", subChapter);

			}

		}

		mv.setViewName("/class/classInfo");

		return mv;
	}

	// 클래스 결제 (작업 예정: 1. 이미 결제했는데 결제 들어가는 걸 막아주는 구문 )

	@RequestMapping(value = "/applyClass", method = RequestMethod.GET)
	public ModelAndView applyClassGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response,
			String code) throws IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter printWriter = response.getWriter();

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		ClassVo classList = classService.getSelectedClass(code);
		mv.addObject("classList", classList);

		PaymentVo paymentInfo; // 만약 같은 회원이 정보를 추가하는걸 반영하고 싶으면 배열로 써야 하지만, 그냥 같은 회원 정보를 갱신하는 식으로 진행하기 때문에 배열로
								// 처리할 필요 X

		if (user == null) {
			mv.setViewName("redirect:/login");
		}
		if (user != null) {

			if (user.getSt_id().equals(classList.getClass_st_id())) { // 자기 클래스를 자신이 수강받는건 이상하잖어?

				printWriter.println(
						"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('이 클래스는 크리에이터님이 개설하신 수업입니다!'); history.back(); </script>");
				printWriter.flush();
				printWriter.close();

			}

			if (!user.getSt_id().equals(classList.getClass_st_id())) {

				paymentInfo = paymentService.getPaymentInfo(user.getSt_id());

				if (paymentInfo == null) { // 그러니까 결제한 적이 없으면 그냥 패스

				}
				if (paymentInfo != null) { // 결제 내역이 있으면 Attribute를 불러서 정보 불러옴

					mv.addObject("paymentInfo", paymentInfo);

				}

				mv.setViewName("/class/applyClass");
			}
		}
		return mv;
	}

	@RequestMapping(value = "/applyClass", method = RequestMethod.POST)
	public ModelAndView applyClassPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response,
			PaymentVo paymentStat, PurchaseHistoryVo purchaseInfo, String code, String payment_cardBrand,
			String payment_cardOption, String payment_cardNumber, String payment_dueMonth, String payment_dueYear,
			String payment_cardCVC, String payment_cardPassword, String payment_ownerBirthday,
			String payment_businessNumber) throws IOException {

		// 결제 정보를 받은 걸로 결제 진행은 현 시점에선 불가... 이건 나중에 확인할 예정

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter printWriter = response.getWriter();

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		ClassVo classList = classService.getSelectedClass(code);

		if (user == null) {

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); location.href=\"login\"; </script>");
			printWriter.flush();
			printWriter.close();

		}

		if (user != null) {

			boolean check = paymentService.detectPaymentInfo(paymentStat, classList, user.getSt_id(), payment_cardBrand,
					payment_cardOption, payment_cardNumber, payment_dueMonth, payment_dueYear, payment_cardCVC,
					payment_cardPassword, payment_ownerBirthday, payment_businessNumber);
			System.out.println(check);
			if (check == false) {

				printWriter.println(
						"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('누락된 정보가 있거나 정보를 잘못 입력하셨습니다.'); history.back(); </script>");
				printWriter.flush();
				printWriter.close();

			}

			if (check == true) {

				paymentService.inputHistory(purchaseInfo, code, user.getSt_id());

				classService.inputClass(code, user.getSt_id(), classList.getClass_title(),
						classList.getClass_monthlyPay());

				printWriter.println(
						"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('결제가 완료되었습니다! 즐거운 시간 되십시오.'); location.href='class?code="+code+"'	;</script>");
				printWriter.flush();
				printWriter.close();

			}

		}

		return mv;
	}

	// 여기서부턴 클래스 수강 작업!

	@RequestMapping(value = "/lecture", method = RequestMethod.GET)
	public ModelAndView lectureGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response,
			String code, String num) throws IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter printWriter = response.getWriter();

		UserVo user = (UserVo) request.getSession().getAttribute("user");

		ClassVo classList = classService.getSelectedClass(code);
		
		if (user == null) {
			
			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); location.href=\"login\"; </script>");
			printWriter.flush();
			printWriter.close();

		}

		if (user != null) {
			
	
			
			if (user.getSt_id().equals(classList.getClass_st_id())) { // 자기 클래스를 자신이 수강받는건 이상하잖어?

				

			}
			
			if (!user.getSt_id().equals(classList.getClass_st_id())) { 

				// 만약 VIP 회원인데 이 클래스를 처음 듣는 경우

				VipCodeListVo vipList = vipService.checkVip(user.getSt_id());

				if (vipList != null) {

					CurrentClassVo checkVipSelected = classService.checkVipSelected(vipList.getVip_code(),code);

					if (checkVipSelected != null) {

						// 여긴 이미 vip회원이 수강 신청을 했음에도 중복 신청되는 걸 방지하는 코드

						Date checkExpired = checkVipSelected.getCurrentClass_dueDate();
						Date today = new Date();

						System.out.println(checkExpired);
						System.out.println(today);

						int compare = checkExpired.compareTo(today);

						System.out.println(compare);

						if (compare <= 0) { // compare가 0이거나 -1인 경우만 적용되어야함

							printWriter.println(
									"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('VIP플랜이 이미 만료되었습니다! 클래스를 개별적으로 구매하시거나 VIP 등록을 새로 해주세요!'); location.href=\"login\"; </script>");
							printWriter.flush();
							printWriter.close();

						}
						
					}

					if (checkVipSelected == null) {
						classList = classService.getSelectedClass(code);
						classService.vipInsertClass(user.getSt_id(), vipList, classList.getClass_title(), code);
					}
				}

			}

			
			// 여기서 부턴 공통 작업

			classList = classService.getSelectedClass(code);
			mv.addObject("classList", classList);
			
			ArrayList<MainChapterVo> mainChapterCheck;
			
			if (classList != null) {
				
				mainChapterCheck = classService.getMainChapters(classList.getClass_code());
				
				if (mainChapterCheck != null) {
					
					mv.addObject("mainChapter", mainChapterCheck);
					
					ArrayList<SubChapterVo> subChapterCheck = new ArrayList<SubChapterVo>();
					
					for (MainChapterVo main : mainChapterCheck) {
						ArrayList<SubChapterVo> tempSubContainer;
						tempSubContainer = classService.findSubChapter(main.getMainChapter_priNum());
						subChapterCheck.addAll(tempSubContainer);
					}
					
					mv.addObject("subChapter", subChapterCheck);
					
				}
			}
			
			
			mv.setViewName("/class/lecture/lecturePage");
		}

		return mv;
	}
	
	@RequestMapping(value = "/lecture/lesson", method = RequestMethod.GET)
	public ModelAndView lecturePageGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response, String code, int subChapter) {
		
		System.out.println(subChapter);

		ClassVo classList = classService.getSelectedClass(code);
		mv.addObject("classList", classList);
		
		ArrayList<MainChapterVo> mainChapterCheck;
		
		if (classList != null) {
			
			mainChapterCheck = classService.getMainChapters(classList.getClass_code());
			
			if (mainChapterCheck != null) {
				
				mv.addObject("mainChapter", mainChapterCheck);
				
				ArrayList<SubChapterVo> subChapterCheck = new ArrayList<SubChapterVo>();
				
				for (MainChapterVo main : mainChapterCheck) {
					ArrayList<SubChapterVo> tempSubContainer;
					tempSubContainer = classService.findSubChapter(main.getMainChapter_priNum());
					subChapterCheck.addAll(tempSubContainer);
				}
				
				SubChapterVo subChapterContent = classService.returnContent(subChapter);
				
				mv.addObject("subContent", subChapterContent);
		
				
				mv.addObject("subChapter", subChapterCheck);
		
			}
		}
		
		mv.setViewName("/class/lecture/lectureSub");
		
		
		return mv;
	}
	
	

	// 여기서부턴 크리에이터 부분!

	// 크리에이터 기본 옵션 구현
	@RequestMapping(value = "/creator", method = RequestMethod.GET)
	public ModelAndView creatorGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		// 요건 접근 제한 코드

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();

		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) {

			ArrayList<ClassVo> classList = classService.checkMyClass(user.getSt_id());
			
			if (!classList.isEmpty())	{
				mv.addObject("classList", classList);
			}
			
			TemporaryClassVo tempClass = classService.getMySubmitClass(user.getSt_id());
			mv.addObject("tempClass", tempClass);
			System.out.println(tempClass);

			mv.setViewName("/creator/creatorCenter/creatorStatus");
		}

		if (user == null || user.getSt_value().equals("STUDENT")) {

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();

		}

		// 요건 신청한 데이터가 있으면 뿌려주는 거

		return mv;
	}

	// 크리에이터 신청

	@RequestMapping(value = "/creator/joinCreator", method = RequestMethod.GET)
	public ModelAndView joinCreatorGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		// 주의! response는 굉장히 민감해서 인코딩을 먼저 작성후 PrintWriter 실행 할 것!

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();

		if (user.getSt_value().equals("STUDENT") || user.getSt_value().equals("ADMIN")) {
			mv.setViewName("/creator/joinCreator");
		} else {

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('이미 크리에이터시거나 허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
		}

		return mv;
	}

	@RequestMapping(value = "creator/joinCreator", method = RequestMethod.POST)
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
	
	// 크리에이터 공지사항
	@RequestMapping(value = "creator/announcement", method = RequestMethod.GET)
	public ModelAndView creatorAnnouncementGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();
		
		
		if (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN")){
			
			ArrayList<ServiceVo> adminAnnouncement = serviceService.getAdminAnnouncement();
			
			if (!(adminAnnouncement.isEmpty())) {
				mv.addObject("adminList", adminAnnouncement);
			}

			System.out.println(user.getSt_value());
			mv.setViewName("/creator/creatorCenter/announcement");
		}
		
		
		if (!(user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))){
			

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();
			
		}
		
		
		
		return mv;
	}
	

	// 클래스 제작 신청
	@RequestMapping(value = "creator/registerClass", method = RequestMethod.GET)
	public ModelAndView createClassGet(ModelAndView mv, HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();

		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) {
			mv.setViewName("/creator/creatorCenter/applyClassSteps/applyClass");
		}

		if (user == null || user.getSt_value().equals("STUDENT")) {

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('허용되지 않은 접근입니다!'); history.back(); </script>");
			printWriter.flush();
			printWriter.close();

		}

		return mv;
	}

	@RequestMapping(value = "creator/registerClass", method = RequestMethod.POST)
	public ModelAndView createClassPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response,
			TemporaryClassVo tempClass, MultipartFile addClass_image2, TemporaryMainChapterVo tempChapter,
			TemporarySubChapterVo tempSub, Integer[] conMainChapter_number2, Integer[] conSubChapter_number2,
			String[] conMainChapter_title2, String[] conSubChapter_title2) throws Exception {

		// 만약 목차, 챕터별 내용들 작업할 경우엔 변수를 배열로 설정해서 할것

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		System.out.println(tempClass);

		UserVo user = (UserVo) request.getSession().getAttribute("user");
		PrintWriter printWriter = response.getWriter();

		if (user != null && (user.getSt_value().equals("CREATOR") || user.getSt_value().equals("ADMIN"))) { // 예상치 못한
																											// 접근에 대비하기
																											// 위한 조건

			tempClass.setAddClass_st_id(user.getSt_id());
			tempClass.setAddClass_creatorName(user.getSt_creator());
			boolean ongoing = classService.submitClass(tempClass); // 이미지를 제외한 필수 정보 입력이 모두 완료된 상태이면 vo로 정보를 입력 한 다음
																	// true로 돌려주는 함수

			System.out.println(ongoing);

			if (ongoing == true) {

				// 여기서는 true로 반환된 경우에 한정되서 진행할 추가 작업.

				// 이건 OS 종류에 따라 경로 저장 변경 하는 부분

				String file = "";

				String uploadPath = System.getProperty("user.dir") + "/src/main/webapp/resources/uploadedImage";
				file = UploadFileUtils.uploadFile(uploadPath, addClass_image2.getOriginalFilename(),
						addClass_image2.getBytes());
				tempClass.setAddClass_image(file);
					
				boolean insertTemp = classService.insertTempChapter(tempChapter, tempSub, tempClass,
						conMainChapter_number2, conSubChapter_number2, conMainChapter_title2, conSubChapter_title2);

				if (insertTemp == true) {

					printWriter.println(
							"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('개설 신청이 완료되었습니다. 1차 승인 여부는 7일 이내에 결정 되므로 기다려 주시면 감사하겠습니다.'); location.href='/projectone/creator'; </script>");
					printWriter.flush();
					printWriter.close();

					request.getSession().setAttribute("user", user);

				}

				if (insertTemp == false) {

					mv.setViewName("redirect:/creator/applyClass");
				}

			}
			if (ongoing == false) {
				mv.setViewName("redirect:/creator/applyClass");
			}

		}

		return mv;
	}

	@RequestMapping(value = "/creator/addContent", method = RequestMethod.GET)
	public ModelAndView addContentGet(ModelAndView mv, String code) {

		TemporaryClassVo tempClass;

		if (code != null) {
			tempClass = classService.getTempClassCode(code);
			mv.addObject("tempClass", tempClass);

			if (tempClass != null) {
				ArrayList<TemporaryMainChapterVo> tempMain = classService
						.detectChapterCode(tempClass.getAddClass_code());
				mv.addObject("tempMain", tempMain);
				ArrayList<TemporarySubChapterVo> tempSubList = new ArrayList<TemporarySubChapterVo>();

				if (tempMain != null) {
					for (TemporaryMainChapterVo tmp : tempMain) {
						ArrayList<TemporarySubChapterVo> tempSub;
						tempSub = classService.getSubChapter(tmp.getConMainChapter_priNum());
						tempSubList.addAll(tempSub);

					}

					mv.addObject("tempSub", tempSubList);

				}
			}
		}

		mv.setViewName("/creator/creatorCenter/tempClass/tempClassAddContent");

		return mv;
	}

	@RequestMapping(value = "/creator/addContent", method = RequestMethod.POST)
	public ModelAndView addContentPost(ModelAndView mv, HttpServletRequest request, HttpServletResponse response,
			TemporarySubChapterVo tempSub, int[] conSubChapter_priNum2, String[] conSubChapter_title2,
			String[] conSubChapter_content2, String code) throws IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter printWriter = response.getWriter();
		UserVo user = (UserVo) request.getSession().getAttribute("user");

		System.out.println(conSubChapter_priNum2);

		boolean addContent = classService.updateContent(tempSub, conSubChapter_priNum2, conSubChapter_title2,
				conSubChapter_content2);

		if (addContent == true) {
			classService.notifyFinalStep(code);

			printWriter.println(
					"<script type=\"text/javascript\" charset=\"UTF-8\"> alert('컨텐츠 추가가 완료되었습니다. 최종 여부는 7일 이내에 결정되며 승인 후 즉시 또는 며칠 뒤에 개강 될 예정입니다.'); location.href='/projectone/creator'; </script>");
			printWriter.flush();
			printWriter.close();

			request.getSession().setAttribute("user", user);
		}

		return mv;
	}
}
