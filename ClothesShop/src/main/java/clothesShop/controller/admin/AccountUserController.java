package clothesShop.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = { "/quan-tri/tai-khoan-admin" })
	public ModelAndView accountAdmin(HttpSession session) {
		ModelAndView mav = new ModelAndView("admin/accountAdmin");
		UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		User user = userService.getName(userDetails.getUsername());
		mav.addObject("user", user);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/tai-khoan-admin/save", method = RequestMethod.POST)
	public String saveAccountAdmin(@ModelAttribute("user") User user) {
		user.setUserRole("ADMIN");
		userService.saveInf(user);
		return "redirect:/quan-tri";
	}
}
