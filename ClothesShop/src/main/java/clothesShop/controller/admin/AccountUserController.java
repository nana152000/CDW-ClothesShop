package clothesShop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.User;
import clothesShop.service.IUserService;

@Controller
public class AccountUserController {
	@Autowired
	private IUserService userService;
	@RequestMapping("/quan-tri/tai-khoan")
	public ModelAndView accountUser() {
		List<User> users = userService.listAll();
		ModelAndView mav = new ModelAndView("admin/accountUsers");
		mav.addObject("listUser", users);		
		return mav;
	}
}
