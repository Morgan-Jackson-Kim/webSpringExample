package com.morganj.spring.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.morganj.spring.lesson04.dao.NewUserDAO;
import com.morganj.spring.lesson04.model.NewUser;

@Service
public class NewUserBO {
	
	@Autowired
	private NewUserDAO newUserDAO;
	
	public int addNewUser(String name, String yyyymmdd,String email,String introduce) {
		return newUserDAO.insertNewUser(name, yyyymmdd, email, introduce);
	}
	
	public NewUser getLastUser() {
		return newUserDAO.selectLastUser();
	}
}
