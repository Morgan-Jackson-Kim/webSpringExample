package com.morganj.spring.lesson06.dao;

import org.apache.ibatis.annotations.Param;

public interface Lesson06NewUserDAO {
	public int insertNewUser(
			@Param("name")String name
			, @Param("yyyymmdd") String yyyymmdd
			, @Param("email") String email
			, @Param("introduce") String introduce);

}
