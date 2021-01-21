SELECT * FROM calender WHERE event_no = 42 ;

ALTER TABLE WWFT.CALENDER ADD FREQ VARCHAR2(10);

ALTER TABLE WWFT.CALENDER ADD "by" VARCHAR2(10) NULL;


달력 오타 calender ==> calendar로 고칠것 반복일정 추가 되면서 freq: 반복주기 yearly,monthly,weekly //by_day : bymonthday, byweekday// dow : 0~6 월~일 // dom : 1~31
CREATE TABLE  "CALENDER" 
   (	"EVENT_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"TREE_NO" NUMBER(10,0) NOT NULL ENABLE, 
	"EVENT_TITLE" VARCHAR2(30) NOT NULL ENABLE, 
	"EVENT_START_DATE" DATE NOT NULL ENABLE, 
	"EVENT_END_DATE" DATE NOT NULL ENABLE, 
	"D_DAY_STATE" CHAR(1), 
	"EVENT_DETAIL" VARCHAR2(200), 
	"FREQ" VARCHAR2(10), 
	"BY_DAY" VARCHAR2(10), 
	"DOW" VARCHAR2(10), 
	"DOM" VARCHAR2(10), 
	 CONSTRAINT "CALENDER_PK" PRIMARY KEY ("EVENT_NO") ENABLE
   )