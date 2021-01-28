package com.wwft.service.admin.test;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.admin.AdminService;
import com.wwft.service.domain.Report;
import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeService;

import junit.framework.Assert;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})

public class AdminServiceTest {
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	
	
	
	@Test
	public void addReport() throws Exception{
		
		Report report = new Report();
		
		report.setReporterTreeNo(21);
		report.setReportedTreeNo(22);
		report.setReportedPostNo(10);
		report.setReportType('0');
		report.setReportState('0');
		
		
		
	}
	
	
	
	//@Test
	/*
	 * public void tesAddFamilyMotto() throws Exception{
	 * 
	 * Tree tree = new Tree();
	 * 
	 * 
	 * tree.setUserId("준영"); tree.setTreeName("준영이네"); tree.setSeedNo("2");
	 * tree.setTreeImageName("준영.jpg"); tree.setCountryId("kor");
	 * tree.setFamilyMotto("행복"); tree.setActivityTotalPoint(20);
	 * 
	 * 
	 * treeService.addFamilyMotto(tree);
	 * 
	 * System.out.println(tree);
	 * 
	 * tree = treeService.getTree(51);
	 * 
	 * System.out.println("확인:"+tree.toString());
	 * 
	 * Assert.assertEquals("준영", tree.getUserId()); Assert.assertEquals("준영이네",
	 * tree.getTreeName()); Assert.assertEquals("2", tree.getSeedNo());
	 * Assert.assertEquals("준영.jpg", tree.getTreeImageName());
	 * Assert.assertEquals("kor", tree.getCountryId()); Assert.assertEquals("행복",
	 * tree.getFamilyMotto()); Assert.assertEquals(20,
	 * tree.getActivityTotalPoint());
	 * 
	 * 
	 * 
	 * }
	 */
	


	}
		