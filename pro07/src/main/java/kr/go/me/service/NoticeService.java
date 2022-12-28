package kr.go.me.service;

import java.util.List;

import kr.go.me.dto.NoticeDTO;

public interface NoticeService {
	public List<NoticeDTO> noticeList() throws Exception;
	public NoticeDTO getNotice(int tno) throws Exception;
	public void addNotice(NoticeDTO notice) throws Exception;

}
