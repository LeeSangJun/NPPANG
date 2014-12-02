package kr.ac.mju.dao;

import kr.ac.mju.model.test;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

public class testDAO {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public test getTestModel(){
		return (test)sqlSession.selectOne("mybatistest.getTestData");
	}
}
