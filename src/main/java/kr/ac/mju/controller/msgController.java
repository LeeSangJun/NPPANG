package kr.ac.mju.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.groupManagerDAO;
import kr.ac.mju.dao.messageDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.message_plain;
import kr.ac.mju.model.moim;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class msgController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	

	@RequestMapping(value = "/getplainmsg", method = RequestMethod.GET)
	public ModelAndView getplainmsg(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		/***************************/

		//insert Database
		ModelAndView modelAndView = new ModelAndView();
		message_plain msg = new message_plain();

		msg.setTo_user(Integer.parseInt(to_user));
		List<message_plain> list;
		
		if(!(list = message.selectPlainMsg(msg)).isEmpty()){		//id - pwd 일치여부 확인
			System.out.println("log_complete");
			System.out.println(list);
			modelAndView.addObject("msg", list);
			modelAndView.addObject("error", "모임을 찾음..");
			modelAndView.setViewName("test_log");
		}else{
			System.out.println("log_failed");
			modelAndView.addObject("error", "해당 모임을 찾을 수 없읍니다.");
			modelAndView.setViewName("test_msg");
		}
		

		modelAndView.setViewName("test_msg");
		return modelAndView;
	}
	@RequestMapping(value = "/sendplain", method = RequestMethod.POST)
	public ModelAndView sendPlain(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user,
			@RequestParam(value="contents", required=true) String contents
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		message_plain msg = new message_plain();
		
		
		//세션에서 받아오는 것으로 추후 수정
		int from_user = 1;
		
		msg.setTo_user(Integer.parseInt(to_user));
		msg.setFrom_user(from_user);
		msg.setContents(contents);
		
		int result = 0;
		if((result = message.sendPlainMsg(msg)) == 1){
			System.out.println("success");
		}else{
			System.out.println("fail");
		}
		modelAndView.setViewName("test_msg");
		
		return modelAndView;
	}
}
