package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.message_plain;

public interface messageDAO {
	public List<message_plain> selectPlainMsg(message_plain msg);
	public int sendPlainMsg(message_plain msg);
}
