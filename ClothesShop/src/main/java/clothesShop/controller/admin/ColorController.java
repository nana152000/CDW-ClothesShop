package clothesShop.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import clothesShop.entity.Color;
import clothesShop.service.IColorService;
import clothesShop.service.IProductService;

@Controller
public class ColorController {
	@Autowired
	private IColorService colorService;
	@Autowired
	private IProductService productService;

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
		mav.addObject("listProductId", productService.listProductId());
		Color color = new Color();
		model.put("color", color);
		return mav;
	}

	@RequestMapping(value = "/quan-tri/mau-sac-sp/save", method = RequestMethod.POST)
	public String saveColor(HttpServletRequest servletRequest, @ModelAttribute("color") Color color)
			throws IOException {
		String imageProduct = "", imagePro;
		List<MultipartFile> files = color.getImages();
		List<String> fileNames = new ArrayList<String>();
//		Lưu hình ảnh
		if (files != null && files.size() > 0) {
			for (MultipartFile multipartFile : files) {
				String fileName = multipartFile.getOriginalFilename();
				fileNames.add(fileName);

				imageProduct += fileName + ",";
				imagePro = imageProduct.substring(0, imageProduct.lastIndexOf(","));
				color.setImage(imagePro);

				String path = servletRequest.getServletContext()
						.getRealPath("/assets/user/img/product/" + color.getProduct().getId());
				File imageFile = new File(path, fileName);
				if (!imageFile.exists()) {
					imageFile.mkdir();
				}
				System.out.println("image saved: " + imageFile);
				multipartFile.transferTo(imageFile);
			}
		}

		colorService.save(color);

		return "redirect:/quan-tri/mau-sac-sp";
	}

	@RequestMapping("/quan-tri/mau-sac-sp/edit")
	public ModelAndView editColorForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("admin/actionColors/editColor");
		mav.addObject("listProductId", productService.listProductId());
		Color color = colorService.get(id);
		mav.addObject("color", color);
		return mav;
	}

}
