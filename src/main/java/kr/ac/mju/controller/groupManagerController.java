package kr.ac.mju.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.groupManagerDAO;
import kr.ac.mju.dao.messageDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.financial_log;
import kr.ac.mju.model.message_plain;
import kr.ac.mju.model.moim;
import kr.ac.mju.model.moim_member;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class groupManagerController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	public boolean checkJoin(int user_id, int moim_id){
		
		moim moim = new moim();
	
		//moim_member 가 생성되어야 함..
		return true;
	}

	@RequestMapping(value = "/getlog", method = RequestMethod.GET)
	public ModelAndView getLog(
			HttpSession session,
			@RequestParam(value="moim_id", required=true) String moim_id
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		groupManagerDAO groupManager = sqlSession.getMapper(groupManagerDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();

		//insert Database
		moim moim = new moim();
		List<financial_log> fin_list = new ArrayList<financial_log>();
		
		financial_log fin_log = new financial_log();
		int moim_id_int = Integer.parseInt(moim_id);
		moim.setMoim_id(moim_id_int);
		
		//user_id를 세션에서 받아와야 함!!
		int user_id = 0 ;
		System.out.println(user_id +", "+moim_id);
//		if(session.getAttribute("user_id") == null){
//			modelAndView.addObject("fin_log", "123123");
//			modelAndView.setViewName("test_log");
//
//		}else{
//			user_id = (Integer) session.getAttribute("user_id");
			if(checkJoin(user_id, moim_id_int)){		//login 여부 checking
				System.out.println(fin_list);
				if(!(fin_list = groupManager.selectLog(moim)).isEmpty()){		//id - pwd 일치여부 확인
					System.out.println("log_complete");
					System.out.println(fin_list);
					modelAndView.addObject("fin_log", fin_list);
					modelAndView.addObject("error", "모임을 찾음..");
					modelAndView.setViewName("test_log");
				}else{
					System.out.println("log_failed");
					modelAndView.addObject("error", "해당 모임을 찾을 수 없읍니다.");
					modelAndView.setViewName("index");
				}
			}
//		}
		modelAndView.setViewName("test_log");
		return modelAndView;
	}
	@RequestMapping(value = "/insertlog", method = RequestMethod.POST)
	public ModelAndView insertLog(
			HttpSession session,
			@RequestParam(value="id", required=true) String id,
			@RequestParam(value="money", required=true) String money,
			@RequestParam(value="desc", required=true) String description
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		groupManagerDAO groupManager = sqlSession.getMapper(groupManagerDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		moim moim = new moim();
		financial_log fin_log = new financial_log();
		
		fin_log.setUser_id(Integer.parseInt(id));
		fin_log.setMoney(Integer.parseInt(money));
		fin_log.setDescription(description);
		
		//moim_id를 어디선가 받아와야 함....
		//세션이 적당할까??
		fin_log.setMoim_id(2);
		int result = 0;
		if((result = groupManager.insertLog(fin_log)) == 1){
			System.out.println("success");
		}else{
			System.out.println("fail");
		}
		modelAndView.setViewName("test_log");
		
		return modelAndView;
	}
	
	public List<message_plain> getmsg(int to_user
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		/***************************/

		//insert Database
		message_plain msg = new message_plain();

		msg.setTo_user(to_user);
		List<message_plain> list = message.selectPlainMsg(msg);

		System.out.println(list);
		if(!list.isEmpty()){
			System.out.println("log_complete");
		}else{
			System.out.println("msg_load_failed");
		}
		

		return list;
	}
	
	@RequestMapping(value = "/bang", method = RequestMethod.GET)
	public ModelAndView bang(
			HttpSession session,
			@RequestParam(value="moim_id", required=true) String moim_id
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		groupManagerDAO groupManager = sqlSession.getMapper(groupManagerDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		moim moim = new moim();
		moim_member moim_member = new moim_member();
		
		int user_id = (Integer) session.getAttribute("user_id");
		
		moim_member.setMoim_id(Integer.parseInt(moim_id));
		moim_member.setUser_id(user_id);
		
		
		moim_member result = groupManager.getGrade(moim_member);
		System.out.println(result.getGrade());
		if(result.getGrade() == 1){
			session.setAttribute("moim", moim_id);
			modelAndView.setViewName("bang1");
		}else if(result.getGrade() == 2){
			session.setAttribute("moim", moim_id);
			modelAndView.setViewName("bang2");
		}else{
			session.setAttribute("moim", moim_id);
			modelAndView.setViewName("bang3");
		}
		List<message_plain> msglist = getmsg(user_id);
		if(!msglist.isEmpty()){
			modelAndView.addObject("msglist", msglist);
		}
		
		return modelAndView;
	}
}
