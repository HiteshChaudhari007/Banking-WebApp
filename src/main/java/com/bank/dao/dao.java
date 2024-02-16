package com.bank.dao;

import com.bank.model.Account;

public interface dao {

	void OpenAccount(Account details);

	String chekAc(String email, String pass);

	Account showData(String email);

	int showBalance(String email);

	int credit(String email, int ammount);

	int debit(String email, int ammount);

	void delete(String email);

}
