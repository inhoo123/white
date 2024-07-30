package com.callor.memo.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.callor.memo.model.MemoVO;

public interface MemoDao {
	@Select("SELECT * FROM m_memo ORDER BY m_seq")
	public List<MemoVO> selectAll();

	@Select("UPDATE m_title,m_memo SET #{title},#{m_memo} WHERE m_seq ")
	public List<MemoVO> update(int m_seq);

	@Select("SELECT * FROM m_memo WHERE m_seq")
	public static String findById(String m_seq) {
		
		return "memo/detail";
	}

	public int insert(MemoVO memoVO);

}
