package clothesShop.controller.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.admin.Slide;
import clothesShop.service.admin.impl.SlidesService;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {

	@Autowired
	private SlidesService slidesService;

	@RequestMapping("/quan-tri")
	public ModelAndView home() {
		List<Slide> slides = slidesService.listAll();
		ModelAndView mav = new ModelAndView("admin/home");
		mav.addObject("listSlide", slides);
		Slide slide = new Slide();
		mav.addObject("slide", slide);
		return mav;
	}

	@RequestMapping("/new")
	public String newSlideForm(Map<String, Object> model) {
		Slide slide = new Slide();
		model.put("slide", slide);
		return "home";
	}

	@RequestMapping(value = "/quan-tri/save", method = RequestMethod.POST)
	public String saveSlide(@ModelAttribute("slide") Slide slide) {
		slidesService.save(slide);
		return "redirect:/quan-tri";
	}

	@RequestMapping("/quan-tri/edit")
	public ModelAndView editSlideForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/editSlides");
		Slide slide = slidesService.get(id);
		mav.addObject("slide", slide);
		return mav;
	}

	@RequestMapping("/delete")
	public String deleteSlideForm(@RequestParam long id) {
		slidesService.delete(id);
		return "redirect:quan-tri";
	}

}
