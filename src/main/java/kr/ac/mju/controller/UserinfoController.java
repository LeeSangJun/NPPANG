package kr.ac.mju.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.mju.dao.userinfoDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.user_info;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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


@RequestMapping(value = "/search_member", method = RequestMethod.POST)
	public void search_member(HttpServletRequest request, HttpServletResponse response,
			@RequestParam("search_keyword") String search_keyword
			) throws IOException{

		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		userinfoDAO userinfo = sqlSession.getMapper(userinfoDAO.class);	//Mapper연결
		ModelAndView modelAndView = new ModelAndView();
		//insert Database
		List<user_info> user_info = userinfo.search_member(search_keyword.toString());
		JSONArray obj = new JSONArray();

		for(user_info user : user_info){
			JSONObject json_obj = JSONObject.fromObject(user);
			obj.add(json_obj);
		}

		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		System.out.println(obj.toString());
		writer.write(obj.toString());

		}
}