package com.psl.dao;

import java.util.List;

import com.psl.bean.Score;

public interface IScoreDAO {
	
	void postScore(Score s);
	List<Score> getScores();
	Score getScore();

}
