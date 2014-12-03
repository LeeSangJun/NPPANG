package kr.ac.mju.dao;

import kr.ac.mju.model.user_info;

import org.apache.ibatis.session.SqlSession;

public class userDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public user_info getUserId(int number){
		return (user_info)sqlSession.selectOne("user_info.getUserId", number);
	}
}
