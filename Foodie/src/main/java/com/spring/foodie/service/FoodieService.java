package com.spring.foodie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.foodie.common.*;
import com.spring.foodie.model.*;

//=== #31. Service 선언 === 
//트랜잭션 처리를 담당하는곳 , 업무를 처리하는 곳, 비지니스(Business)단
@Service
public class FoodieService implements InterFoodieService {

	/*
	     주문
	   ==> 주문테이블 insert (DAO 에 있는 주문테이블에 insert 관련 method 호출) 
	   ==> 제품테이블에 주문받은 제품의 개수는 주문량 만큼 감소해야 한다 (DAO 에 있는 제품테이블에 update 관련 method 호출) 
	   ==> 장바구니에서 주문을 한 경우이라면 장바구니 비우기를 해야 한다 (DAO 에 있는 장바구니테이블에 delete 관련 method 호출) 
	   ==> 회원테이블에 포인트(마일리지)를 증가시켜주어야 한다 (DAO 에 있는 회원테이블에 update 관련 method 호출) 
	   
	     위에서 호출된 4가지의 메소드가 모두 성공되었다면 commit 해주고
	   1개라도 실패하면 rollback 해준다. 이러한 트랜잭션처리를 해주는 곳이  Service 단이다.      
	*/
	
	// === #34. 의존객체 주입하기(DI: Dependency Injection) ===
	@Autowired
	private InterFoodieDAO dao;
	// Type 에 따라 Spring 컨테이너가 알아서 bean 으로 등록된 com.spring.model.BoardDAO 의 bean 을  dao 에 주입시켜준다. 
    // 그러므로 dao 는 null 이 아니다.

	
	// === #45. 양방향 암호화 알고리즘인 AES256 를 사용하여 복호화 하기 위한 클래스 의존객체 주입하기(DI: Dependency Injection) ===
	//@Autowired
	// private AES256 aes;
	// Type 에 따라 Spring 컨테이너가 알아서 bean 으로 등록된 com.spring.board.common.AES256 의 bean 을  aes 에 주입시켜준다. 
    // 그러므로 aes 는 null 이 아니다.
	// com.spring.board.common.AES256 의 bean 은 /webapp/WEB-INF/spring/appServlet/servlet-context.xml 파일에서 bean 으로 등록시켜주었음.  
	
	//@Autowired     // Type에 따라 알아서 Bean 을 주입해준다.
	//private FileManager fileManager;
	
	
	
	
}