package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class detection {
private int num;
private String photo;
private String content;
private String indate;
private int cctv;
private int situation;

}
