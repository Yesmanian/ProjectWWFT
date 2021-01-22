package com.wwft.service.tree.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeService;

import junit.framework.Assert;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})

public class TreeServiceTest {
	
	//@Autowired
	//@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	
//	public void testGetTree() throws Exception{
//		
//		Tree tree = new Tree();
//		
//		tree = treeService.getTree(59);
//		
//		Assert.assertEquals("testUserId", user.getUserId());

	
	
	//@Test
	public void tesAddFamilyMotto() throws Exception{
		
		Tree tree = new Tree();
	
		
		tree.setUserId("준영");
		tree.setTreeName("준영이네");
		tree.setSeedNo("2");
		tree.setTreeImageName("준영.jpg");
		tree.setCountryId("kor");
		tree.setFamilyMotto("행복");
		tree.setActivityTotalPoint(20);
		
		
		treeService.addFamilyMotto(tree);
		
		System.out.println(tree);
		
		tree = treeService.getTree(51);
		
		System.out.println("확인:"+tree.toString());
		
		Assert.assertEquals("준영", tree.getUserId());
		Assert.assertEquals("준영이네", tree.getTreeName());
		Assert.assertEquals("2", tree.getSeedNo());
		Assert.assertEquals("준영.jpg", tree.getTreeImageName());
		Assert.assertEquals("kor", tree.getCountryId());
		Assert.assertEquals("행복", tree.getFamilyMotto());
		Assert.assertEquals(20, tree.getActivityTotalPoint());
		
		

	}
	
	//@Test
	public void testUpdateFamilyMotto() throws Exception{
		
		Tree tree = treeService.getTree(58);
		System.out.println("확인:"+tree);
		
		
		tree.setFamilyMotto("맛있는고기");
		System.out.println("확인:"+tree);
		
		
		treeService.updateFamilyMotto(tree);
		
		Assert.assertEquals("맛있는고기", tree.getFamilyMotto());
	}
	
	//@Test
//	public void testRemoveFamilyMotto() throws Exception{
//		
//		Tree tree = treeService.getTree(52);
//		System.out.println("확인1:"+tree);
//		
//		
//		tree.setFamilyMotto("요미");
//		System.out.println("확인2:"+tree);
//
//		treeService.removeFamilyMotto(tree);
//		
//		
//		Assert.assertEquals("요미", tree.getFamilyMotto());

	}
		
		

	
	
	
	


