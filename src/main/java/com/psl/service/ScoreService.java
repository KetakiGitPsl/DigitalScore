package com.psl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psl.bean.Score;
import com.psl.dao.IScoreDAO;

@Service
public class ScoreService {
	
	@Autowired
	private IScoreDAO dao;
	
	public void postScore(Score s){
		dao.postScore(s);
	}

	
	public List<Score> getScores(){
		List<Score> list = dao.getScores();
		for (Score score : list) {
			System.out.println(score);
		}
		return list;
	}
	
	public Score getScore(){
		return dao.getScore();
	}
	
}
