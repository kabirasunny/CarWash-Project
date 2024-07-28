package com.carwash.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.carwash.dao.CarWashDao;
import com.carwash.entity.Booking;
import com.carwash.entity.CarWash;
import com.carwash.service.CarWashService;
import com.carwash.session.SessionHelper;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class CarWashController {

	private String number;

	@Autowired
	private CarWashService carWashService;

	@Autowired
	private CarWashDao carWashDao;

	@Autowired
	private SessionHelper sessionHelper;

	@GetMapping("/home")
	public String home(Model m) {
		return "home";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/signup")
	public String getSignup() {
		return "signup";
	}

	@GetMapping("/contact")
	public String show() {
		return "contact";
	}

	@PostMapping("/feedback")
	public String feedbackContact() {
		try {
			Thread.sleep(2000);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "contact";
	}

	// yaha logic dena hoga for popup

	@PostMapping(path = "/register")
	public String getRegister(@Valid @ModelAttribute("carWash") CarWash carWash, BindingResult result, Model m,
			HttpSession session) {

		if (result.hasErrors()) {
			return "signup";

		}

		else {
			carWash.getPhoneNumber();
			carWash.getEmail();
			carWash.getFullname();
			carWash.getPassword();
			int r = carWashDao.getRegister(carWash);
			if (r == 1) {
				return "success";
			} else {
				return "signup";
			}

		}
	}

	@GetMapping("/login")
	public String getLoginPage() {
		return "login";
	}

	@PostMapping(path = "/loginuser")
	public String getLogin(@RequestParam("phoneNumber") String number, @RequestParam("password") String password,
			Model m, RedirectAttributes attrs, HttpSession session) {
		CarWash carWash = carWashService.getLogin(number);

		if (carWash.getPhoneNumber().equals(number) && carWash.getPassword().equals(password)) {
			String fullname = carWash.getFullname();
			// attrs.addFlashAttribute("number", number);
			session.setAttribute("name", fullname);
			session.setAttribute("logout", "Logout");
			session.setAttribute("call", "show()");
			session.setAttribute("icon", "<i class=\"fa-regular fa-user\"></i>");
			session.setAttribute("number", number);
			String num = (String) session.getAttribute("number");
			this.number = num;
			return "home";

		} else {

			m.addAttribute("num", number);
			m.addAttribute("pass", password);
			m.addAttribute("valid", "valid()");
			return "login";
		}

	}

	@GetMapping("/nor")
	public String normal(Model m) {
		return "normal";
	}

	@GetMapping("/medi")
	public String medium(Model m) {
		return "medium";
	}

	@GetMapping("/premi")
	public String premium(Model m) {
		return "premium";
	}

	// ==============car booking set process========================================

	@GetMapping("/normal")
	public String setNormal(Model m) {
		Booking book = new Booking();

		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formatDateTime = now.format(format);

		String number = this.number;
		book.setPhoneNumber(number);
		book.setWaterWash("Yes");
		book.setFarmWash("No");
		book.setVoccumCleaner("No");
		book.setPollish("No");
		book.setVoccumCleaner("No");
		book.setAirCleaner("No");
		book.setDateAndTime(formatDateTime);

		int result = this.carWashService.setBooking(book);
		return "normal";
	}

	@GetMapping("/medium")
	public String setMedium(Model m) {
		Booking book = new Booking();

		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formatDateTime = now.format(format);

		String number = this.number;
		book.setPhoneNumber(number);
		book.setWaterWash("Yes");
		book.setFarmWash("Yes");
		book.setVoccumCleaner("Yes");
		book.setPollish("No");
		book.setVoccumCleaner("No");
		book.setAirCleaner("No");
		book.setDateAndTime(formatDateTime);
		int result = this.carWashService.setBooking(book);
		return "normal";
	}

	@GetMapping("/premium")
	public String setPremium(Model m) {
		Booking book = new Booking();

		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter format = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
		String formatDateTime = now.format(format);

		String number = this.number;
		book.setPhoneNumber(number);
		book.setWaterWash("Yes");
		book.setFarmWash("Yes");
		book.setVoccumCleaner("Yes");
		book.setPollish("Yes");
		book.setVoccumCleaner("Yes");
		book.setAirCleaner("Yes");
		book.setDateAndTime(formatDateTime);
		int result = this.carWashService.setBooking(book);
		return "normal";
	}

	// ===============car booking get
	// process============================================

	@GetMapping("/cardetail")
	public String getNormal(Model m) {
		m.addAttribute("wash", "Normal Booking");
		String number = this.number;
		List<Booking> list = this.carWashService.getBooking(number);
		for (Booking b : list) {
			m.addAttribute("number", b.getPhoneNumber());
			m.addAttribute("waterwash", b.getWaterWash());
			m.addAttribute("farmwash", b.getFarmWash());
			m.addAttribute("voccum", b.getVoccumCleaner());
			m.addAttribute("pollish", b.getPollish());
			m.addAttribute("aircleaner", b.getAirCleaner());
			m.addAttribute("dateandtime", b.getDateAndTime());
		}
		return "booking";
	}

	@GetMapping("/cardetail2")
	public String getMedium(Model m) {
		m.addAttribute("wash", "Medium Booking");
		String number = this.number;
		List<Booking> list = this.carWashService.getBooking(number);
		for (Booking b : list) {
			m.addAttribute("number", b.getPhoneNumber());
			m.addAttribute("waterwash", b.getWaterWash());
			m.addAttribute("farmwash", b.getFarmWash());
			m.addAttribute("voccum", b.getVoccumCleaner());
			m.addAttribute("pollish", b.getPollish());
			m.addAttribute("aircleaner", b.getAirCleaner());
			m.addAttribute("dateandtime", b.getDateAndTime());
		}
		return "booking";
	}

	@GetMapping("/cardetail3")
	public String getPremium(Model m) {
		m.addAttribute("wash", "Premium Booking");
		String number = this.number;
		List<Booking> list = this.carWashService.getBooking(number);
		for (Booking b : list) {
			m.addAttribute("number", b.getPhoneNumber());
			m.addAttribute("waterwash", b.getWaterWash());
			m.addAttribute("farmwash", b.getFarmWash());
			m.addAttribute("voccum", b.getVoccumCleaner());
			m.addAttribute("pollish", b.getPollish());
			m.addAttribute("aircleaner", b.getAirCleaner());
			m.addAttribute("dateandtime", b.getDateAndTime());
		}
		return "booking";
	}

//	=========================logout=================================================
	@GetMapping("/logout")
	public String logOut() {

		sessionHelper.removeMessageFromSession();
		return "home";

	}

//	====================================reset password===============================
	@GetMapping("/resetpassword")
	public String passwordPage() {
		return "resetpassword";
	}

	@PostMapping(path = "/reset")
	public String getPassword(@RequestParam("phoneNumber") String number, Model m) {
		CarWash carWash = this.carWashService.getPassword(number);
		if (carWash != null) {
			this.number = number;
			m.addAttribute("number", this.number);
			return "submitpassword";
		} else {
			return "resetpassword";
		}
	}

	@PostMapping("/submitpassword")
	public String getpassword(@RequestParam("phoneNumber") String number, @RequestParam("password") String password,
			@RequestParam("secondPassword") String againPassword) {
		if (number.equals(this.number)) {
			if (password.equals(againPassword)) {

				int res = this.carWashService.updatePassword(password, number);
				return "updatepassword";
			} else {
				return "submitpassword";
			}
		} else {
			return "resetpassword";
		}
	}
}
