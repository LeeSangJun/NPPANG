package kr.ac.mju.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.userinfoDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.user_info;

import org.apache.ibatis.session.SqlSession;
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

	//private userinfoDAO dao;

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/login2", method = RequestMethod.POST)
	public ModelAndView user_login(
			HttpSession session,
			@RequestParam("userid") String email,
			@RequestParam("password") String pwd
			){

		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		userinfoDAO userinfo = sqlSession.getMapper(userinfoDAO.class);	//Mapper연결
		/***************************/

		ModelAndView modelAndView = new ModelAndView();

		//insert Database
		user_info user = new user_info();
		user.setEmail(email);;
		user.setPassword(pwd);

		if(session.getAttribute("userid") == null){		//login 여부 checking
			if(userinfo.loginCheck(user) != null){		//id - pwd 일치여부 확인
				System.out.println("login_complete");

				session.setAttribute("email", email);	//세션 할당
				modelAndView.setViewName("private_page");
			}else{
				System.out.println("login_failed");
				modelAndView.addObject("error", "login-error : please check your email or password");
				modelAndView.setViewName("index");

			}
		}else{
			//개인화 페이지로 이동
		}
		return modelAndView;
	}

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
