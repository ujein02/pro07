package kr.go.me.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.go.me.dto.SampleDTO;
import kr.go.me.service.RestService;

@Controller
@RequestMapping("/api/")
public class RestTest {
	
	private final Logger log = LoggerFactory.getLogger(RestTest.class);
	
	@Autowired
	RestService restService;
	
	@GetMapping("api1")
	public String api1(Model model) {
		return "api";
	}
	
	@ResponseBody
	@GetMapping("test1")
	public String test1(HttpServletRequest request) {
		log.info("URL TEST : "+request.getRequestURI());
		log.info("URI TEST : "+request.getRequestURI());
		log.info("JAVA CLASS : "+this.getClass().getName());
		return "application request url";
	}
	
	@ResponseBody
	@GetMapping("test2/{id}/{pw}")	//JSON 형태로 반환 -MAP
	public Map<String, String> test2(@PathVariable("id") String id, @PathVariable("pw") String pw) {
		Map<String,String> res = new HashMap<>();
		res.put(id, pw);
		return res;
	}

	@ResponseBody
	@GetMapping("test3/{id}")	//JSON 형태로 반환 -list
	public List<String> test3(@PathVariable("id") String id) {
		List<String> lst = new ArrayList<String>();
		for(int i=0;i<5;i++) {
			lst.add(id+i);
		}
		return lst;
	}
	
	@ResponseBody
	@GetMapping("test4/{id}/{pw}")	//Service에서 처리하여 JSON 형태로 반환 -MAP
	public Map<String, String> test4(@PathVariable("id") String id, @PathVariable("pw") String pw) {
		Map<String,String> res = restService.getTest1(id,pw);
		return res;
	}
	
	@ResponseBody
	@GetMapping("test5/{id}")	//Service에서 처리하여 JSON 형태로 반환 -list
	public List<String> test5(@PathVariable("id") String id) {
		List<String> lst = restService.getTest2(id);
		return lst;
	}
	
	@ResponseBody
	@GetMapping("list")
	public List<SampleDTO> test6() throws Exception {
		List<SampleDTO> lst = restService.sampleList();
		return lst;
	}
	
	@ResponseBody
	@GetMapping("user/{id}")
	public SampleDTO test7(@PathVariable("id") String id) throws Exception{
		SampleDTO user = restService.getSample(id);
		return user;
	}
}
