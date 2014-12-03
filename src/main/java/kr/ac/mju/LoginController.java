package kr.ac.mju;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.userDAO;
import kr.ac.mju.model.user_info;

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

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView home(Model model, HttpSession session, HttpServletRequest reqest, @RequestParam("userId") String userId) {
		ModelAndView modelAndView = new ModelAndView();
		if(session.getAttribute("userID") == null){
			if(userId.equals("admin")){
				session.setAttribute("userId", userId);
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
	public ModelAndView logout(HttpSession session, HttpServletRequest reqest) {
		ModelAndView modelAndView = new ModelAndView();
		session.invalidate();
		modelAndView.setViewName("index");
		return modelAndView;
	}
	@Autowired
	userDAO dao;

	@RequestMapping(value = "/testuser", method = RequestMethod.GET)
	public ModelAndView getUser(HttpSession session, HttpServletRequest reqest){
		ModelAndView modelAndView = new ModelAndView();
		user_info user = dao.getUserId(1);
		modelAndView.addObject("name", user.getName());
		modelAndView.setViewName("usertest");

		return modelAndView;
	}
}
