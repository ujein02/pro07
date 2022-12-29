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

	@Override
	public List<MemberDTO> memberList() throws Exception {
		return memberDao.memberList();
	}

	@Override
	public MemberDTO getMember(String id) throws Exception {
		return memberDao.getMember(id);
	}

	@Override
	public void memberInsert(MemberDTO dto) throws Exception {
		memberDao.memberInsert(dto);
		
	}

	@Override
	public MemberDTO signIn(MemberDTO mdto) throws Exception {
		return memberDao.signIn(mdto);
	}

	@Override
	public void memberUpdate(MemberDTO mdto) throws Exception {
		memberDao.memberUpdate(mdto);
		
	}

	@Override
	public void memberDelete(String id) throws Exception {
		memberDao.memberDelete(id);
		
	}	
	
	
}
