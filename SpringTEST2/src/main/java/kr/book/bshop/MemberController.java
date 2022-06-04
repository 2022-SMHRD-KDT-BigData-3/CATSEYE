package kr.book.bshop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.book.entity.Member;
import kr.book.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper MemberMapper;

	@RequestMapping("/join.do")
	public String join(Member mvo) { // title, content, writer -> 파라메터 수집
		MemberMapper.join(mvo); // 등록
		System.out.println("controller");
		return "login";
	}

	@PostMapping("/login.do")
	public String login(Member vo, HttpSession session) {
		Member mvo = MemberMapper.login(vo);
		if (mvo != null) { // 로그인 성공
			session.setAttribute("mvo", mvo);
		}
		return "redirect:/main.do";
	}

}
