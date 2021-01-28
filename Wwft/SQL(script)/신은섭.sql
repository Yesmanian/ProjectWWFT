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
		VALUES	 (seq_tree_no.nextval, '신은섭' , '은섭이네' , '1',  '이남우.jpg' , 
							'kor' , '건강하게살자' , 10);

//updateFamilyMotto
	UPDATE tree
	   	set
	   	 family_motto = '바르게살자'
	   	WHERE tree_no = 9;
	   	
//removeFamilyMotto
UPDATE tree 
 	set
	   	 family_motto = NULL
	   	WHERE tree_no = 58;
	   	
// 나무 숲 연관테이블 
CREATE TABLE  "TREE_FOREST" 
   (   "TREE_AND_FOREST_NO" NUMBER NOT NULL ENABLE, 
   "FOREST_NO" NUMBER , 
   "TREE_NO" NUMBER NOT NULL ENABLE, 
   "FOREST_ENTER_REG_DATE" DATE, 
    CONSTRAINT "TREE_FOREST_FK" FOREIGN KEY ("FOREST_NO")
     REFERENCES  "FOREST" ("FOREST_NO") ON DELETE CASCADE ENABLE, 
    CONSTRAINT "TREE_FOREST_FK2" FOREIGN KEY ("TREE_NO")
     REFERENCES  "TREE" ("TREE_NO") ON DELETE CASCADE ENABLE
   );
