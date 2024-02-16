package com.bank.service;

import com.bank.model.Account;

public interface Service {

	void openAc(Account details);

	String chekAc(String email, String pass);

	Account showData(String email);

	int showBalance(String email);

	int credit(String email, int ammount);

	int debit(String email, int ammount);

	void delete(String email);

}
