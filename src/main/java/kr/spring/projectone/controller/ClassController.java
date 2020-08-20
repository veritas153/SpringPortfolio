package kr.spring.projectone.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ClassController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassController.class);
	
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
	
}
