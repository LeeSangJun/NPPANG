package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.financial_log;
import kr.ac.mju.model.member_info;
import kr.ac.mju.model.moim;
import kr.ac.mju.model.moim_member;

public interface groupManagerDAO {
	public List<financial_log> selectLog(moim moim);
	public int insertLog(financial_log fin_log);
	public moim_member getGrade(moim_member moim_member);
	public List<member_info> get_Member(moim moim);

}
