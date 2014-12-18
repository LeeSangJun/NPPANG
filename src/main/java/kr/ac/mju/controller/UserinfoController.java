package kr.ac.mju.controller;

import kr.ac.mju.dao.userinfoDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.user_info;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

	@RequestMapping(value = "/Join", method = RequestMethod.POST)
	public ModelAndView user_join(
			@RequestParam("name") String name,
			@RequestParam("email") String email,
			@RequestParam("pwd") String pwd,
			@RequestParam("description") String dec
			){

		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		userinfoDAO userinfo = sqlSession.getMapper(userinfoDAO.class);	//Mapper연결

		ModelAndView modelAndView = new ModelAndView();
		//insert Database
		user_info user = new user_info();
		user.setName(name);
		user.setEmail(email);;
		user.setPassword(pwd);
		user.setDescription(dec);

		userinfo.join(user);

		modelAndView.setViewName("index");
		return modelAndView;
	}
}