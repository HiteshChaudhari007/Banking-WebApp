package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.bank.dao.dao;
import com.bank.model.Account;

@org.springframework.stereotype.Service
public class ServiceImpl implements Service {

	@Autowired
	public dao dao1;

	public void openAc(Account details) {
		dao1.OpenAccount(details);
	}

	public String chekAc(String email, String pass) {

		return dao1.chekAc(email, pass);
	}

	public Account showData(String email) {

		return dao1.showData(email);
	}

	public int showBalance(String email) {
		// TODO Auto-generated method stub
		return dao1.showBalance(email);
	}

	public int credit(String email, int ammount) {

		return dao1.credit(email, ammount);
	}

	public int debit(String email, int ammount) {
		return dao1.debit(email, ammount);
	}

	public void delete(String email) {
		dao1.delete(email);
	}

}
