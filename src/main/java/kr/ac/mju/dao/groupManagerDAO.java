package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.financial_log;
import kr.ac.mju.model.moim;

public interface groupManagerDAO {
	public List<financial_log> selectLog(moim moim);
	public int insertLog(financial_log fin_log);
	
}
