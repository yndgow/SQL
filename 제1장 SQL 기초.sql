#날짜 : 2022/08/22
#이름 : 김지홍
#내용 : 제1장 SQL 기초

#실습 1-1
CREATE DATABASE `UserDB`;
DROP databAse `userDB`;

#실습 1-2
cReate tabLE `User1`(
	`uid`	VARCHar(10),
    `name`	VaRCHAR(10),
    `hp`	CHAR(13),
    `age`	int
);

DROP Table `User1`;

#실습 1-3
INSERT INTO `User1` VALUES ('A101', '김유신', '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('A103', '장보고', '010-1234-3333', 32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104', '강감찬', 45);
INSERT INTO `User1` SET
						`uid`='A105',
                        `name`='이순신',
                        `hp`='010-1234-5555';

#실습 1-4
SELECT * FROM `User1`;
SELECT * FROM `User1` WHERE `uid`='A101';
SELECT * FROM `User1` WHERE `name`='김춘추';
SELECT * FROM `User1` WHERE `age` < 30;
SELECT * FROM `User1` WHERE `age` >= 30;
SELECT `uid`, `name`, `age` FROM `User1`;

#실습 1-5
UPDATE `User1` SET `hp`='010-1234-4444' WHERE `uid`='A104';
UPDATE `User1` SET `age`=51 WHERE `uid`='A105';
UPDATE `User1` SET `hp`='010-1234-1001', `age`=27 WHERE `uid`='A101';

#실습 1-6
DELETE FROM `User1` WHERE `uid` = 'A101';
DELETE FROM `User1` WHERE `uid` = 'A102' AND `age` = 25;
DELETE FROM `User1` WHERE `age` >= 30;

#실습 1-7
USE java1db;
CREATE TABLE `TblUser` (
		`userId` VARCHAR(10),
        `userName` VARCHAR(10),
        `userHp` CHAR(13),
        `userAge` TINYINT,
        `userAddr` VARCHAR(20)
);

CREATE TABLE `tblProduct` (
		`prdCode` INT,
        `prdName` VARCHAR(10),
        `prdPrice` INT,
        `prdAmount` INT,
        `prdCompany` VARCHAR(10),
        `prdMakeDate` DATE
);

#실습 1-8
INSERT INTO `TblUser` SET
		`userId` = 'p101',
        `userName` = '김유신',
        `userHp` = '010-1234-1001',
        `userAge` = 25,
        `userAddr` = "서울시 중구"
;
INSERT INTO `TblUser` SET
		`userId` = 'p102',
        `userName` = '김춘추',
        `userHp` = '010-1234-1002',
        `userAge` = 23,
        `userAddr` = "부산시 금정구"
;
INSERT INTO `TblUser` SET
		`userId` = 'p103',
        `userName` = '장보고',
        `userAge` = 31,
        `userAddr` = "경기도 광주군"
;
INSERT INTO `TblUser` SET
		`userId` = 'p104',
        `userName` = '강감찬',
		`userAddr` = "경남 창원시"
;
INSERT INTO `TblUser` SET
		`userId` = 'p105',
        `userName` = '이순신',
        `userHp` = '010-1234-1005',
        `userAge` = 50
;

INSERT INTO `TblProduct` SET
		`prdCode` = 1,
        `prdName` = "냉장고",
        `prdPrice` = 800,
        `prdAmount` = 10,
        `prdCompany` = "LG",
        `prdMakeDate` = "2022-01-06"
;
INSERT INTO `TblProduct` SET
		`prdCode` = 2,
        `prdName` = "노트북",
        `prdPrice` = 1200,
        `prdAmount` = 20,
        `prdCompany` = "삼성",
        `prdMakeDate` = "2022-01-06"
;
INSERT INTO `TblProduct` SET
		`prdCode` = 3,
        `prdName` = "TV",
        `prdPrice` = 1400,
        `prdAmount` = 6,
        `prdCompany` = "LG",
        `prdMakeDate` = "2022-01-06"
;
INSERT INTO `TblProduct` SET
		`prdCode` = 4,
        `prdName` = "세탁기",
        `prdPrice` = 1000,
        `prdAmount` = 8,
        `prdCompany` = "LG",
        `prdMakeDate` = "2022-01-06"
;
INSERT INTO `TblProduct` SET
		`prdCode` = 5,
        `prdName` = "컴퓨터",
        `prdPrice` = 1100,
        `prdAmount` = 0
;
INSERT INTO `TblProduct` SET
		`prdCode` = 6,
        `prdName` = "휴대폰",
        `prdPrice` = 900,
        `prdAmount` = 102,
        `prdCompany` = "삼성",
        `prdMakeDate` = "2022-01-06"
;

#실습 1-9
SELECT * FROM `TblUser`;
SELECT `userName` FROM `TblUser`;
SELECT `userName`, `userHp` FROM `TblUser`;
SELECT * FROM `TblUser` WHERE `userId` = "p102";
SELECT * FROM `TblUser` WHERE `userId` = "p104" OR `userId` ="p105";
SELECT * FROM `TblUser` WHERE `userAddr` = "신라";
SELECT * FROM `TblUser` WHERE `userAge` > 30;
SELECT * FROM `TblUser` WHERE `userHP` IS NULL;
UPDATE `TblUser` SET
		`userAge`= 42
WHERE
		`userId` = "p104";
UPDATE `TblUser` SET
		`userAddr` = "경남 김해시"
WHERE
		`userId` = "p105";
DELETE FROM `TblUser` WHERE `userId` = "p103";

SELECT * FROM `TblProduct`;
select `prdName` from `Tblproduct`;
SELECT `prdName`, `prdPrice` FROM `TblProduct`;
SELECT * FROM `TblProduct` WHERE `prdCompany`='LG';
SELECT * FROM `TblProduct` WHERE `prdCompany`='삼성';
UPDATE `TblProduct` SET
		`prdCompany` 	= '삼성',
		`prdMakeDate` 	= '2021-01-01'
WHERE
		`prdCode` = 5;
