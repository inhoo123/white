package com.callor.memo.model;

import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.ToString;
import lombok.Builder;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder
public class MemoVO {
	int m_seq;
	String m_author;
	String m_date;
	String m_time;
	String m_title;
	String m_memo;
	String m_image;
}
