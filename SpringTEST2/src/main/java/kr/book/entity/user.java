package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class user {
	private String mbr_shop;
	private String cctv_nbr;
	private String det_name;
	private String indate;
	
}
