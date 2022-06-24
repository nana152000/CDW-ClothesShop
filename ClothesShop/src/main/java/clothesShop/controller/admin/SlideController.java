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

import clothesShop.entity.Slide;
import clothesShop.service.SlideService;

@Controller
public class SlideController {
	@Autowired
	private SlideService slideService;
	
	@RequestMapping("/quan-tri/slides")
	public ModelAndView slide() {
		List<Slide> slides = slideService.listAll();
		ModelAndView mav = new ModelAndView("admin/adminSlides");
		mav.addObject("listSlide", slides);
		Slide slide = new Slide();
		mav.addObject("slide", slide);
		return mav;
	}
	
	@RequestMapping("/quan-tri/slides/new")
	public ModelAndView newSlideForm(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("admin/actionSlides/newSlide");
		Slide slide = new Slide();
		model.put("slide", slide);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/slides/save", method = RequestMethod.POST)
	public String saveSlide(@ModelAttribute("slide") Slide slide) {
		slideService.save(slide);
		return "redirect:/quan-tri";
	}

	@RequestMapping("/quan-tri/slides/edit")
	public ModelAndView editSlideForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionSlides/editSlide");
		Slide slide = slideService.get(id);
		mav.addObject("slide", slide);
		return mav;
	}

	@RequestMapping("slides/delete")
	public String deleteSlideForm(@RequestParam long id) {
		slideService.delete(id);
		return "redirect:quan-tri";
	}

}
