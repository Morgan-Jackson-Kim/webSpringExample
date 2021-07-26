package com.morganj.spring.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.morganj.spring.lesson03.bo.ReviewBO;
import com.morganj.spring.lesson03.model.Review;

@RestController
public class ReviewController {
	@Autowired
	private ReviewBO reviewBO;
	
	@RequestMapping("/lesson03/ex01")
	// /lesson03/ex01?id=3
	public Review ex01(
			@RequestParam("id") int id 
			//@RequestParam(value="id") int id //필수 요소 없으면 400 에러
			//@RequestParam(value="id",required = true) int id //필수 요소 없으면 400 에러
			//@RequestParam(value="id",required = false) int id //필수 아님
			//@RequestParam(value="id", defaultValue = "1") int id //디폴트 값 세팅
			
			) {
		
		return reviewBO.getReview(id);
	}
	
	@RequestMapping("/lesson03/ex02")
	public String ex02() {
		//int count = reviewBO.addReview(4, "콤비네이션 피자", "김바다", 4.5, "할인도 많이 받고 잘 먹었습니다.");
		
		Review review= new Review();
		review.setStoreId(2);
		review.setMenu("뿌링클");
		review.setUserName("김인규");
		review.setPoint(3.5);
		review.setReview("별로 맛 없었어요");
		
		int count = reviewBO.addReview(review);
		
		return "insert success " + count;
	}
}
