package clothesShop.controller.user;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.User;
import clothesShop.service.IUserService;

@Controller
public class AccountController {
	@Autowired
	private IUserService userService;

	@RequestMapping("/dang-ky")
	public ModelAndView register(Map<String, Object> model) {
		ModelAndView mav = new ModelAndView("user/login-register/register");
		User user = new User();
		model.put("user", user);
		return mav;
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveRegister(@ModelAttribute("user") User user) {
		userService.save(user);
		return "redirect:/";
	}
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage(HttpSession session, @ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView("user/login-register/login");
		return mav;
	}
	@RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
	public ModelAndView loginPageInf(HttpSession session, @ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView("user/login-register/login");
		user = userService.checkAccount(user);
		if (user != null) {
			mav.setViewName("redirect:/");
			session.setAttribute("loginUser", user);
		} else {
			mav.addObject("statusLogin", "Đăng nhập thất bại");
		}
		return mav;
	}

	@RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
	public String logoutPage(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("loginUser");
		return "redirect:" + request.getHeader("Referer");
	}
}
