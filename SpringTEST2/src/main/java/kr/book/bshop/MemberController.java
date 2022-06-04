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
	
	@RequestMapping("/main.do")
	public String joinjsp() {
		return "join";
	}
	@RequestMapping("/join.do")
	public String join(Member mvo, HttpSession session) { // title, content, writer -> 파라메터 수집
		System.out.println("controller");
		System.out.println("아이디 : "+mvo.getMBR_MAIL());
		System.out.println("아이디 : "+mvo.getMBR_NAME());
		System.out.println("아이디 : "+mvo.getMBR_SHOP());
		System.out.println("아이디 : "+mvo.getMBR_ID());
		session.setAttribute("joinsuccess", "joinsuccess");
		MemberMapper.join(mvo); // 등록
		
		return "join";
	}

	@PostMapping("/login.do")
	public String login(Member vo, HttpSession session) {
		System.out.println("로그인 컨트롤러");
		System.out.println("로그인한 아이디" +vo.getMBR_ID());
		
		Member mvo = MemberMapper.login(vo);
		if (mvo != null) { // 로그인 성공
			session.setAttribute("mvo", mvo);
		}
		return "Main";
	}

}
