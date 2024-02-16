package com.bank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bank.model.Account;

@Repository
public class daoImpl implements dao {

	@Autowired
	public SessionFactory factory;

	public void OpenAccount(Account details) {
		Session session = factory.openSession();
		session.save(details);

		session.beginTransaction().commit();
	}

	public String chekAc(String email, String pass) {
		Session session = factory.openSession();
		Account ac = session.get(Account.class, email);
		if (pass.equals(ac.getPass())) {
			return email;
		} else {
			return null;
		}

	}

	public Account showData(String email) {
		Session session = factory.openSession();
		Query querry = session.createQuery("from Account where email =  :en");
		querry.setParameter("en", email);
		Account ac = (Account) querry.getSingleResult();
		return ac;
	}

	public int showBalance(String email) {
		Session session = factory.openSession();
		Account ac = session.get(Account.class, email);
		int balance = ac.getBalance();
		return balance;
	}

	public int credit(String email, int ammount) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		Account ac = session.get(Account.class, email);
		int balance = ammount + showBalance(email);
		ac.setBalance(balance);
		session.saveOrUpdate(ac);
		tx.commit();

		return balance;
	}

	public int debit(String email, int ammount) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		Account ac = session.get(Account.class, email);
		if (ammount <= showBalance(email)) {
			int balance = showBalance(email) - ammount;
			ac.setBalance(balance);
			session.saveOrUpdate(ac);
			tx.commit();
			return balance;
		} else {
			return -1;
		}
	}

	public void delete(String email) {
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		Account ac = session.get(Account.class, email);
		session.delete(ac);
		tx.commit();
	}

}
