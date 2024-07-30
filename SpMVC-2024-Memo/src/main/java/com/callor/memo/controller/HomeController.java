package com.callor.memo.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.callor.memo.model.MemoVO;
import com.callor.memo.persistance.MemoDao;

@Controller
public class HomeController {

	protected final MemoDao memoDao;

	public HomeController(MemoDao memoDao) {
		super();
		this.memoDao = memoDao;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<MemoVO> memoList = memoDao.selectAll();
		model.addAttribute("MEMO_LIST", memoList);
		return "home";
	}

	// 메모 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String insert(MemoVO memoVO, Model model) {
		model.addAttribute("MEMO", memoVO);
		int result = memoDao.insert(memoVO);
		return "redirect:/";
	}

	// 메모 디테일
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(String m_seq, Model model) {
		MemoVO memoVO = memoDao.findById(m_seq);
		model.addAttribute("MEMO", memoVO);
		return "memo/detail";
	}
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public String update(int m_seq, MemoVO memoVO) {
		memoVO.setM_seq(m_seq);
		int result = memoDao.Update(memoVO);
		return "memo/update";
	}
}
