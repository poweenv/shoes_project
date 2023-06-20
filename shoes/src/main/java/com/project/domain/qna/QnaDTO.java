package com.project.domain.qna;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class QnaDTO {

	public int QnaId;
	public String memberId;
	public int productId;
	public String question;
	public String answer;
	public Date questionDate;
	public Date answerDate;
	public String title;
}
