package com.wwft.service.tree.test;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.domain.TreeForest;
import com.wwft.service.tree.TreeService;

import junit.framework.Assert;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
		"classpath:config/context-aspect.xml",
		"classpath:config/context-mybatis.xml",
		"classpath:config/context-transaction.xml"})

public class TreeServiceTest {
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	
	
	//@Test
	public void tesAddFamilyMotto() throws Exception{
		
		Tree tree = new Tree();
	
		
		tree.setUserId("동섭");
		tree.setTreeName("동섭이네");
		tree.setSeedNo('1');
		tree.setTreeImageName("준영.jpg");
		tree.setCountryId("kor");
		tree.setFamilyMotto("즐겁게살자");
		tree.setActivityTotalPoint(20);
		
		
		treeService.updateFamilyMotto(tree);
		
		System.out.println(tree);
		
	
		
		
		
		Assert.assertEquals("동섭", tree.getUserId());
		Assert.assertEquals("동섭이네", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("준영.jpg", tree.getTreeImageName());
		Assert.assertEquals("kor", tree.getCountryId());
		Assert.assertEquals("즐겁게살자", tree.getFamilyMotto());
		Assert.assertEquals(20, tree.getActivityTotalPoint());
		
		

	}
	
	//@Test
	public void testUpdateFamilyMotto() throws Exception{
		
		Tree tree = treeService.getUserTree(62);
		System.out.println("확인:"+tree);
		
		
		tree.setFamilyMotto("맛있는고기");
		System.out.println("확인:"+tree);
		
		
		treeService.updateFamilyMotto(tree);
		
		tree = treeService.getUserTree(62);
		
		Assert.assertEquals("맛있는고기", tree.getFamilyMotto());
	}
	
	

		


	//@Test
	public void testGetTree() throws Exception{
		
		Tree tree = new Tree();
		
//		tree = treeService.getTree(62);
		
		System.out.println("확인:"+tree);
		
		Assert.assertEquals("user07", tree.getUserId());
		Assert.assertEquals("나무이름7", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("나무이미지이름", tree.getTreeImageName());
		Assert.assertEquals("eng", tree.getCountryId());
		Assert.assertEquals(null, tree.getFamilyMotto());
		Assert.assertEquals(10, tree.getActivityTotalPoint());
	}
	
	//@Test
//	public void testGetBucketList() throws Exception{
//		
//		
//		List<BucketList> bucketList = treeService.getBucketList(3);
//		System.out.println("확인:"+bucketList);
//		
//		
//		Assert.assertEquals(3, bucketList.size());
//	}
	
	
	//@Test
	public void testAddTree() throws Exception{
		
		Tree tree = new Tree();
		
		tree.setUserId("배고픈사람");
		tree.setTreeName("좋은나무");
		tree.setSeedNo('0');
		tree.setTreeImageName("낙엽지는나무.jpg");
		tree.setCountryId("kr");
		tree.setFamilyMotto("진인사대천명");
		tree.setActivityTotalPoint(100);
		
		treeService.addTree(tree);
		
		Assert.assertEquals("배고픈사람", tree.getUserId());
		Assert.assertEquals("좋은나무", tree.getTreeName());
		Assert.assertEquals('0', tree.getSeedNo());
		Assert.assertEquals("낙엽지는나무.jpg", tree.getTreeImageName());
		Assert.assertEquals("kr", tree.getCountryId());
		Assert.assertEquals("진인사대천명", tree.getFamilyMotto());
		Assert.assertEquals(100, tree.getActivityTotalPoint());
		
	}
	
	//@Test
	public void testRemoveTree() throws Exception{
		
		Tree tree = new Tree();
		
		
		
		treeService.removeTree(3);
	
		
		
	}
	
	//@Test
	public void testAddTreeForest() throws Exception{
		
		TreeForest tf = new TreeForest();
	
		tf.setTreeNo(1);
		tf.setForestNo(1);
		
		treeService.addTreeForest(tf);
		
		Assert.assertEquals(1, tf.getTreeNo());
		Assert.assertEquals(1, tf.getForestNo());
	}
	
	

	//@Test
	public void testAddBucketList() throws Exception{
		
	   BucketList bucketList = new BucketList();
	   
	  
	   bucketList.setBucketListWriter("할머니");
	   bucketList.setBucketListDetail("만수무강");
	   bucketList.setStampState('1');
	   bucketList.setTreeNo(11);
	   
	   treeService.addBucketList(bucketList);
	   
	   System.out.println("확인:"+bucketList);

	
	Assert.assertEquals("할머니", bucketList.getBucketListWriter());
	Assert.assertEquals("만수무강", bucketList.getBucketListDetail());
	Assert.assertEquals('1', bucketList.getStampState());
	Assert.assertEquals(11, bucketList.getTreeNo());

	}
	
//	@Test
//	public void testUpdateBucketList() throws Exception{
//		
//	
//		Map<String, Object> map = treeService.getBucketList(23);
//		
//		
//		
//		
//		bucketList.setBucketListDetail("집가자");
//		bucketList.setStampState('1');
//	
//	
//		
//		treeService.updateBucketList(bucketList);
//	
//		Assert.assertEquals(23, bucketList.getBucketListNo());
//		Assert.assertEquals("집가자", bucketList.getBucketListDetail());
//		Assert.assertEquals('1', bucketList.getStampState());
//	}
//		
	//@Test
	public void testRemoveBucketList() throws Exception{
			
		//BucketList bucketList = new BucketList();
		
		//bucketList.setBucketListNo(167);
		
		treeService.removeBucketList(167);
		
		
	}
	
	//@Test
	public void testGetProfileIntroduceList() throws Exception{
		
		List<Profile> profile = treeService.getProfileIntroduceList(62);
		System.out.println("확인:"+profile);
		
		
		Assert.assertEquals(4, profile.size());
	}
	
	
	//@Test 의연이한테 forest VO 값 다시확인
	public void testGetForestList() throws Exception{
		
		List<Forest> forest = treeService.getForestList(3);
		
		
		Assert.assertEquals(1, forest.size());
	}

	//@Test
	//public void testGetTreeRanking() throws Exception{
		
	//	List<ActivityPoint> ap = treeService.getTreeRanking(62);
		
		//System.out.println(ap);
		


	
		
	}
	 
		
		
		
	
	
	
		
		
		
		
		
		
		

		
	
	
	

	  
		
		

	

	
	
	
	
		
		
		
		

	



		



	
	


