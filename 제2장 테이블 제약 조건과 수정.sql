# 날짜 : 2022/08/23
# 이름 : 김지홍
# 내용 : 제2장 테이블 제약 조건과 수정

#실습 2-1
CREATE TABLE `User2`(
		`uid`	VARCHAR(20) PRIMARY KEY,
        `naMe`	VARCHAR(10),
        `HP`	CHAR(13),
        `aGE`	TINYINT
);

select * fROM USER3;

#실습 2-2
INSERT INTO `UseR2` VALUES('A103', '김유신', '010-1234-0001', 25);
INSERT INTO `User2` VALUES('a102', '김춘추', '010-1234-0002', 28);

#실습 2-3
CREATE TABLE `UsEr3`(
		`uid`	VARCHAR(20) PRIMARY KEY,
        `naME`	VARCHAR(10),
        `hp`	CHAR(13) UNIQUE,
        `age`	TINYINT
);

#실습 2-4
INSERT INTO `UsER3` VALUES('A103', '김유신', '010-1234-0003', 25);
INSERT INTO `USER3` VALUES('A102', '김춘추', '010-1234-0002', 28);

#실습 2-5
CREATE TABLE `Parent`(
		`PID`	VARCHAR(10) PRIMARY KEY,
        `nAmE`	VARCHAR(10),
        `HP`	CHAR(13) UNIQUE
);

CREATE TABLE `CHILD`(
		`cid`	VARCHAR(10) PRIMARY KEY,
        `naME`	VARCHAR(10),
        `hP`	CHAR(13) UNIQUE,
        `PID`	VARCHAR(10),
        FOREIGN KEY (`PID`) REFERENCES `PaRENT` (`pID`)
);

#실습 2-6
INSERT INTO `PAREnt` VALUES ('P101', '이성계', '010-1234-1111');
INSERT INTO `Child` VALUES ('C101', '이방원', '010-1234-1001', 'p101');

select * from child;

#실습 2-7
CREATE TABLE `User4`(
		`seq` 		INT PRIMARY KEY AUTO_INCREMENT,
        `name` 		VARCHAR(10),
        `gender` 	TINYINT,
        `age` 		TINYINT,
        `addr` 		VARCHAR(255)
);

#실습 2-8
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`) VALUES('김유신', 1, 23, '김해시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`) VALUES('김춘추', 1, 25, '경주시');
INSERT INTO `User4` (`name`, `gender`, `age`, `addr`) VALUES('신사임당', 2, 27, '강릉시');
DELETE FROM `User4` WHERE `name` = '신사임당';

select * from user4;

#실습 2-9
CREATE TABLE `User5`(
		`name` 		VARCHAR(10) NOT NULL,
        `gender` 	TINYINT,
        `age` 		INT DEFAULT 1,
        `addr` 		VARCHAR(10)
);

#실습 2-10
INSERT INTO `User5` SET `name` = '김유신';
INSERT INTO `User5` SET `name` = '김춘추' , `addr` = '부산시';

#실습 2-11
ALTER TABLE `User5` ADD `hp` VARCHAR(20);
ALTER TABLE `User5` ADD `birth` CHAR(10) DEFAULT '0000-00-00' AFTER `name`;
ALTER TABLE `User5` ADD `uid` VARCHAR(10) PRIMARY KEY FIRST;

drop table `User5`;

#실습 2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `age` TINYINT;

#실습 2-13
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);

#실습 2-14
ALTER TABLE `User5` DROP `gender`;

#실습 2-15
CREATE TABLE `User6` LIKE `User5`;

#실습 2-16
INSERT INTO `User6` SELECT * FROM `User5`;
