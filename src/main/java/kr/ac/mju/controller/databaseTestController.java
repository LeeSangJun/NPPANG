package kr.ac.mju.controller;

import kr.ac.mju.dao.testDAO;
import kr.ac.mju.model.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class databaseTestController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/testMybatis", method = RequestMethod.GET)
	public ModelAndView testDatabase() {
		ModelAndView DBview = new ModelAndView();
		test model;
	/*	model = dao.getTestModel();
		if(model != null){
			DBview.addObject("test", model.getName());
			DBview.setViewName("DBview");
		}
		return DBview;
	}
	*/
		return DBview;
	}
}