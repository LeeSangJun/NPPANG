package kr.ac.mju;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.userinfoDAO;
import kr.ac.mju.model.user_info;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserinfoController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private userinfoDAO userInfodao;

	@RequestMapping(value = "/Join", method = RequestMethod.POST)
	public ModelAndView user_join(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("pwd") String pwd,
			@RequestParam("description") String dec,
			@RequestParam("photo") String photo
			){


		ModelAndView modelAndView = new ModelAndView();

		//insert Database
		user_info user = new user_info();
		user.setName(name);
		user.setEmail(email);;
		user.setPassword(pwd);
		user.setDescription(dec);
		user.setPhoto(photo);

		userInfodao.insert_userInfo(user);

		modelAndView.setViewName("index");

		return modelAndView;
	}
}