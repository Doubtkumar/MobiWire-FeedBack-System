package com.rohit.demo.DTO;

public class FeedbackSubmitAnswerReqDTO {
	
	private int questionid;
	private String question;
	private String answer;

	@Override
	public String toString() {
		return "FeedbackSubmitAnswerReqDTO [questionid=" + questionid + ", question=" + question + ", answer=" + answer
				+ "]";
	}

	

	public int getQuestionid() {
		return questionid;
	}



	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}



	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
	
}
