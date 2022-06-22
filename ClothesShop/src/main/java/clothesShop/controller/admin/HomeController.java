package clothesShop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.admin.ISlidesService;
import clothesShop.model.SlidesModel;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

//	@RequestMapping(value = "/quan-tri", method = RequestMethod.GET)
//	public ModelAndView homePage() {
//		ModelAndView mav = new ModelAndView("admin/index");
//		return mav;
//	}
	@Autowired
	private ISlidesService slidesService;

	@RequestMapping(value = "/quan-tri", method = RequestMethod.GET)
	public ModelAndView Index(@ModelAttribute("modelSlides") SlidesModel modelSlides) {
		ModelAndView mav = new ModelAndView("admin/home");
		modelSlides.setListResult(slidesService.findAll());
//		modelSlides.setListResult(slidesService.insert(String sql));
		mav.addObject("modelSlides", modelSlides);
		return mav;
	}
}
