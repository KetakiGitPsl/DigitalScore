package com.psl.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.psl.bean.Score;

@Repository
public class ScoreDAOImpl implements IScoreDAO{
	
	@Autowired
	private JdbcTemplate template;

	public void postScore(Score s) {
		template.update("insert into score (proj_name, score) values ('" + s.getProjectName() + "', "+ s.getScore() + " )");
		
	}

	public List<Score> getScores() {
		return template.query("select proj_name, ROUND(avg(score)) score from score group by proj_name", new RowMapper<Score>(){

			public Score mapRow(ResultSet rs, int rownum) throws SQLException {
				Score s  = new Score();
				s.setProjectName(rs.getString("proj_name"));
				s.setScore(rs.getInt("score"));
				return s;
			}
			
			
		});
	}

	public Score getScore() {
		return template.queryForObject("select * from score where proj_id = 1",new RowMapper<Score>(){

			public Score mapRow(ResultSet rs, int rownum) throws SQLException {
				Score s  = new Score();
				s.setProjectName(rs.getString("proj_id"));
				s.setScore(rs.getInt("score"));
				return s;
			}
			
		});
	}
	
	

}
