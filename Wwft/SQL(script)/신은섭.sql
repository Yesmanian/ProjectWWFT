SELECT * FROM tree;
SELECT * FROM bucketList;

DESC bucketList;
DESC tree;


//getTree
 SELECT
	tree_no , user_id , tree_name , seed_no ,  tree_image_name ,  country_id , family_motto , activity_total_point 		
	FROM tree
	WHERE tree_no = 1;           

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
