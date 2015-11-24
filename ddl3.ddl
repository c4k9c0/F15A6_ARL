DROP SEQUENCE F15A6_Auth_seq ; 
create sequence F15A6_Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Auth_PK_trig 
before insert on F15A6_Auth
for each row 
begin 
select F15A6_Auth_seq.nextval into :new.auth_id from dual; 
end; 
/
alter table F15A6_Auth add created date ; 
alter table F15A6_Auth add created_by VARCHAR2 (255) ; 
alter table F15A6_Auth add row_version_number integer ; 
alter table F15A6_Auth add updated date ; 
alter table F15A6_Auth add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Auth_AUD_trig 
before insert or update on F15A6_Auth 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Comment_seq ; 
create sequence F15A6_Comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Comment_PK_trig 
before insert on F15A6_Comment
for each row 
begin 
select F15A6_Comment_seq.nextval into :new.comment_id from dual; 
end; 
/
alter table F15A6_Comment add created date ; 
alter table F15A6_Comment add created_by VARCHAR2 (255) ; 
alter table F15A6_Comment add row_version_number integer ; 
alter table F15A6_Comment add updated date ; 
alter table F15A6_Comment add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Comment_AUD_trig 
before insert or update on F15A6_Comment 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Document_seq ; 
create sequence F15A6_Document_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Document_PK_trig 
before insert on F15A6_Document
for each row 
begin 
select F15A6_Document_seq.nextval into :new.document_id from dual; 
end; 
/
alter table F15A6_Document add created date ; 
alter table F15A6_Document add created_by VARCHAR2 (255) ; 
alter table F15A6_Document add row_version_number integer ; 
alter table F15A6_Document add updated date ; 
alter table F15A6_Document add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Document_AUD_trig 
before insert or update on F15A6_Document 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Emp_seq ; 
create sequence F15A6_Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Emp_PK_trig 
before insert on F15A6_Emp
for each row 
begin 
select F15A6_Emp_seq.nextval into :new.emp_id from dual; 
end; 
/
alter table F15A6_Emp add created date ; 
alter table F15A6_Emp add created_by VARCHAR2 (255) ; 
alter table F15A6_Emp add row_version_number integer ; 
alter table F15A6_Emp add updated date ; 
alter table F15A6_Emp add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Emp_AUD_trig 
before insert or update on F15A6_Emp 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Lab_seq ; 
create sequence F15A6_Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Lab_PK_trig 
before insert on F15A6_Lab
for each row 
begin 
select F15A6_Lab_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table F15A6_Lab add created date ; 
alter table F15A6_Lab add created_by VARCHAR2 (255) ; 
alter table F15A6_Lab add row_version_number integer ; 
alter table F15A6_Lab add updated date ; 
alter table F15A6_Lab add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Lab_AUD_trig 
before insert or update on F15A6_Lab 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_RFE_seq ; 
create sequence F15A6_RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_RFE_PK_trig 
before insert on F15A6_RFE
for each row 
begin 
select F15A6_RFE_seq.nextval into :new.RFE_id from dual; 
end; 
/
alter table F15A6_RFE add created date ; 
alter table F15A6_RFE add created_by VARCHAR2 (255) ; 
alter table F15A6_RFE add row_version_number integer ; 
alter table F15A6_RFE add updated date ; 
alter table F15A6_RFE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_RFE_AUD_trig 
before insert or update on F15A6_RFE 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_RTC_seq ; 
create sequence F15A6_RTC_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_RTC_PK_trig 
before insert on F15A6_RTC
for each row 
begin 
select F15A6_RTC_seq.nextval into :new.code_id from dual; 
end; 
/
alter table F15A6_RTC add created date ; 
alter table F15A6_RTC add created_by VARCHAR2 (255) ; 
alter table F15A6_RTC add row_version_number integer ; 
alter table F15A6_RTC add updated date ; 
alter table F15A6_RTC add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_RTC_AUD_trig 
before insert or update on F15A6_RTC 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Stat_His_seq ; 
create sequence F15A6_Stat_His_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Stat_His_PK_trig 
before insert on F15A6_Stat_His
for each row 
begin 
select F15A6_Stat_His_seq.nextval into :new.history_id from dual; 
end; 
/
alter table F15A6_Stat_His add created date ; 
alter table F15A6_Stat_His add created_by VARCHAR2 (255) ; 
alter table F15A6_Stat_His add row_version_number integer ; 
alter table F15A6_Stat_His add updated date ; 
alter table F15A6_Stat_His add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Stat_His_AUD_trig 
before insert or update on F15A6_Stat_His 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Status_seq ; 
create sequence F15A6_Status_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Status_PK_trig 
before insert on F15A6_Status
for each row 
begin 
select F15A6_Status_seq.nextval into :new.status_id from dual; 
end; 
/
alter table F15A6_Status add created date ; 
alter table F15A6_Status add created_by VARCHAR2 (255) ; 
alter table F15A6_Status add row_version_number integer ; 
alter table F15A6_Status add updated date ; 
alter table F15A6_Status add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Status_AUD_trig 
before insert or update on F15A6_Status 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15A6_Task_seq ; 
create sequence F15A6_Task_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15A6_Task_PK_trig 
before insert on F15A6_Task
for each row 
begin 
select F15A6_Task_seq.nextval into :new.task_id from dual; 
end; 
/
alter table F15A6_Task add created date ; 
alter table F15A6_Task add created_by VARCHAR2 (255) ; 
alter table F15A6_Task add row_version_number integer ; 
alter table F15A6_Task add updated date ; 
alter table F15A6_Task add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15A6_Task_AUD_trig 
before insert or update on F15A6_Task 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
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
