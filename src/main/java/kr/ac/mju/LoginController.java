package kr.ac.mju;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.userinfoDAO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {

	@Autowired
	private userinfoDAO dao;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	/*
	 *	login
	 *	paramater : userId, pwd
	 */

	@RequestMapping(value = "/login1", method = RequestMethod.POST)
	public ModelAndView Login(Model model, HttpSession session, HttpServletRequest reqest,
			@RequestParam("userid") String userId,
			@RequestParam("password") String pwd){


		ModelAndView modelAndView = new ModelAndView();
		if(session.getAttribute("userid") == null){		//login 여부 checking
			if(userId.equals("admin")){					//id 우무checking
				//id password matching checking
				session.setAttribute("userId", userId);	//세션 할당
				modelAndView.setViewName("index");
			}else{
				modelAndView.addObject("error", "Id를 찾을 수 없습니다.");
				modelAndView.setViewName("index");
				return modelAndView;
			}
		}else{
			modelAndView.addObject("error", "이미 로그인되어 있습니다.");
			modelAndView.setViewName("index");
			return modelAndView;
		}

		return modelAndView;
	}


	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(HttpSession session, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		session.invalidate();
		modelAndView.setViewName("index");
		return modelAndView;
	}


}
