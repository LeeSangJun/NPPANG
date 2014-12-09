package kr.ac.mju.dao;

import kr.ac.mju.model.user_info;

import org.apache.ibatis.session.SqlSession;

public class userinfoDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public int insert_userInfo(user_info user){
		int id = -1;

		id = sqlSession.insert("user_info.userInfo_insert", user );
		return id;
	}
}
