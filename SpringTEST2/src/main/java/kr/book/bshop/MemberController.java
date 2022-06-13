package kr.book.bshop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.book.entity.Member;
import kr.book.entity.detection;
import kr.book.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper MemberMapper;

	@RequestMapping("/main.do")
	public String joinjsp() {
		return "intro";
	}

	@RequestMapping("/join.do")
	public String join(Member mvo, HttpSession session) { // title, content, writer -> 파라메터 수집
		System.out.println("controller");
		System.out.println("아이디 : " + mvo.getMBR_MAIL());
		System.out.println("아이디 : " + mvo.getMBR_NAME());
		System.out.println("아이디 : " + mvo.getMBR_SHOP());
		System.out.println("아이디 : " + mvo.getMBR_ID());
		session.setAttribute("joinsuccess", "joinsuccess");
		MemberMapper.join(mvo); // 등록

		return "join";
	}

	@PostMapping("/login.do")
	public String login(Member vo, HttpSession session) {
		System.out.println("로그인 컨트롤러");
		System.out.println("로그인한 아이디" + vo.getMBR_ID());

		Member mvo = MemberMapper.login(vo);
		if (mvo != null) { // 로그인 성공
			session.setAttribute("mvo", mvo);
		}
		return "Main";
	}

	@PostMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "intro";
	}
	@RequestMapping("/Analysis.do")
	public String Analysis() {
		return "movement Analysis";
	}
	@RequestMapping("/posting.do")
	public String posting(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("게시물을 불러와야한다");
		List<detection> detection = MemberMapper.detection();
		request.setAttribute("detection", detection);
		System.out.println("리스트가 가져와졌나요?" + detection.size());
		return "posting";
	}
}
