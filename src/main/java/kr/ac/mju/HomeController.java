package kr.ac.mju;

import java.util.Locale;

import kr.ac.mju.dao.testDAO;
import kr.ac.mju.model.test;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	//@Autowired
	//private testDAO dao;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		ModelAndView DBview = new ModelAndView();
		test model1;
	//	model1 = dao.getTestModel();
	//	if(model1 != null){
		//	DBview.addObject("name", model1.getName());
			DBview.setViewName("index");
	//	}


		return DBview;
	}

	@RequestMapping(value = "/{viewname}", method = RequestMethod.GET)
	public String layout_router(@PathVariable String viewname) {
		System.out.println("url" + viewname);
		return viewname;
	}


	@RequestMapping(value = "/layout", method = RequestMethod.GET)
	public String layout() {
		System.out.println("update test");
		return "layout_v_3";
	}


}
