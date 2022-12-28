package kr.go.me.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.me.dto.NoticeDTO;
import kr.go.me.model.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	NoticeDAO noticeDAO;

	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return noticeDAO.noticeList();
	}

	@Override
	public NoticeDTO getNotice(int tno) throws Exception {
		return noticeDAO.getNotice(tno);
	}

	@Override
	public void addNotice(NoticeDTO notice) throws Exception {
		noticeDAO.addNotice(notice);
		
	}

	@Override
	public void noticeDelete(int tno) throws Exception {
		noticeDAO.noticeDelete(tno);
		
	}

	@Override
	public void noticeEdit(NoticeDTO dto) throws Exception {
		noticeDAO.noticeEdit(dto);
		
	}
	
	

}
