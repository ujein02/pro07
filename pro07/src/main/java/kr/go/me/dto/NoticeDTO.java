package kr.go.me.dto;

import lombok.Data;

@Data
public class NoticeDTO {
	private int tno;
	private String title;
	private String content;
	private String Writer;
	private String regdate;
	private int visited;

}
