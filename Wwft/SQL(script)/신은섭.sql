SELECT * FROM tree;
SELECT * FROM bucketList;

DESC bucketList;
DESC tree;


//getTree
 SELECT
	tree_no , user_id , tree_name , seed_no ,  tree_image_name ,  country_id , family_motto , activity_total_point 		
	FROM tree
	WHERE tree_no = 1;           

//addBucketList 
INSERT
		INTO tree( tree_no , user_id , tree_name , seed_no , tree_image_name, country_id, family_motto, activity_total_point)
		VALUES	 (seq_tree_no.nextval, '신은섭' , '은섭이네' , '1',  '이남우.jpg' , 
							'kor' , '건강하게살자' , 10);

//updateBucketList
	UPDATE tree
	   	set
	   	 family_motto = '바르게살자'
	   	WHERE tree_no = 9;
	   	
//removeBucketList
DELETE tree 
WHERE family_motto = '바르게살자'
