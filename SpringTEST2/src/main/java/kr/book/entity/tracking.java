package kr.book.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class tracking {

	private String target;
	private String exr_eq;
	private String exr_tm;
	private String target_path;
}
