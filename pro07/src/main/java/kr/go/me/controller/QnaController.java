package kr.go.me.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.go.me.dto.NoticeDTO;
import kr.go.me.dto.QnaDTO;
import kr.go.me.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	@GetMapping("list")
	public String qnaList(Model model) throws Exception{
		List<QnaDTO> qnaList = qnaService.qnaList();
		model.addAttribute("qnaList", qnaList);
		return "qna/list";
	}
	
	@GetMapping("detail")
	public String getQna(HttpServletRequest request, Model model) throws Exception{
		int qno = Integer.parseInt(request.getParameter("qno"));
		QnaDTO dto = qnaService.getQna(qno);
		model.addAttribute("dto",dto);
		return "qna/detail";
	}
	
	

}
