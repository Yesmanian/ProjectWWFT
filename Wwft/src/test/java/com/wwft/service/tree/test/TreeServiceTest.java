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
	
		
		tree.setUserId("����");
		tree.setTreeName("�����̳�");
		tree.setSeedNo('1');
		tree.setTreeImageName("�ؿ�.jpg");
		tree.setCountryId("kor");
		tree.setFamilyMotto("��̰Ի���");
		tree.setActivityTotalPoint(20);
		
		
		treeService.updateFamilyMotto(tree);
		
		System.out.println(tree);
		
	
		
		
		
		Assert.assertEquals("����", tree.getUserId());
		Assert.assertEquals("�����̳�", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("�ؿ�.jpg", tree.getTreeImageName());
		Assert.assertEquals("kor", tree.getCountryId());
		Assert.assertEquals("��̰Ի���", tree.getFamilyMotto());
		Assert.assertEquals(20, tree.getActivityTotalPoint());
		
		

	}
	
	//@Test
	public void testUpdateFamilyMotto() throws Exception{
		
		Tree tree = treeService.getUserTree(62);
		System.out.println("Ȯ��:"+tree);
		
		
		tree.setFamilyMotto("���ִ°��");
		System.out.println("Ȯ��:"+tree);
		
		
		treeService.updateFamilyMotto(tree);
		
		tree = treeService.getUserTree(62);
		
		Assert.assertEquals("���ִ°��", tree.getFamilyMotto());
	}
	
	

		


	//@Test
	public void testGetTree() throws Exception{
		
		Tree tree = new Tree();
		
//		tree = treeService.getTree(62);
		
		System.out.println("Ȯ��:"+tree);
		
		Assert.assertEquals("user07", tree.getUserId());
		Assert.assertEquals("�����̸�7", tree.getTreeName());
		Assert.assertEquals('1', tree.getSeedNo());
		Assert.assertEquals("�����̹����̸�", tree.getTreeImageName());
		Assert.assertEquals("eng", tree.getCountryId());
		Assert.assertEquals(null, tree.getFamilyMotto());
		Assert.assertEquals(10, tree.getActivityTotalPoint());
	}
	
	//@Test
//	public void testGetBucketList() throws Exception{
//		
//		
//		List<BucketList> bucketList = treeService.getBucketList(3);
//		System.out.println("Ȯ��:"+bucketList);
//		
//		
//		Assert.assertEquals(3, bucketList.size());
//	}
	
	
	//@Test
	public void testAddTree() throws Exception{
		
		Tree tree = new Tree();
		
		tree.setUserId("����»��");
		tree.setTreeName("��������");
		tree.setSeedNo('0');
		tree.setTreeImageName("�������³���.jpg");
		tree.setCountryId("kr");
		tree.setFamilyMotto("���λ��õ��");
		tree.setActivityTotalPoint(100);
		
		treeService.addTree(tree);
		
		Assert.assertEquals("����»��", tree.getUserId());
		Assert.assertEquals("��������", tree.getTreeName());
		Assert.assertEquals('0', tree.getSeedNo());
		Assert.assertEquals("�������³���.jpg", tree.getTreeImageName());
		Assert.assertEquals("kr", tree.getCountryId());
		Assert.assertEquals("���λ��õ��", tree.getFamilyMotto());
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
	   
	  
	   bucketList.setBucketListWriter("�ҸӴ�");
	   bucketList.setBucketListDetail("��������");
	   bucketList.setStampState('1');
	   bucketList.setTreeNo(11);
	   
	   treeService.addBucketList(bucketList);
	   
	   System.out.println("Ȯ��:"+bucketList);

	
	Assert.assertEquals("�ҸӴ�", bucketList.getBucketListWriter());
	Assert.assertEquals("��������", bucketList.getBucketListDetail());
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
//		bucketList.setBucketListDetail("������");
//		bucketList.setStampState('1');
//	
//	
//		
//		treeService.updateBucketList(bucketList);
//	
//		Assert.assertEquals(23, bucketList.getBucketListNo());
//		Assert.assertEquals("������", bucketList.getBucketListDetail());
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
		System.out.println("Ȯ��:"+profile);
		
		
		Assert.assertEquals(4, profile.size());
	}
	
	
	//@Test �ǿ������� forest VO �� �ٽ�Ȯ��
	public void testGetForestList() throws Exception{
		
		List<Forest> forest = treeService.getForestList(3);
		
		
		Assert.assertEquals(1, forest.size());
	}

	//@Test
	//public void testGetTreeRanking() throws Exception{
		
	//	List<ActivityPoint> ap = treeService.getTreeRanking(62);
		
		//System.out.println(ap);
		


	
		
	}
	 
		
		
		
	
	
	
		
		
		
		
		
		
		

		
	
	
	

	  
		
		

	

	
	
	
	
		
		
		
		

	



		



	
	


