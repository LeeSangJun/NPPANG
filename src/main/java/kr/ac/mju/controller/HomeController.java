package kr.ac.mju.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import kr.ac.mju.dao.messageDAO;
import kr.ac.mju.dao.moimDAO;
import kr.ac.mju.dbconfig.MyBatisConnectionFactory;
import kr.ac.mju.model.message_plain;
import kr.ac.mju.model.moim;
import kr.ac.mju.model.moim_member;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView modelAndView = new ModelAndView();
		
		if(session.getAttribute("name") != null){
			modelAndView.setViewName("redirect:dashboard");
		}else{
			modelAndView.setViewName("index");
		}
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
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView dashboard(HttpSession session){
		/********중복코드*********/
		SqlSession sqlSession = MyBatisConnectionFactory.getInstance().openSession(true);	//mybatis 세션 연결
		moimDAO moimDAO = sqlSession.getMapper(moimDAO.class);	//Mapper연결
		/***************************/
		System.out.println("create_moim");

		moim moim = new moim();
		moim_member moim_member = new moim_member();

		ModelAndView modelAndView = new ModelAndView();
		System.out.println("dashboard");
		if(session.getAttribute("name") == null){
			modelAndView.setViewName("redirect:/");
		}else{
			System.out.println(session.getAttribute("user_id"));
			int user_id = (Integer)session.getAttribute("user_id");
			moim_member.setUser_id(user_id);
			
			List<moim_member> list = moimDAO.myMoim(moim_member);
			List moimlist = new ArrayList<moim>();
			if(!list.isEmpty()){
				for(moim_member mm : list){
					if(moimDAO.selectMoim(mm) != null){
						moimlist.add(moimDAO.selectMoim(mm));
					}else
						System.out.println("empty");
				}
			}
			if(!moimlist.isEmpty()){
				modelAndView.addObject("moimlist", moimlist);
			}
			modelAndView.setViewName("mypage");
			List<message_plain> msglist = getmsg(user_id);
			if(!msglist.isEmpty()){
				modelAndView.addObject("msglist", msglist);
			}
		}
		return modelAndView;
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
