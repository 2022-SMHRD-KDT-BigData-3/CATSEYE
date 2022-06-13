package kr.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.book.entity.Member;
import kr.book.entity.detection;

@Mapper
public interface MemberMapper {
	
	@Insert ("insert into member values(mem_seq.nextval,#{MBR_ID},#{MBR_PW},#{MBR_NAME},#{MBR_CNT},#{MBR_SHOP},#{MBR_POS},#{MBR_MAIL})")
	public void join(Member mvo);
	
	
	@Select("select * from member where MBR_ID=#{MBR_ID} and MBR_PW=#{MBR_PW}")
	public Member login(Member mvo);
	
	@Select("select * from DETECTION_BOARD")
	public List<detection> detection();
}
