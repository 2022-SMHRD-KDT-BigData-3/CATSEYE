package kr.book.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.book.entity.Book;

@Mapper
public interface BookMapper {
	
	// DB연결을 설정파일(xml)에서 한다.
	// 1. 게시판 전체 리스트를 가져오는 메서드 정의
	public List<Book> bookList();//추상메서드
	public List<Book> bookListAjax();//추상메서드
	
}



