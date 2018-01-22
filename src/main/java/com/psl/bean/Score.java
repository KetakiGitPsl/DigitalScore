package com.psl.bean;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="score")
public class Score {
	
	private String projectName;
	private int score;
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Score [projectName=" + projectName + ", score=" + score + "]";
	}
	
	
	
	
	
	

}
