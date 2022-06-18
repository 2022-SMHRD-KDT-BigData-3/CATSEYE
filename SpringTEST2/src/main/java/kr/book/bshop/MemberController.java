package kr.book.bshop;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.book.entity.Member;
import kr.book.entity.detection;
import kr.book.entity.heatmap;
import kr.book.entity.tracking;
import kr.book.entity.user;
import kr.book.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper MemberMapper;

	@RequestMapping("/main.do")
	public String joinjsp() {
		return "intro";
	}
	
	@RequestMapping("/gologin.do")
	public String gologin() {
		return "login";
	}
	
	@RequestMapping("/gomain.do")
	public String gomain() {
		return "Main";
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

		return "login";
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

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	@RequestMapping("/Analysis.do")
	public String Analysis() {
		return "movement Analysis";
	}

	@RequestMapping("/posting.do") // posting.do 여는 메소드
	public String posting() {
		return "posting";
	}
	
	@RequestMapping("/MemberRecord.do") // posting.do 여는 메소드
	public String MemberRecord() {
		return "MemberRecord";
	}

	@RequestMapping("/loadposting.do")
	public @ResponseBody List<detection> loadposting() {
		List<detection> list = MemberMapper.detection();
		// 1. list->JSON 변환(API)
		// 2. JSON 포멧으로 응답
		return list;
	}

	@RequestMapping("/updateDetection.do")
	public @ResponseBody void updateDetection(detection vo) {
		MemberMapper.updateDetection(vo);
	}
	
	@RequestMapping("/deleteDetection.do")
	public @ResponseBody void deleteDetection(int num) {
		MemberMapper.deleteDetection(num);
	}
	
	@RequestMapping("/loadheatmap.do")
	public @ResponseBody void loadheatmap(heatmap vo) {
		
		// 1. list->JSON 변환(API)
		// 2. JSON 포멧으로 응답
	}
	@SuppressWarnings("null")
	@RequestMapping("/loaduser.do")
	public @ResponseBody List<user> loaduser() {
		List<user> list = MemberMapper.loaduser();
		for(int i = 0 ; i<list.size();i++) {
		String[] day = list.get(i).getIndate().split(" ");
		String whatday = day[0];
		String whattime = day[1];
		System.out.println(whatday);
		System.out.println(whattime);
		}
		return list;
	}
	
	@RequestMapping("/loadtracking.do")
	public @ResponseBody List<tracking> loadtracking() {
		List<tracking> list = MemberMapper.loadtracking();
		System.out.println("야~~~~~~~~~"+list.get(0).getExr_tm());
		return list;
	}
	
	
}
