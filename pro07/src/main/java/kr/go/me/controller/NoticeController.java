package kr.go.me.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.me.dto.NoticeDTO;
import kr.go.me.service.NoticeService;

@Controller
@RequestMapping("/notice/")
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	//목록보기
	@GetMapping("list")
	public String noticeList(Model model) throws Exception{
		List<NoticeDTO> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "notice/list";
	}
	
	//상세보기
	@GetMapping("detail")
	public String getNotice(HttpServletRequest request, Model model) throws Exception{
		int tno = Integer.parseInt(request.getParameter("tno"));
		NoticeDTO dto = noticeService.getNotice(tno);
		model.addAttribute("dto",dto);
		return "notice/detail";
	}
	
	//등록하기 폼
	@GetMapping("insert")
	public String insertNotice(HttpServletRequest request, Model model) throws Exception{
		return "notice/insert";
	}
	
	@PostMapping("insert.do")
	public String noticeInsert(HttpServletRequest request, Model model) throws Exception {
		NoticeDTO dto = new NoticeDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		noticeService.addNotice(dto);
		
		return "redirect:list";
	}
	
	//공지사항 삭제
	@GetMapping("delete.do")
	public String noticeDelete(HttpServletRequest request, Model model) throws Exception {
		int tno = Integer.parseInt(request.getParameter("tno"));
		noticeService.noticeDelete(tno);
		
		return "redirect:list";
	}
	
	//공지사항 수정
	@GetMapping("edit")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int tno = Integer.parseInt(request.getParameter("tno"));
		NoticeDTO dto = noticeService.getNotice(tno);
		model.addAttribute("dto", dto);
		return "notice/edit";
	}
	
	@PostMapping("edit.do")
	public String noticeEdit(HttpServletRequest request, Model model) throws Exception {
		int tno = Integer.parseInt(request.getParameter("tno"));
		
		NoticeDTO dto = new NoticeDTO();
		dto.setTno(tno);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		noticeService.noticeEdit(dto);
		
		return "redirect:list";
	}
	
	
}
