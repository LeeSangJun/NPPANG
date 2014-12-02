package kr.ac.mju.dao;

import kr.ac.mju.model.User_Info;

import org.apache.ibatis.session.SqlSession;

public class userDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public User_Info getUserId(int number){
		return (User_Info)sqlSession.selectOne("user_info.getUserId", number);
	}
}
