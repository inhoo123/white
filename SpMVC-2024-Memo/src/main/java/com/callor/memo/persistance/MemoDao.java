package com.callor.memo.persistance;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.callor.memo.model.MemoVO;

public interface MemoDao {
	@Select("SELECT * FROM m_memo ORDER BY m_seq")
	public List<MemoVO> selectAll();

	

	@Select("SELECT * FROM m_memo WHERE m_seq =#{m_seq}")
	public MemoVO findById(String m_seq);

	public int insert(MemoVO memoVO);
	public int Update(MemoVO memoVO);
	
}
