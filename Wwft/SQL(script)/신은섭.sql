SELECT * FROM tree;
SELECT * FROM bucketList;

DESC bucketList;
DESC tree;

//getTree �����̹����� �´� �� �����Ҷ� ����
SELECT
		t.tree_no, t.user_id , t.tree_name , t.seed_no ,  t.tree_image_name ,  t.country_id , t.family_motto , t.activity_total_point 		
		FROM 
		tree t, tree_image i
		WHERE t.seed_no = i.seed_no
		AND t.tree_no = #{value}
		AND  t.activity_total_point BETWEEN i.activity_point_start AND i.activity_point_end

//getTree
 SELECT
	tree_no , user_id , tree_name , seed_no ,  tree_image_name ,  country_id , family_motto , activity_total_point 		
	FROM tree
	WHERE tree_no = 1; 
	
//addTree	
INSERT INTO tree  (tree_no, user_id, tree_name, seed_no, tree_image_name, country_id, family_motto, activity_total_point)
   VALUES(SEQ_TREE_NO.nextval, '������', '�����', '0', '���糪��.jpg', 'kr', '���ʺ���',  100);
	
	   	
//removeTree	   	
	DELETE  FROM tree
	 WHERE tree_no = 10;

//addFamilyMotto 
INSERT
		INTO tree( tree_no , user_id , tree_name , seed_no , tree_image_name, country_id, family_motto, activity_total_point)
		VALUES	 (seq_tree_no.nextval, '������' , '�����̳�' , '1',  '�̳���.jpg' , 
							'kor' , '�ǰ��ϰԻ���' , 10);

//updateFamilyMotto
	UPDATE tree
	   	set
	   	 family_motto = '�ٸ��Ի���'
	   	WHERE tree_no = 9;
	   	
//removeFamilyMotto
UPDATE tree 
 	set
	   	 family_motto = NULL
	   	WHERE tree_no = 58;
	   	
	   	
	   	
//addTreeForest	   	
		INSERT INTO tree_forest  (tree_and_forest_no, forest_no, tree_no, forest_enter_reg_date)
    VALUES(SEQ_tree_and_forest_no.nextval, 1, 1, SYSDATE);
	   	
	