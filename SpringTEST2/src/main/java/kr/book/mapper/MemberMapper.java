package kr.book.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.book.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void join(Member mvo);
	@Select("select * from member where MBR_ID=#{id} and MBR_PW=#{password}")
	public Member login(Member mvo);
}
