package kr.ac.mju.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.userinfoDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.test;
import kr.ac.mju.model.user_info;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView DBview = new ModelAndView();
		DBview.setViewName("index");
		return DBview;
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard(){
			ModelAndView view = new ModelAndView();
			System.out.println("dashboard");
			view.setViewName("mypage");
			return view;
	}


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login_page(HttpSession session){
			ModelAndView modelAndView = new ModelAndView();
			if(session.getAttribute("email") == null){		//login 여부 checking
				modelAndView.setViewName("login");
			}else{
				//개인화 페이지로 이동
				modelAndView.setViewName("redirect:dashboard");
			}
		return modelAndView;
	}


	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView moim_create(HttpSession session){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("create");

		return modelAndView;
	}

	/*
	@RequestMapping(value = "/{viewname}", method = RequestMethod.GET)
	public String layout_router(@PathVariable String viewname) {
		System.out.println("url" + viewname);
		return viewname;
	}*/


	@RequestMapping(value = "/layout", method = RequestMethod.GET)
	public String layout() {
		System.out.println("update test");
		return "layout_v_3";
	}
}
