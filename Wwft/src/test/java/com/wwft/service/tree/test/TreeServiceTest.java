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

import com.wwft.common.web.Search;
import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
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
	
		
		tree.setUserId("동섭1");
		tree.setTreeName("동섭이네");
		tree.setSeedNo('1');
		tree.setTreeImageName("준영.jpg");
		tree.setCountryId("kor");
		tree.setFamilyMotto("즐겁게살자");
		tree.setActivityTotalPoint(20);
		
		
		treeService.addFamilyMotto(tree);
		
		System.out.println(tree);
		
	
		
		
		
		Assert.assertEquals("동섭1", tree.getUserId());
		Assert.assertEquals("동섭이네", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("준영.jpg", tree.getTreeImageName());
		Assert.assertEquals("kor", tree.getCountryId());
		Assert.assertEquals("즐겁게살자", tree.getFamilyMotto());
		Assert.assertEquals(20, tree.getActivityTotalPoint());
		
		

	}
	
	//@Test
	public void testUpdateFamilyMotto() throws Exception{
		
		Tree tree = treeService.getTree(62);
		System.out.println("확인:"+tree);
		
		
		tree.setFamilyMotto("맛있는고기");
		System.out.println("확인:"+tree);
		
		
		treeService.updateFamilyMotto(tree);
		
		tree = treeService.getTree(62);
		
		Assert.assertEquals("맛있는고기", tree.getFamilyMotto());
	}
	
	
	//@Test
	public void testRemoveFamilyMotto() throws Exception{
		
		Tree tree = treeService.getTree(62);
	System.out.println("확인1:"+tree);
	
	tree.setFamilyMotto("");
	
	treeService.removeFamilyMotto(tree);
	System.out.println("확인2:"+tree);
	
	Assert.assertEquals("", tree.getFamilyMotto());

	}
	
		
		


	//@Test
	public void testGetTree() throws Exception{
		
		Tree tree = new Tree();
		
		tree = treeService.getTree(62);
		
		System.out.println("확인:"+tree);
		
		Assert.assertEquals("user07", tree.getUserId());
		Assert.assertEquals("나무이름7", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("나무이미지이름", tree.getTreeImageName());
		Assert.assertEquals("eng", tree.getCountryId());
		Assert.assertEquals(null, tree.getFamilyMotto());
		Assert.assertEquals(10, tree.getActivityTotalPoint());
	}
	
	@Test
	public void testGetBucketList() throws Exception{
		
		
		Tree tree = new Tree();
		
		tree.setTreeNo(92);
		System.out.println("확인:"+tree);
		
	treeService.getBucketList(62);
	
		
		
		
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
	
	//@Test
	public void testUpdateBucketList() throws Exception{
		

		
		
		BucketList bucketList = new BucketList();
		
		bucketList.setBucketListNo(39);
		bucketList.setBucketListDetail("잘먹고 잘살자");
		bucketList.setStampState('0');
	

		
		treeService.updateBucketList(bucketList);
	
		Assert.assertEquals(39, bucketList.getBucketListNo());
		Assert.assertEquals("잘먹고 잘살자", bucketList.getBucketListDetail());
		Assert.assertEquals('0', bucketList.getStampState());
	}
		
	//@Test
	public void testRemoveBucketList() throws Exception{
			
		BucketList bucketList = new BucketList();
		
		bucketList.setBucketListNo(7);
		

		
		treeService.removeBucketList(bucketList);
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
		
	//@Test
	public void testAddTree() throws Exception{
		
		Tree tree = new Tree();
		
		tree.setUserId("염보");
		tree.setTreeName("염보네");
		tree.setTreeImageName("dd.jpg");
		tree.setSeedNo('0');
		tree.setFamilyMotto("유후");
		tree.setCountryId("kr");
		tree.setActivityTotalPoint(50);
		
		treeService.addTree(tree);
		
		Assert.assertEquals("염보", tree.getUserId());
		Assert.assertEquals("염보네", tree.getTreeName());
		Assert.assertEquals("dd.jpg", tree.getTreeImageName());
		Assert.assertEquals('0', tree.getSeedNo());
		Assert.assertEquals("유후", tree.getFamilyMotto());
		Assert.assertEquals("kr", tree.getCountryId());
		Assert.assertEquals(50, tree.getActivityTotalPoint());

		
		
	}
	
	//@Test
	public void testRemoveTree() throws Exception{
		
		Tree tree = new Tree();
		
		
		
		treeService.removeTree(85);
		
	}

	@Test
	public void testSearchTreeAndForestByForestName() throws Exception{
		
		Search search = new Search();
		
		search.setCurrentPage(1);
		search.setPageSize(1);
		search.setSearchCondition("0");
		search.setSearchKeyword("평택숲");
		Map<String, Object> map = treeService.searchForest(search);
		System.out.println("확인:"+map);
		
		
		List<Object> list = (List<Object>)map.get("list");
	 	Assert.assertEquals(1, list.size());

	}
	
		
	}
	 
		
		
		
	
	
	
		
		
		
		
		
		
		

		
	
	
	

	  
		
		

	

	
	
	
	
		
		
		
		

	



		



	
	


