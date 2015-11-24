DROP SEQUENCE F15A6_Auth_seq ; 
create sequence F15A6_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Auth_PK_trig 
; 

create or replace trigger F15A6_Auth_PK_trig 
before insert on F15A6_Auth
for each row 
begin 
select F15A6_Auth_seq.nextval into :new.auth_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Comment_seq ; 
create sequence F15A6_Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Comment_PK_trig 
; 

create or replace trigger F15A6_Comment_PK_trig 
before insert on F15A6_Comment
for each row 
begin 
select F15A6_Comment_seq.nextval into :new.comment_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Document_seq ; 
create sequence F15A6_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Document_PK_trig 
; 

create or replace trigger F15A6_Document_PK_trig 
before insert on F15A6_Document
for each row 
begin 
select F15A6_Document_seq.nextval into :new.document_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Emp_seq ; 
create sequence F15A6_Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Emp_PK_trig 
; 

create or replace trigger F15A6_Emp_PK_trig 
before insert on F15A6_Emp
for each row 
begin 
select F15A6_Emp_seq.nextval into :new.emp_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Lab_seq ; 
create sequence F15A6_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Lab_PK_trig 
; 

create or replace trigger F15A6_Lab_PK_trig 
before insert on F15A6_Lab
for each row 
begin 
select F15A6_Lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15A6_RFE_seq ; 
create sequence F15A6_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_RFE_PK_trig 
; 

create or replace trigger F15A6_RFE_PK_trig 
before insert on F15A6_RFE
for each row 
begin 
select F15A6_RFE_seq.nextval into :new.RFE_id from dual; 
end; 
/

DROP SEQUENCE F15A6_RTC_seq ; 
create sequence F15A6_RTC_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_RTC_PK_trig 
; 

create or replace trigger F15A6_RTC_PK_trig 
before insert on F15A6_RTC
for each row 
begin 
select F15A6_RTC_seq.nextval into :new.code_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Stat_His_seq ; 
create sequence F15A6_Stat_His_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Stat_His_PK_trig 
; 

create or replace trigger F15A6_Stat_His_PK_trig 
before insert on F15A6_Stat_His
for each row 
begin 
select F15A6_Stat_His_seq.nextval into :new.history_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Status_seq ; 
create sequence F15A6_Status_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Status_PK_trig 
; 

create or replace trigger F15A6_Status_PK_trig 
before insert on F15A6_Status
for each row 
begin 
select F15A6_Status_seq.nextval into :new.status_id from dual; 
end; 
/

DROP SEQUENCE F15A6_Task_seq ; 
create sequence F15A6_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15A6_Task_PK_trig 
; 

create or replace trigger F15A6_Task_PK_trig 
before insert on F15A6_Task
for each row 
begin 
select F15A6_Task_seq.nextval into :new.task_id from dual; 
end; 
/

DROP INDEX F15A6_Emp_emp_id_FK_0 ;
CREATE INDEX F15A6_Emp_emp_id_FK_0 ON F15A6_Comment(F15A6_Emp_emp_id) ;
DROP INDEX F15A6_RFE_RFE_id_FK_1 ;
CREATE INDEX F15A6_RFE_RFE_id_FK_1 ON F15A6_Comment(F15A6_RFE_RFE_id) ;
DROP INDEX F15A6_RFE_RFE_id_FK_2 ;
CREATE INDEX F15A6_RFE_RFE_id_FK_2 ON F15A6_Document(F15A6_RFE_RFE_id) ;
DROP INDEX F15A6_Auth_auth_id_FK_3 ;
CREATE INDEX F15A6_Auth_auth_id_FK_3 ON F15A6_Emp(F15A6_Auth_auth_id) ;
DROP INDEX F15A6_Lab_lab_id_FK_4 ;
CREATE INDEX F15A6_Lab_lab_id_FK_4 ON F15A6_Emp(F15A6_Lab_lab_id) ;
DROP INDEX F15A6_Emp_emp_id_FK_5 ;
CREATE INDEX F15A6_Emp_emp_id_FK_5 ON F15A6_RFE(F15A6_Emp_emp_id) ;
DROP INDEX F15A6_Status_status_id_FK_6 ;
CREATE INDEX F15A6_Status_status_id_FK_6 ON F15A6_RFE(F15A6_Status_status_id) ;
DROP INDEX F15A6_Emp_emp_id_FK_7 ;
CREATE INDEX F15A6_Emp_emp_id_FK_7 ON F15A6_RTC(F15A6_Emp_emp_id) ;
DROP INDEX F15A6_RFE_RFE_id_FK_8 ;
CREATE INDEX F15A6_RFE_RFE_id_FK_8 ON F15A6_RTC(F15A6_RFE_RFE_id) ;
DROP INDEX F15A6_Emp_emp_id_FK_9 ;
CREATE INDEX F15A6_Emp_emp_id_FK_9 ON F15A6_Stat_His(F15A6_Emp_emp_id) ;
DROP INDEX F15A6_RFE_RFE_id_FK_10 ;
CREATE INDEX F15A6_RFE_RFE_id_FK_10 ON F15A6_Stat_His(F15A6_RFE_RFE_id) ;
DROP INDEX F15A6_Status_status_id_FK_11 ;
CREATE INDEX F15A6_Status_status_id_FK_11 ON F15A6_Stat_His(F15A6_Status_status_id) ;
DROP INDEX F15A6_RFE_RFE_id_FK_12 ;
CREATE INDEX F15A6_RFE_RFE_id_FK_12 ON F15A6_Task(F15A6_RFE_RFE_id) ;
