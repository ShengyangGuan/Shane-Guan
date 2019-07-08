

CREATE TABLE CLIENT
(CLIENT_NUM	CHAR(4) NOT NULL,
CLIENT_FNAME	varchar(10),
CLIENT_Int	varchar(10),
CLIENT_LNAME	varchar(10),
CLIENT_REGION	varchar(10),
PRIMARY KEY(CLIENT_NUM));

drop table CONTRACT
CREATE TABLE CONTRACT
(CONTRACT_NUMBER	CHAR(4) NOT NULL,
CLIENT_NUM	CHAR(4) NOT NULL,
CONTRACT_DATE	DATETIME,
CONTRACT_AMOUNT	MONEY,
CONSULT_CLASS_1	varchar(30),
CONSULT_CLASS_2	varchar(30),
CONSULT_CLASS_3	varchar(30),
CONSULT_CLASS_4	varchar(30),
CONSULTANT_NUM_1	CHAR(4),
CONSULTANT_NUM_2	CHAR(4),
CONSULTANT_NUM_3	CHAR(4),
CONSULTANT_NUM_4	CHAR(4),
PRIMARY KEY(CONTRACT_NUMBER));
drop table CONSULTANT
CREATE TABLE CONSULTANT
(CONSULTANT_NUM	CHAR(4) NOT NULL,
CONSULTANT_FNAME	varchar(10),
CONSULTANT_INT		varchar(10),
CONSULTANT_LNAME	varchar(10),
CONSULTANT_REGION	varchar(10),
CONSULTANT_CLASS_1	varchar(30),
CONSULTANT_CLASS_2	varchar(30),
CONSULTANT_CLASS_3	varchar(30),
CONSULTANT_CLASS_4	varchar(30),
PRIMARY KEY(CONSULTANT_NUM));


insert into CLIENT values('289','Marianne','R.','Brown','Midwest');
insert into CLIENT values('298','James','D.','Smith','Southeast');
insert into CLIENT values('299','Gerald','A.','Gallega','Midwest');
insert into CLIENT values('300','Alice','B.','VanderVoort','West');
insert into CLIENT values('301','Willaker','C.','Mary','West');
insert into CLIENT values('302','Jill','D.','Martin','Southeast');
insert into CLIENT values('303','Gerald','A.','Martin','Midwest');
insert into CLIENT values('304','Hank','B.','Jones','Southeast');
insert into CLIENT values('305','JoAnne','C.','Rightonit','Midwest');
insert into CLIENT values('306','McGuire','D.','Bryana','West');
insert into CLIENT values('307','George','A.','Brown','West');

select * from CLIENT
select * from CONTRACT
select * from CONSULTANT


insert into CONTRACT values('5841','298','10-Feb-2008','$2,985,000.00','Database Administration','Web Applications',' ',' ','29','56','22',' ');	
insert into CONTRACT values('5842','289','15-Feb-2008','$670,300.00','Internet Servies',' ',' ',' ','34','38','45','18');
insert into CONTRACT values('5843','289','12-Feb-2008','$1,250,000.00','Database Design','Database Administration','Network Installation',' ','25','34',' ',' ');		
insert into CONTRACT values('5844','300','11-Feb-2008','$3,250,000.00','Internet Servies','Network Installation',' ',' ','22','29',' ',' ');	
insert into CONTRACT values('5845','301','12-Oct-2008','$650,300.00','Network Installation','Web Applications',' ',' ','34','56',' ',' ');		
insert into CONTRACT values('5846','301','12-Dec-2008','$2,988,000.00','Database Administration','Database Design',' ',' ','18',' ',' ',' ');			
insert into CONTRACT values('5847','307','5-Oct-2008','$6,023,300.00','Database Administration','Web Applications',' ',' ','26','28','34','29');
insert into CONTRACT values('5848','308','2-Aug-2008','$3,085,000.00','Internet Servies',' ',' ',' ','25','27',' ',' ');		
insert into CONTRACT values('5849','302','24-Jul-2008','$2,670,300.00','Database Design','Database Administration','Network Installation',' ','34','22',' ',' ');		
insert into CONTRACT values('5850','304','30-Oct-2008','$22,250,000.00','Network Installation',' ',' ',' ','45','56',' ',' ');		
insert into CONTRACT values('5851','304','15-Jun-2008','$870,300.00','Database Design','Web Applications',' ',' ','38',' ',' ',' ');			


insert into CONSULTANT values('29','Rachel','G.','Carson','Midwest','Internet Servies','Database Administration',' ',' ');		
insert into CONSULTANT values('56','Karl','M.','Spenser','Midwest','Database Administration','Web Applications',' ',' ');	
insert into CONSULTANT values('22','Julian','H.','Donatello','Midwest','Database Design',' ',' ',' ');	
insert into CONSULTANT values('34','Gerald','K.','Ricardo','Southeast','Network Installation','Database Administration',' ',' ');		
insert into CONSULTANT values('38','Anne','T.','Dimarco','Southeast','Internet Servies','Network Installation',' ',' ');		
insert into CONSULTANT values('45','Geraldo','J.','Rivera','Southeast','Network Installation','Web Applications',' ',' ');		
insert into CONSULTANT values('18','Donald',' ','Chen','West','Database Administration','Database Design','Network Installation',' ');	
insert into CONSULTANT values('25','Angela','M.','Jamison','Southeast','Database Administration','Web Applications',' ',' ');		
insert into CONSULTANT values('26','JoAnne','A.','Martin','Midwest','Internet Servies','Web Applications',' ',' ');		
insert into CONSULTANT values('28','Alice','S.','VanderVoort','Southeast','Database Design',' ',' ',' ');			
insert into CONSULTANT values('27','James',' ','Brown','West','Network Installation','Database Design',' ',' ');		



SELECT  CLIENT_FNAME,CLIENT_LNAME,CLIENT_REGION
FROM CLIENT
ORDER BY CLIENT_REGION ASC

SELECT CONSULTANT_FNAME,CONSULTANT_LNAME,CONSULTANT_NUM
FROM CONSULTANT
WHERE EXISTS(SELECT * FROM CONTRACT WHERE CONSULTANT_NUM=CONSULTANT_NUM_1 OR CONSULTANT_NUM=CONSULTANT_NUM_2 OR CONSULTANT_NUM=CONSULTANT_NUM_3 OR CONSULTANT_NUM=CONSULTANT_NUM_4)

SELECT SUM(CONTRACT_AMOUNT)AS TOTALprofit
FROM CONTRACT

SELECT CONSULTANT_FNAME,CONSULTANT_LNAME,CONSULTANT_REGION
FROM CONSULTANT
ORDER BY CONSULTANT_REGION ASC

SELECT CONSULTANT_FNAME,CONSULTANT_LNAME,CONSULTANT_CLASS_1,CONSULTANT_CLASS_2,CONSULTANT_CLASS_3,CONSULTANT_CLASS_4
FROM CONSULTANT
ORDER BY CONSULTANT_CLASS_1,CONSULTANT_CLASS_2,CONSULTANT_CLASS_3,CONSULTANT_CLASS_4 ASC

SELECT  CLIENT_FNAME,CLIENT_LNAME,CLIENT_REGION
FROM CLIENT
WHERE EXISTS (SELECT *      
                  FROM CONTRACT
                  WHERE CLIENT_NUM = CLIENT_NUM HAVING count(*) > 1);


	SELECT  CONSULTANT_NUM,CONSULTANT_FNAME,CONSULTANT_INT,CONSULTANT_LNAME,CONSULTANT_REGION
FROM CONSULTANT
ORDER BY CONSULTANT_REGION ASC

SELECT  CONTRACT_NUMBER,CONTRACT_DATE,CONTRACT_AMOUNT
FROM CONTRACT
WHERE CONTRACT_DATE<='2008-03-01'

SELECT  CONSULTANT_FNAME,CONSULTANT_LNAME,CONSULTANT_CLASS_1,CONSULTANT_CLASS_2,CONSULTANT_CLASS_3,CONSULTANT_CLASS_4
FROM CONSULTANT
WHERE CONSULTANT_CLASS_1='Database Administration' OR CONSULTANT_CLASS_2='Database Administration'

SELECT  CLIENT_NUM,CLIENT_FNAME,CLIENT_Int,CLIENT_LNAME,CLIENT_REGION
FROM CLIENT
ORDER BY CLIENT_NUM ASC