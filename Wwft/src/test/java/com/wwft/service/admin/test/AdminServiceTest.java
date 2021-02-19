package com.wwft.service.admin.test;


import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.common.web.Search;
import com.wwft.service.admin.AdminService;
import com.wwft.service.domain.Report;
import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeService;

import junit.framework.Assert;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-mail.xml",
										"classpath:config/context-transaction.xml"})

public class AdminServiceTest {
	
	@Autowired
	@Qualifier("adminServiceImpl")
	private AdminService adminService;
	
	
	
	
	@Test
	public void addReport() throws Exception{
		
		Report report = new Report();
		
		report.setReporterTreeNo(22);
		report.setReportedTreeNo(23);
		report.setReportedPostNo(10);
		report.setReportType('0');
		report.setReportState('0');
		
		adminService.addReport(report);
		
		report.setReportedPostNo(11);
		adminService.addReport(report);
		report.setReportedPostNo(12);
		adminService.addReport(report);
		report.setReportedPostNo(13);
		adminService.addReport(report);
		report.setReportedPostNo(14);
		adminService.addReport(report);
		report.setReportedPostNo(15);
		adminService.addReport(report);
	
		
	}
	
//	@Test
	public void listReport() throws Exception{
		
		Search search = new Search();
		search.setCurrentPage(1);
		search.setPageSize(10);
		Map<String, Object> map = adminService.getReportList(search);
		
		List<Object> list = (List<Object>)map.get("list");
		Assert.assertEquals(3, list.size());
		System.out.println(list);
		Integer totalCount = (Integer)map.get("totalCount");
	 	System.out.println(totalCount);
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
		