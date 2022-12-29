package kr.go.me.dto;

import lombok.Data;

@Data
public class MemberDTO {
	private int no;
	private String id;
	private String pw;
	private String name;
	private String tel; 
	private String addr1;
	private String addr2;
	private String postcode;
	private String email;
	private String regdate;
	
}