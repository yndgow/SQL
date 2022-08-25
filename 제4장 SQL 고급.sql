#날짜 : 2022/08/24
#이름 : 김지홍
#내용 : 제4장 SQL 고급

#실습 4-1
create table `Member` (
	`uid` VARCHaR(10) primary kEy,
    `NAME` VARCHaR(10) NoT NUll,
    `hp` CHAR(13) UnIQUe NOT null,
    `POS` VArCHAR(10) DeFAULT '사원' not nULL,
    `DeP` INT default nuLL,
    `rdate` date NOt NULL
);

CREate table `DePARTmENT`(
	`dEpNo` INT pRIMARy key not nulL,
    `namE` vARCHAR(10) nOT nULL,
    `tel` chAR(12) NOT nULL
);

Drop table `DEPARTMEnT`;

CREaTe tABLE `SALEs`(
	`seq` int pRIMARY KEY Auto_incrEment,
    `uID` VARcHAR(10) NOT NULL,
    `year` yEAR NOT NULl,
    `MOnth` int not NULl,
    `SAle` int not nULL
);

#실습 4-2
insert inTO `MEMbER` vAlues ('a101', '박혁거세', '010-1234-1001', '부장', 101, Now());
insert iNto `Member` valuEs ('a102', '김유신', '010-1234-1002', '차장', 101,NOW());
insert into `Member` (`uid`, `name`, `hp`, `deP`, `RDATE`) vALUES ('A103', '김춘추', '010-1234-1003', 101, now());
inserT INTO `MEmber` Values ('a104', '장보고', '010-1234-1004', '대리', 102, nOW());
insert INTO `MEmber` Values ('a105', '강감찬', '010-1234-1005', '과장', 102, NOw());
INsERT into `MembER` VAlUes ('a106', '이성계', '010-1234-1006', '차장', 103, nOW());
INSErt INTO `MEMBer` values ('A107', '정철', '010-1234-1007', '차장', 103, Now());
inSeRT InTO `MEmbER` VAlUES ('a108', '이순신', '010-1234-1008', '부장', 104, now());
insert inTo `MEmBER` ValUES ('a109', '허균', '010-1234-1009', '부장', 104, nOw());
insert intO `Member` vALUEs ('A110', '정약용', '010-1234-1010', '사원', 105, now());
Insert into `MembEr` values ('A111', '박지원', '010-1234-1011', '사원', 105, now());

insert inTo `Department` vAlues (101, '영업1부', '051-512-1001');
insert inTO `DEpArtment` values (102, '영업2부', '051-512-1002');
InSERT INTO `DepARTMENt` VAlues (103, '영업3부', '051-512-1003');
insErt into `DepartMenT` VALuES (104, '영업4부', '051-512-1004');
insert inTo `Department` ValUES (105, '영업5부', '051-512-1005');
INsert into `DePartment` values (106, '영업지원부', '051-512-1006');
InSERT into `DepartmEnt` values (107, '인사부', '051-512-1007');

iNSERT iNTO `Sales` (`uid`,`year`,`month`,`saLE`) VaLUES('a101', '2018', '1', 98100);
insert into `SAles` (`uid`,`yeAr`,`MONTh`,`Sale`) values('A102', '2018', '1', 136000);
insert into `SaLES` (`UID`,`year`,`Month`,`sale`) values('a103', '2018', '1', 80100);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a104', '2018', '1', 78000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a105', '2018', '1', 93000);
iNsert iNTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a101', '2018', '2', 23500);
iNsert iNTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a102', '2018', '2', 126000);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a103', '2018', '2', 18500);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a105', '2018', '2', 19000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a106', '2018', '2', 53000);

InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a101', '2019', '1', 24000);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a102', '2019', '1', 109000);
inseRt INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a103', '2019', '1', 101000);
inseRt INTO `SALES` (`UID`,`year`,`month`,`sale`) valueS('a104', '2019', '1', 53500);
inseRt INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a107', '2019', '1', 24000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a102', '2019', '2', 160000);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a103', '2019', '2', 101000);
inseRt INTO `SALES` (`UID`,`year`,`month`,`sale`) valueS('a104', '2019', '2', 43000);
inseRt INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a105', '2019', '2', 24000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a106', '2019', '2', 109000);

inseRt INTO `SALES` (`UID`,`year`,`month`,`sale`) valueS('a102', '2020', '1', 201000);
insErT INTO `SALES` (`UId`,`year`,`montH`,`salE`) valuEs('a104', '2020', '1', 63000);
insErT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a105', '2020', '1', 74000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a106', '2020', '1', 122000);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a107', '2020', '1', 111000);
inseRt INTO `SALES` (`UID`,`year`,`month`,`sale`) valueS('a102', '2020', '2', 120000);
insErT INTO `SALES` (`UID`,`year`,`month`,`sale`) valueS('a103', '2020', '2', 93000);
inseRt INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a104', '2020', '2', 84000);
InserT INTO `SalES` (`uID`,`year`,`mOnth`,`sale`) values('a105', '2020', '2', 180000);
InserT INTO `SaLES` (`UID`,`year`,`Month`,`sale`) values('a108', '2020', '2', 76000);

#실습 4-3
SELEct * FROm `MEmber` wheRe `naMe` <> '김춘추';
sElect * fROM `MEmber` Where `pOs` IN('사원', '대리');
SElECT * from `MEmber` where `name` lIke '%신';
SELECT * froM `MembeR` whErE `NAMe` like '정%';

SELECT * FROM `Member` WHERE `name` = '김유신';
select * FROM `MEMBEr` where `POS`= '차장' AND `dep` = 101;
selecT * FROM `MeMBER` where `pOS` = '차장' OR `DEp` = 101;
SELECt * FROm `Member` WHERe `name` != '김춘추';
selECT * fRoM `Member` wheRE `Name` <> '김춘추';
select * FROM `MeMBER` where `pOS` = '사원' OR `pos` = '대리';
seleCt * frOM `MEmBeR` Where `pos` IN('사원','대리');
select * from `MEmBER` WHERE `DeP` IN(101, 102, 103);
selecT * from `Member` WHERe `NAME` LIKE '%신';
SElect * fROm `Member` wheRE `NAmE` LIKE '김%';
seLECT * from `Member` whERe `name` LIKE '김__';
SELEcT * FRom `Member` WHEre `namE` LIKE '_성_';
selecT * FROM `MeMBER` where `nAME` LIKE '정_';
SELeCT * FROM `SALES` WhERE `sale` > 50000;
select * FRom `Sales` WHERe `SALE` >= 50000 AND `sale` < 100000 AND `MONTH` = 1;
Select * frOM `Sales` whERE `sale` betWEEN 50000 ANd 100000;
SELECt * from `SAles` where `SALE` nOT Between 50000 ANd 100000;
SElect * frOM `SAlEs` WHere `year` IN(2020);
sElECT * fROM `SaLeS` Where `monTH` IN(1,2);

#실습 4-4
SELect * frOm `SALEs` ORDER BY `SaLe` ASC;
sElECT * from `SALES` ORDER BY `SALE` DESC;
SElECT * frOM `SAlEs` WHere `sale` > 50000 ordER bY `SALE` DESC;
SElECT * frOM `SAlEs`
WHere `sale` > 50000
ordER BY `YeaR`, `MoNtH`, `sale` deSC;
Select * fROM `MEmber` ORDER BY `NAME`;
sELECt * from `MEMBeR` ORDER BY `naME` DEsC;
SELect * froM `MEmBEr` ORDER BY `rDATE` aSc;

#실습 4-5
seLECT * from `SaLES` lIMIT 3;
select * FROm `SALES` lIMIT 0, 3;
seLECT * from `SaLES` lIMIT 1, 2;
seleCt * from `Sales` LIMIt 5, 3;

SeLECT * from `SALES`
WHere `sale` > 50000
ORDer by `yeaR` DEsC, `month`, `SalE` DESc
lIMIT 5;

#실습 4-6
SElECt sum(`saLE`) as `합계` from `SALES`;

SELect count(`SEQ`) aS `갯수` FrOM `Sales`;
sELECT COuNt(*) AS `갯수` FRom `Sales`;

SeLEcT sUBSTRInG(`HP`, 10, 4) AS `전화번호 끝자리` FROM `MeMBER`;

inserT INTo `MembeR` VALUeS ('B101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

select * FROM `MEMBEr`;
seLeCT * from `MEMBEr`;

#실습 4-7
SELEcT SUM(`sale`) AS '1월 매출'  FROm `Sales` WHERE `YEAR` = '2018' AND `mONTH` = '1';

#실습 4-8
SELECT
	SUM(`sAlE`) AS '총합',
	AVG(`sale`) AS '평균'
fROM `Sales`
wherE
	`YEaR` = '2019' AND
    `Month` = '2' AND
    `sAle` >= 50000;

#실습 4-9
selEcT
	MIN(`SALe`) AS '최저 매출',
    MAX(`saLE`) AS '최고 매출'
from `Sales`
where
	`YEAR` = '2020'
;

#실습 4-10
SELECT * FROM `Sales` GROUP BY `uid`;
SELECT `UId`, COUNT(`seq`) AS '건수' FROM `SALEs` GROUP BY `uID`;
SELECT * FROM `SaleS` GROUP BY `uID`, `year`;
SELECT `uid`, SUM(`sale`) AS '합계' FROM `Sales` GROUP BY `uid`;
SELECT `uid`, AVG(`sALE`) AS '평균' FROM `SAles` GROUP BY `uId`;

SELECT
	`uId`,
    `year`,
    SUM(`sale`) aS '합계'
FROM
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY `uid`, `YEAR`
ORDER BY `합계` DEsc
LIMIT 3;

#실습 4-11
SELECT
	`uiD`,
    SUM(`SALE`) As '합계'
FROM
	`SAlES`
GROUP BY
	`UID`
HAVING `합계` >= 200000;

SELECT
	`UId`,
	SUM(`sale`) AS '합계'
FROM `SaLES`
WHERE `sale` >= 100000
GROUP BY `uiD`, `year`
HAVING `합계` >= 200000
ORDER BY `합계` DESC;

#실습 4-12
CREATE TABLE `SAles2` LIKE `Sales`;
INSERT INTO `SALES2` SELECT * FROM `SALES`;
UPDATE `Sales2` SET `yEAr` = `year` +3;

SELECT * FROM `Sales` UNION SELECT * FROM `Sales2`;
SELECT `uid`, `Year`, `salE`
FROM `Sales`
UNION
SELECT `uiD`, `YEAR`, `SALE`
FROM `SalES2`;
SElECT `uid`, `yeaR`, SUM(`sale`) AS '합계'
FROM `SALES`
GROUP BY `uid`, `year`
UNION
SELECT `uID`, `YEAr`, SUM(`sale`) AS '합계'
FROM `Sales2`
GROUP BY `UID`, `year`
ORDER BY `year` ASC, `합계` DESC;

#실습 4-13
SELECT * FROM `Sales` INNER JOIN `Member` on Sales.uid = Member.uid;
SELECT * FROM `Member` INNER JOIN `Department` ON Member.dep = Department.depNo;

SELECT *
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid;

SELECT
	`seq`, a.`uid`, `sale`, `name`, `pos`
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid;

SELECT *
FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo;

SELECT *
FROM `Member` As a, `Department` AS b
WHERE a.dep = b.depNo;

SELECT `seq`, a.`uid`, `sale`, `name`, `pos`
FROM `Sales` AS a
JOIN `Member` AS b
USING(`uid`);

SELECT * FROM `Sales` as a
JOIN `Member` as b ON a.uid = b.uid
JOIN `Department` as c ON b.dep = c.depNo;

SELECT * FROM `Sales` as a
LEFT JOIN `Member` as b
ON a.uid = b.uid;

SELECT * FROM `Sales` as a
RIGHT JOIN `Member` as b
ON a.uid = b.uid;

SELECT `seq`, a.`uid`, `sale`, `name`, `pos`
FROM `Sales` AS a
JOIN `Member` AS b
ON a.`uid` = b.`uid`;

SELECT a.`seq`, a.`uid`, b.`name`, b.`pos`, `year`, SUM(`Sale`) AS '합계'
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
GROUP BY a.`uid`, a.`year`
HAVING `합계` >= 100000
ORDER BY a.`year` ASC, `합계` DESC;

SELECT *
FROM `Sales` AS a
JOIN `Member` AS b 
ON a.uid = b.uid
JOIN `Department` AS c
ON b.dep = c.depNo;

SELECT a.seq, a.uid, a.sale, b.name, b.pos, c.name
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
JOIN `Department` AS c
ON b.dep = c.depNo;

SELECT a.seq, a.uid, a.sale, b.name, b.pos, c.name
FROM `Sales` As a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo
WHERE `Sale` > 100000
ORDER BY `Sale` DESC;

#실습 4-14
SELECT *
FROM `Sales` AS a
LEFT JOIN `Member` As b ON a.uid = b.uid;

SELECT *
FROM `Sales` AS a
RIGHT JOIN `Member` AS b ON a.uid = b.uid;

SELECT a.seq, a.uid, `sale`, `name`, `pos`
FROM `Sales` AS a
LEFT JOIN `Member` AS b USING(`uid`);

SELECT a.seq, a.uid, `sale`, `name`, `pos`
FROM `Sales` As a
RIGHT JOIN `Member` AS b USING(`uid`);

#실습 4-15
SELECT a.`uid`, a.`name`, a.`pos`, b.`name` 
FROM `Member` AS a
JOIN `Department` AS b ON a.dep = b.depNo;

#실습 4-16
SELECT SUM(`Sale`) AS `매출합`
FROM `Sales` AS a
JOIN `Member` AS b ON a.uid = b.uid

WHERE `name` = '김유신' AND `year` = '2019';

#실습 4-17
SELECT b.`name`, c.`name`, b.`pos`, a.`year`, SUM(`sale`) as `매출합`
FROM `Sales` as a
JOIN `Member` as b ON a.uid = b.uid
JOIN `Department` as c ON b.dep = c.depNo
WHERE `year` = '2019' AND `sale` >= 50000
GROUP BY a.`uid`
HAVING `매출합` >= 100000
ORDER BY `매출합` DESC
;
