package kr.go.me.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/content/*")
public class ContentController {
	
	//기관소개
	@GetMapping("intro")
	public String getIntro(Model model) throws Exception {
		return "data/intro";
	}

	//홍보
	@GetMapping("info")
	public String getInfo(Model model) throws Exception {
		return "data/info";
	}
}