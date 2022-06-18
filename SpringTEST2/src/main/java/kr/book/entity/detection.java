package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class detection {
private int num;
private String photo_path;
private String video_path;
private String content;
private String indate;
private int cctv;

}
