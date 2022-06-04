package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class Member {
	@Data
	@AllArgsConstructor
	@NoArgsConstructor
	public class Book {
			private int num;
			private String id;
			private String password;
			private String name;
			private String phone;
			private String shop;
			private String position;
			private String email;
	}

}
