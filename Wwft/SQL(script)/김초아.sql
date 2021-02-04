IMAGE_AND_LIKE
  CREATE TABLE  "IMAGE_AND_LIKE" 
   (	"IMAGE_AND_LIKE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"ORIGINAL_IMAGE_NAME" VARCHAR2(200) , 
	"SAVE_IMAGE_NAME" VARCHAR2(200) ,
	"DELETE_IMAGE_STATE" CHAR(1) ,
	"POST_NO" NUMBER(10,0) NOT NULL, 
	"LIKE_WRITER" VARCHAR2(30) , 
	"IMAGE_AND_LIKE_STATE" CHAR(1) NOT NULL ENABLE, 
	 CONSTRAINT "IMAGE_AND_LIKE_PK" PRIMARY KEY ("IMAGE_AND_LIKE_NO") ENABLE );


post 테이블 컬럼 추가
ALTER TABLE post ADD SAVE_IMAGE_NAME VARCHAR(200);




POST
addPost

insert into post(post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name)
values(SEQ_POST_NO.NEXTVAL,SYSDATE,'확인중','금요일','1',1,'주말');


getPost

SELECT
post_no,post_reg_date,post_detail,post_writer,post_state,tree_no,album_name		
FROM post
WHERE post_no = 4;


UPDATE post
set
post_detail ='고쳐지고있나',
post_state ='0',
album_name ='수정앨범'
WHERE post_no  =11;







IMAGE AND LIKE

add imageAndLike

insert into  image_and_like( image_and_like_no,post_no,like_writer, image_and_like_state)
values(SEQ_image_and_like_NO.NEXTVAL,5,'구씨','1');


get LikeTotalCount

select COUNT(*)
from image_and_like
where image_and_like_state ='1' AND post_No ='5';


get imageAndLike

SELECT image_and_like_no,save_image_name
FROM image_and_like
WHERE post_no= 190
AND image_and_like_state = 0 
AND delete_image_state = 'N';





COMMENTS



addComment

insert into  comments( comment_no,comment_writer,comment_reg_date,comment_detail,post_no,tree_no)
values(SEQ_COMMENT_NO.NEXTVAL,'의의',SYSDATE,'오홍홍댓글이다',24,2);


getCommentList

select
comment_no,comment_writer,comment_reg_date,comment_detail,post_no,tree_no
from comments
where post_no=5;

