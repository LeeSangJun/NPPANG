package kr.ac.mju.dao;

import kr.ac.mju.model.User_Info;

import org.apache.ibatis.session.SqlSession;

public class userinfoDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public int insert_userInfo(User_Info user){
		int id = -1;

		id = sqlSession.insert("mybatistest.userInfo_insert", user );
		return id;
	}
}
