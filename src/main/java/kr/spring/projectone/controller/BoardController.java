package kr.spring.projectone.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	
	/* 고객센터 접속 */
	@RequestMapping(value = "/customerService", method = RequestMethod.GET)
    public ModelAndView customerServiceGet(ModelAndView mv){
        mv.setViewName("/board/customerService/customerServiceBoard");
         
        return mv;
    }
}