package kr.go.me.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.me.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return sqlSession.selectList("qna.qnaList");
	}

	@Override
	public QnaDTO getQna(int qno) throws Exception {
		return sqlSession.selectOne("qna.getQna", qno);
	}

	@Override
	public void addQna(QnaDTO qna) throws Exception {
		sqlSession.insert("qna.qnaInsert", qna);
		
	}

	@Override
	public void addReply(QnaDTO qna) throws Exception {
		sqlSession.insert("qna.replyInsert", qna);
		
	}

	@Override
	public void qnaDelete(int qno) throws Exception {
		sqlSession.delete("qna.qnaDelete",qno);
		
	}

	@Override
	public void qnaEdit(QnaDTO dto) throws Exception {
		sqlSession.update("qna.qnaEdit", dto);
		
	}
	
	
	

}
