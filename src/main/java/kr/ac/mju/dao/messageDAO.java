package kr.ac.mju.dao;

import java.util.List;

import kr.ac.mju.model.message_charge;
import kr.ac.mju.model.message_plain;

public interface messageDAO {
	public List<message_plain> selectPlainMsg(message_plain msg);
	public int sendPlainMsg(message_plain msg);
	public List<message_charge> selectChargeMsg(message_charge msg);
	public int sendChargeMsg(message_charge msg);
}
