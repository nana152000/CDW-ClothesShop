package clothesShop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.service.admin.INewService;
import clothesShop.service.admin.ISlidesService;
import clothesShop.model.NewModel;
import clothesShop.model.SlidesModel;

@Controller(value = "newControllerOfAdmin")
public class NewController {
	
	@Autowired
	private INewService newService;
	@Autowired
	private ISlidesService slidesService;

	@RequestMapping(value = "/quan-tri/danh-sach-sp", method = RequestMethod.GET)
	public ModelAndView showList(@ModelAttribute("model") SlidesModel model) {
		ModelAndView mav = new ModelAndView("admin/index");
		model.setListResult(slidesService.findAll());
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editNew() {
		ModelAndView mav = new ModelAndView("admin/new/edit");
		return mav;
	}
}
