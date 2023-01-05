package kr.go.me.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.go.me.dto.MemberDTO;
import kr.go.me.model.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO memberDao; 
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;

	//회원 목록 보기
	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	//회원 정보 상세보기
	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDao.getMember(id);
	}

	//회원 가입 - 회원 가입 처리
	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDao.memberInsert(dto);
		
	}

	//로그인
	@Override
	public MemberDTO signIn(MemberDTO mdto) throws Exception {
		return memberDao.signIn(mdto);
	}

	//회원정보 수정
	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		memberDao.memberUpdate(mdto);
		
	}

	//회원 탈퇴
	@Override
	public void memberDelete(String id) throws Exception {
		memberDao.memberDelete(id);
		
	}	
	
	
}
