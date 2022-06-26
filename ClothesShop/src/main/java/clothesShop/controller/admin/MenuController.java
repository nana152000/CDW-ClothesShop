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

import clothesShop.entity.Menu;
import clothesShop.service.MenuService;

@Controller
public class MenuController {
	@Autowired
	private MenuService menuService;
	
	@RequestMapping("/quan-tri/menus")
	public ModelAndView menu() {
		List<Menu> menus = menuService.listAll();
		ModelAndView mav = new ModelAndView("admin/adminMenus");
		mav.addObject("listMenu", menus);
		Menu menu = new Menu();
		mav.addObject("menu", menu);
		return mav;
	}
	
	@RequestMapping("/quan-tri/menus/new")
	public ModelAndView newMenuForm(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("admin/actionMenus/newMenu");
		Menu menu = new Menu();
		model.put("menu", menu);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/menus/save", method = RequestMethod.POST)
	public String saveMenu(@ModelAttribute("menu") Menu menu) {
		menuService.save(menu);
		return "redirect:/quan-tri/menus";
	}

	@RequestMapping("/quan-tri/menus/edit")
	public ModelAndView editMenuForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionMenus/editMenu");
		Menu menu = menuService.get(id);
		mav.addObject("menu", menu);
		return mav;
	}

	@RequestMapping("/menus/delete")
	public String deleteMenuForm(@RequestParam long id) {
		menuService.delete(id);
		return "redirect:/quan-tri/menus";
	}

}
