package com.wwft.service.activitytest.test;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.activitypoint.ActivityPointService;
import com.wwft.service.domain.ActivityPoint;

//@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml", "classpath:config/context-aspect.xml",
		"classpath:config/context-mybatis.xml", "classpath:config/context-transaction.xml" })
public class activityPointServiceTest {

	@Autowired
	@Qualifier("activityPointServiceImpl")
	private ActivityPointService activityPointService;

//	@Value("#{activityPointProperties['post.type']}")
//	private char activityType;
//	@Value("#{activityPointProperties['post.point']}")
//	private int rewardPoint;
//	@Value("#{activityPointProperties['post.limit']}")
//	private int limitCount;

//	@Value("#{activityPointProperties['attendanceCheck.type']}")
//	private char activityType;
//	@Value("#{activityPointProperties['attendanceCheck.point']}")
//	private int rewardPoint;
//	@Value("#{activityPointProperties['attendanceCheck.limit']}")
//	private int limitCount;

//	@Value("#{activityPointProperties['comment.type']}")
//	private char activityType;
//	@Value("#{activityPointProperties['comment.point']}")
//	private int rewardPoint;
//	@Value("#{activityPointProperties['comment.limit']}")
//	private int limitCount;

	@Value("#{activityPointProperties['like.type']}")
	private char activityType;
	@Value("#{activityPointProperties['like.point']}")
	private int rewardPoint;
	@Value("#{activityPointProperties['like.limit']}")
	private int limitCount;


	@Test
	public void testinsertActivityTest() throws Exception {

		ActivityPoint activityPoint = new ActivityPoint();
		activityPoint.setActivityType(activityType); // 0번은 출석 10점 하루마다 , 1번은 게시글 10점 최대 5번 max50점, 2번은 댓글 3점 최대 10번 max30점, 3번은
											// 호감도 2점 최대 5번 max10점
		activityPoint.setTreeNo(1);
		activityPoint.setPoint(rewardPoint);
		activityPoint.setLimitCount(limitCount);
//		LocalDateTime localDateTime = LocalDateTime.now().withNano(0);
//		localDateTime.minusDays(1);
//		System.out.println("오늘날짜"+localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
	
		
		
			activityPointService.addActivityPoint(activityPoint);
	

//		activityPointService.addActivitiPoint(activityPoint);

		System.out.println(activityPointService.getActivityCount(activityPoint));
		// 출석은 targetNo가 없다 targetNo는 db에서 null 허용 treeNo는 널 미허용
//		Assert.assertEquals(activityPoint.getPoint(), );
//		Assert.assertEquals(5, comment.getCommentPostNo());
//		Assert.assertEquals(1, comment.getCommentTreeNo());
//		Assert.assertEquals("테스트네댓글", comment.getCommentWriter());

	}

	//@Test
	public void testActivityTotalPoint() throws Exception {

		int treeNo = 1;

		int totalPoint = activityPointService.getActivityTotalPoint(treeNo);
		System.out.println(totalPoint);
		System.out.println(
				"활동종류 : " + activityType + "::::::" + "지급 포인트 :" + rewardPoint + "::::::" + "제한 횟수" + limitCount);
//		Assert.assertEquals(totalPoint,);

	}

}
