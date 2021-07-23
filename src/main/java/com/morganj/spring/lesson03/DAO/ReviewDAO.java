package com.morganj.spring.lesson03.DAO;

import org.springframework.stereotype.Repository;

import com.morganj.spring.lesson03.model.Review;

@Repository
public interface ReviewDAO {
	
	public Review selectReview(int id);
	
}
