package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.moim;
import kr.ac.mju.model.moim_member;
import kr.ac.mju.model.user_info;

public interface moimDAO {
	public List selectAll();	//모든 행 가져오기
	public int create(moim moim); //모임 만들기
	public void join_moim(moim_member moim_member);
	public List<moim_member> myMoim(moim_member moim_member);
	public moim selectMoim(moim_member moim_member);
}
