package kr.go.me.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.me.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return sqlSession.selectList("notice.noticeList");
	}

	@Override
	public NoticeDTO getNotice(int tno) throws Exception {
		return sqlSession.selectOne("notice.getNotice");
	}

	@Override
	public void addNotice(NoticeDTO notice) throws Exception {
		sqlSession.insert("notice.addNotice");
		
	}
	
	
}
