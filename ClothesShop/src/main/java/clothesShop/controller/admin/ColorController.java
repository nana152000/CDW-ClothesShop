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

import clothesShop.entity.Color;
import clothesShop.service.ColorService;

@Controller
public class ColorController {
	@Autowired
	private ColorService colorService;
	
	@RequestMapping("/quan-tri/mau-sac-sp")
	public ModelAndView color() {
		List<Color> colors = colorService.listAll();
		ModelAndView mav = new ModelAndView("admin/adminColors");
		mav.addObject("listColor", colors);
		Color color = new Color();
		mav.addObject("color", color);
		return mav;
	}
	
	@RequestMapping("/quan-tri/mau-sac-sp/new")
	public ModelAndView newColorForm(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("admin/actionColors/newColor");
		Color color = new Color();
		model.put("color", color);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/mau-sac-sp/save", method = RequestMethod.POST)
	public String saveColor(@ModelAttribute("color") Color color) {
		colorService.save(color);
		return "redirect:/quan-tri";
	}

	@RequestMapping("/quan-tri/mau-sac-sp/edit")
	public ModelAndView editColorForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionColors/editColor");
		Color color = colorService.get(id);
		mav.addObject("color", color);
		return mav;
	}

	@RequestMapping("mau-sac-sp/delete")
	public String deleteColorForm(@RequestParam long id) {
		colorService.delete(id);
		return "redirect:quan-tri";
	}

}
