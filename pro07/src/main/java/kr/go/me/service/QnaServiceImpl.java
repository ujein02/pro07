package kr.go.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.me.dto.QnaDTO;
import kr.go.me.model.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService{
	
	@Autowired
	QnaDAO qnaDAO;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return qnaDAO.qnaList();
	}

	@Override
	public QnaDTO getQna(int qno) throws Exception {
		return qnaDAO.getQna(qno);
	}

	@Override
	public void addQna(QnaDTO qna) throws Exception {
		qnaDAO.addQna(qna);
		
	}

	@Override
	public void addReply(QnaDTO qna) throws Exception {
		qnaDAO.addReply(qna);
		
	}

	@Override
	public void qnaDelete(int qno) throws Exception {
		qnaDAO.qnaDelete(qno);
		
	}

	@Override
	public void qnaEdit(QnaDTO dto) throws Exception {
		qnaDAO.qnaEdit(dto);
		
	}
	
	

}
