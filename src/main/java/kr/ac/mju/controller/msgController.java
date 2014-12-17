package kr.ac.mju.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.messageDAO;
import kr.ac.mju.dao.moimDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.message_charge;
import kr.ac.mju.model.message_plain;
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
		int from_user = (Integer)session.getAttribute("user_id");
		
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
	
	@RequestMapping(value = "/sendall", method = RequestMethod.POST)
	public ModelAndView sendPlainAll(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user,
			@RequestParam(value="contents", required=true) String contents
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		moimDAO moim = sqlSession.getMapper(moimDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		message_plain msg = new message_plain();
		
		moim_member moim_member = new moim_member();
		System.out.println(session.getAttribute("moim"));
		if(session.getAttribute("moim") != null){

			moim_member.setMoim_id((Integer)session.getAttribute("moim"));
			List<moim_member> list = moim.moimMembers(moim_member);
	
			int from_user = (Integer)session.getAttribute("user_id");
			
			msg.setFrom_user(from_user);
			msg.setContents(contents);
			
			int result = 0;
			for(moim_member mm : list){
				int user = mm.getUser_id();
				msg.setTo_user(user);
				if((result = message.sendPlainMsg(msg)) == 1){
					System.out.println("success");
				}else{
					System.out.println("fail");
				}
			}
		//세션에서 받아오는 것으로 추후 수정
		}
		modelAndView.setViewName("test_msg");
		
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/getchargemsg", method = RequestMethod.GET)
	public ModelAndView getchargemsg(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		/***************************/

		//insert Database
		ModelAndView modelAndView = new ModelAndView();
		message_charge msg = new message_charge();

		msg.setTo_user(Integer.parseInt(to_user));
		List<message_charge> list;
		
		if(!(list = message.selectChargeMsg(msg)).isEmpty()){		//id - pwd 일치여부 확인
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
	
	@RequestMapping(value = "/sendcharge", method = RequestMethod.POST)
	public ModelAndView sendcharge(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user,
			@RequestParam(value="contents", required=true) String contents,
			@RequestParam(value="billing_price", required=true) String billing_price,
			@RequestParam(value="balance", required=true) String balance
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		message_charge msg = new message_charge();
		
		
		//세션에서 받아오는 것으로 추후 수정
		int from_user = (Integer)session.getAttribute("user_id");
		
		msg.setTo_user(Integer.parseInt(to_user));
		msg.setFrom_user(from_user);
		msg.setContents(contents);
		msg.setBilling_price(Integer.parseInt(billing_price));
		
		int result = 0;
		if((result = message.sendChargeMsg(msg)) == 1){
			System.out.println("success");
		}else{
			System.out.println("fail");
		}
		modelAndView.setViewName("test_msg");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/sendchargeall", method = RequestMethod.POST)
	public ModelAndView sendchargeAll(
			HttpSession session,
			@RequestParam(value="to_user", required=true) String to_user,
			@RequestParam(value="contents", required=true) String contents,
			@RequestParam(value="billing_price", required=true) String billing_price
			){
		/********중복코드**********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		messageDAO message = sqlSession.getMapper(messageDAO.class);
		moimDAO moim = sqlSession.getMapper(moimDAO.class);
		/***************************/

		ModelAndView modelAndView = new ModelAndView();
		message_charge msg = new message_charge();
		
		moim_member moim_member = new moim_member();
		System.out.println(session.getAttribute("moim"));
		if(session.getAttribute("moim") != null){

			moim_member.setMoim_id((Integer)session.getAttribute("moim"));
			List<moim_member> list = moim.moimMembers(moim_member);
	
			int from_user = (Integer)session.getAttribute("user_id");
			
			msg.setFrom_user(from_user);
			msg.setContents(contents);
			msg.setBilling_price(Integer.parseInt(billing_price));
			msg.setMoim_id((Integer)session.getAttribute("moim"));
			
			int result = 0;
			for(moim_member mm : list){
				int user = mm.getUser_id();
				msg.setTo_user(user);
				if((result = message.sendChargeMsg(msg)) == 1){
					System.out.println("success");
				}else{
					System.out.println("fail");
				}
			}
		//세션에서 받아오는 것으로 추후 수정
		}
		modelAndView.setViewName("test_msg");
		
		return modelAndView;
	}

	@RequestMapping(value = "/testmsg", method = RequestMethod.GET)
	public ModelAndView testmsg(HttpSession session){

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("test_msg");
		return modelAndView;
		
	}
}
