package springdemo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springdemo.dao.CarDao;
import springdemo.entity.Car;
import springdemo.entity.Order;
import springdemo.entity.User;
import springdemo.service.CarSevice;
import springdemo.service.UserSevice;

@Controller
@RequestMapping("/")
public class CarControllerBussiness {	
	//de inject thi dung Autowire 

	@Autowired
	private CarDao carSevice;
	private UserSevice userService;
//		private PatientDao patientDao;
	
	@GetMapping("/home")
	public String listCars(Model theModel)
	{
		//get customers from the dao
		List<Car> theCars = carSevice.getCars();
		
		//add the customers to the model
		theModel.addAttribute("car", theCars);
		return "home";
	}
	
	@GetMapping("/view-car")
	public String showFormForAdd(Model theModel)
	{
		//create model attribute to bind form data
		Car theCar = new Car();
		theModel.addAttribute("car", theCar);
		return "view-car";
	}
	
	@GetMapping("/login")
	public String login(Model theModel)
	{
		//create model attribute to bind form data
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "login";
	}
	
	@PostMapping("/login")
    public String processLoginForm(@ModelAttribute("user") User theUser,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            Model model, HttpSession session) {
        boolean isAuthenticated = userService.checkLogin(email, password);
        if (isAuthenticated) {
        	theUser = userService.getUserByEmail(email);
            model.addAttribute("student", theUser);
            session.setAttribute("student", theUser);
            return "list-car";
        } else {
            // Xác thực thất bại, chuyển hướng hoặc hiển thị thông báo lỗi
            model.addAttribute("error", "Invalid login credentials");
            return "login";
        }
    }
	
	@GetMapping("/register")
	public String register(Model theModel)
	{
		//create model attribute to bind form data
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "register";
	}
	
	@PostMapping("/register")
    public String processRegistrationForm(
            @ModelAttribute("user") User theUser, Model theModel) {
    	User checkEmail = userService.getUserByEmail(theUser.getEmail());
    	if(checkEmail != null) {
    		theModel.addAttribute("message", "Email da ton tai");
    		return "Register";
    	}
    	userService.saveUser(theUser);
        return "login";
    }
	
	
    @GetMapping("/logout")
    public String logout(HttpSession session, HttpServletRequest request) {
    	session.removeAttribute("student");
		return "redirect:login";
    }
    
    
    
    @GetMapping("/order")
	public String order(Model theModel)
	{
		//create model attribute to bind form data
		Order theOrder = new Order();
		theModel.addAttribute("order", theOrder);
		return "order";
	}
	
//	
//	@PostMapping("/savePatient")
//	public String savePatient(@ModelAttribute("patient") Patient thePatient) {
//
//		patientSevice.savePatient(thePatient);
//		return "redirect:/patient/list";
//	}
}
