package ClothesShop.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import ClothesShop.Service.User.HomeServiceImplement;

@Controller
public class BaseController {
	// Chứa những cái dùng chung
	@Autowired
	HomeServiceImplement _homeService;
	public ModelAndView _mvShare = new ModelAndView();

	@PostConstruct
	//Hàm dựng cho Init run trước
	public ModelAndView Init() {
		_mvShare.addObject("menus", _homeService.GetDataMenus());
		return _mvShare;
	}
}
