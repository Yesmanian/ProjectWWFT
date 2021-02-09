SELECT
		 	FOREST_NO,FOREST_NAME,FOREST_CTREATER_TREE_NO,INVITE_POSSIBLE_STATE,FOREST_NAME_CHANGE_POSSIBLE_STATE,
		 	FOREST_INFORM_TEXT,FOREST_INFORM_WRITER,FOREST_INFORM_REG_DATE
		FROM FOREST 
		WHERE FOREST_NO = #{value}
		
		
INSERT
		INTO FOREST(FOREST_NO,FOREST_NAME,FOREST_CTREATER_TREE_NO,INVITE_POSSIBLE_STATE,
					FOREST_NAME_CHANGE_POSSIBLE_ST,FOREST_CREATE_TIME,FOREST_INFORM_TEXT,FOREST_INFORM_WRITER,FOREST_INFORM_REG_DATE ) 
		VALUES	 (	SEQ_FOREST_NO.nextval,#{forestName},#{forestCreaterTreeNo},
				#{invitePossibleState},#{forestNameChangePossibleState},SYSDATE,
				#{forestInformText},#{forestInformWriter},NULL )
				
				INSERT
		INTO FOREST(FOREST_NO,FOREST_NAME,FOREST_CTREATER_TREE_NO,INVITE_POSSIBLE_STATE,
					FOREST_NAME_CHANGE_POSSIBLE_ST,FOREST_CREATE_TIME,FOREST_INFORM_TEXT,FOREST_INFORM_WRITER,FOREST_INFORM_REG_DATE ) 
		VALUES	 (	SEQ_FOREST_NO.nextval,'YesYouCan',1,
				1,1,SYSDATE,
				'yesyoucan','youcan',sysdate )
				

				

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
   
INSERT 
		INTO TREE_FOREST(TREE_AND_FOREST_NO,FOREST_NO,TREE_NO,FOREST_ENTER_REG_DATE)
		VALUES (SEQ_TREE_AND_FOREST_NO.nextval,21,1,SYSDATE);
		

select tree.*
from tree,(select * from tree_forest where forest_no = 21) treef
where tree.tree_no = treef.tree_no;


<!-- SQL : SELECT REST LIST -->
	<select id="getTreeRestList" parameterType="java.util.HashMap" resultMap="treeSelectMap">
		select rt.*
    		from (select rownum rnum,tree.*
                from tree,(select * from tree_forest where forest_no = #{forestNo}) treef
                where tree.tree_no = treef.tree_no
                order by tree.tree_no) rt                
			where rnum BETWEEN #{pageNumber}*4-3 and #{pageNumber}*4
	
	</select> 
 	
	
select * from notice_message where notice_messagebox_state = '3' and forest_no = 21;

INSERT INTO NOTICE_MESSAGE values(SEQ_NOTICE_MESSAGE_NO.nextval,'진우','초아',SYSDATE,'1','1','초아누나가괴롭힌다.','나무','3',null,21,7);

select tree.tree_name
    from tree , (select * from notice_message where notice_messagebox_state = '3' and forest_no = 21) nm
    where tree.tree_no = nm.tree_no
    
    
    
    
<!--의연파트 시작SQL : INSERT  state 1 =  초대중-->
 	
	<insert 	id="inviteTree"		parameterType="java.util.HashMap" >
	 	INSERT
		INTO NOTICE_MESSAGE(NOTICE_MESSAGE_NO, SENDER,FOREST_NO,NOTICE_REG_DATE,NOTICE_MESSAGE_STATE,
					NOTICE_MESSAGE_TYPE,NOTICE_MESSAGE_DETAIL,POST_IMAGE_NAME,NOTICE_MESSAGEBOX_STATE,POST_NO,RECEIVER,TREE_NO) 
		VALUES (
			 SEQ_NOTICE_MESSAGE_NO.nextval,#{forestNo},#{forestNo},SYSDATE,'1','1','숲에서 초대중','POSTIMAGENAME','1',null,
			#{profileNo},#{profileNo})
	 </insert>
	 
	 <select id="acceptTreeList" parameterType="int" resultMap="treeSelectMap">
	 	select tree.*
    		from tree , (select * from notice_message where notice_messagebox_state = '3' and forest_no = #{value}) nm
    		where tree.tree_no = nm.tree_no
	 </select>
	 <!-- 의연파트 끝 -->
