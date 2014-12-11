package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.user_info;

public interface userinfoDAO {
//	private SqlSession sqlSession;

	public List selectAll();	//모든 행 가져오기

	public int join(user_info user_info);	//회원가입

	public user_info loginCheck(user_info user_info);

/*
	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}

	public int insert_userInfo(user_info user){
		int id = -1;
		id = sqlSession.insert("user_info.userInfo_insert", user );
		return id;
	}

	public user_info select_userInfo(user_info user){
		user_info userinfo;
		userinfo = (user_info) sqlSession.selectOne("user_info.userInfo_select");
		return userinfo;
	}


	public boolean is_loginAvailable(String userid, String userpwd){
		if((user_info)sqlSession.selectOne()){
			return true;
		}
		return false;
	}*/

}
