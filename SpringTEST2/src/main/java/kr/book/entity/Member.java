package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {

			private String MBR_ID;
			private String MBR_PW;
			private String MBR_NAME;
			private String MBR_CNT;
			private String MBR_SHOP;
			private String MBR_POS;
			private String MBR_MAIL;
		
	}


