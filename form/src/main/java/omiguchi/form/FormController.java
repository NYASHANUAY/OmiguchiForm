package omiguchi.form;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;



@Controller
public class FormController {

	@GetMapping("/omiguchi")
	public String index() {
		return "index.jsp";
	}
	
	@PostMapping("/processData")
	public String process(
			@RequestParam(value="year") int year,
			@RequestParam(value="city") String city,
			@RequestParam(value="name") String name,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="nice") String nice,
			HttpSession session) {
		
		session.setAttribute("year",year);
		session.setAttribute("city",city);
		session.setAttribute("name",name);
		session.setAttribute("hobby",hobby);
		session.setAttribute("thing",thing);
		session.setAttribute("nice",nice);
		
		System.out.println(session);
		
		return "redirect:/omiguchi/show";
	}
	
	@GetMapping("/omiguchi/show")
	public String show(HttpSession session, Model model) {
		model.addAttribute("session", session);
		return "results.jsp";
	}
	
	
}