package com.psl.bean;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="score")
public class Score {
	
	private int projectId;
	private int score;
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	@Override
	public String toString() {
		return "Score [projectId=" + projectId + ", score=" + score + "]";
	}
	
	

}
