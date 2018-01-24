package com.psl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.psl.bean.Score;
import com.psl.service.ScoreService;

@Controller
public class ScoreController {
	
	@Autowired
	private ScoreService service;
	
	
	@RequestMapping(value="/score", method=RequestMethod.POST)
	public @ResponseBody Score postScore(@RequestBody Score s){
		service.postScore(s);
		System.out.println("Posted [Project:" + s.getProjectName() + ", Score:" + s.getScore() + "]");
		return s;
		
	}
	
	@RequestMapping(value="/score", method=RequestMethod.GET)
	public @ResponseBody List<Score> getAllScores(){
		return service.getScores();
	}
	
	@RequestMapping(value="/score1", method=RequestMethod.GET)
	public @ResponseBody Score getScore(){
		return service.getScore();
	}
	
	@RequestMapping(value="/scoreCard", method=RequestMethod.GET)
	public String getScoreCard(){
		return "chart";
		
	}
	

}
