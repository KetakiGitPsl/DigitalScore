package com.psl.bean;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement(name="scores")
public class Scores {
	
	private String label;
	private String y;
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	
	

}
