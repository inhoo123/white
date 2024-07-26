package com.callor.memo.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.memo.model.MemoVO;
import com.callor.memo.persistance.MemoDao;

@Controller
public class HomeController {

	private final MemoDao memoDao;

	public HomeController(MemoDao memoDao) {
		super();
		this.memoDao = memoDao;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert() {
		return "memo/insert";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(MemoVO memoVO, Model model) {
		model.addAttribute("MEMO", memoVO);

		int result = memoDao.insert(memoVO);

		return "redirect:/";

	}

}
