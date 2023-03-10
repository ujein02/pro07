package kr.go.me.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.go.me.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return sqlSession.selectList("notice.noticeList");
	}
	
	@Transactional
	@Override
	public NoticeDTO getNotice(int tno) throws Exception {
		sqlSession.update("notice.countUp",tno);
		return sqlSession.selectOne("notice.noticeDetail",tno);
	}

	@Override
	public void addNotice(NoticeDTO notice) throws Exception {
		sqlSession.insert("notice.noticeInsert", notice);
		
	}

	@Override
	public void noticeDelete(int tno) throws Exception {
		sqlSession.delete("notice.noticeDelete", tno);
		
	}

	@Override
	public void noticeEdit(NoticeDTO dto) throws Exception {
		sqlSession.update("notice.noticeEdit", dto);
		
	}
	
	
	
	
}
