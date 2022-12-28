package kr.go.me.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.me.dto.NoticeDTO;
import kr.go.me.service.NoticeService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	@GetMapping("list")
	public String noticeList(Model model) throws Exception{
		List<NoticeDTO> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/list";
	}
	
	@GetMapping("detail")
	public String getNotice(HttpServletRequest request, Model model) throws Exception{
		int tno = Integer.parseInt(request.getParameter("tno"));
		NoticeDTO notice = noticeService.getNotice(tno);
		model.addAttribute("notice",notice);
		return "notice/detail";
	}
}
