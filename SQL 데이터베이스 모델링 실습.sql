# 날짜 : 2022/09/07
# 이름 : 김지홍
# 내용 : 데이터베이스 모델링 실습

use `java1_university`;

# 학과 데이터입력
insert into `Departments` values('10', '국어국문학과', '051-510-1010');
insert into `Departments` values('11', '영어영문학과', '051-510-1011');
insert into `Departments` values('20', '경영학과', '051-510-1020');
insert into `Departments` values('21', '경제학과', '051-510-1021');
insert into `Departments` values('22', '정치외교학과', '051-510-1022');
insert into `Departments` values('23', '사회복지학과', '051-510-1023');
insert into `Departments` values('30', '수학과', '051-510-1030');
insert into `Departments` values('31', '통계학과', '051-510-1031');
insert into `Departments` values('32', '생명과학과', '051-510-1032');
insert into `Departments` values('40', '기계공학과', '051-510-1040');
insert into `Departments` values('41', '전자공학과', '051-510-1041');
insert into `Departments` values('42', '컴퓨터공학과', '051-510-1042');

# 교수 데이터입력
insert into `Professors` values ('P10101', '김유신', '750120-1234567', '010-1101-1976', 'kimys@hg.ac.kr', '서울', 10);
insert into `Professors` values ('P10102', '계백', '740610-1234567', '010-1102-1975', 'gaeback@hg.ac.kr', '서울', 10);
insert into `Professors` values ('P11101', '김관창', '880529-1234567', '010-1103-1989', 'kwanch@hg.ac.kr', '대전', 11);
insert into `Professors` values ('P11103', '김춘추', '780412-1234567', '010-2101-1979', 'kimcc@hg.ac.kr', '대전', 11);
insert into `Professors` values ('P11104', '이사부', '650911-1234567', '010-2104-1966', 'leesabu@hg.ac.kr', '대전', 11);
insert into `Professors` values ('P22110', '장보고', '780727-1234567', '010-3101-1979', 'jangbg@hg.ac.kr', '대구', 22);
insert into `Professors` values ('P23102', '선덕여왕', '830614-1234567', '010-4101-1984', 'queen@hg.ac.kr', '대구', 23);
insert into `Professors` values ('P31101', '강감찬', '641020-1234567', '010-5101-1965', 'kang@hg.ac.kr', '대구', 31);
insert into `Professors` values ('P31104', '신사임당', '711127-1234567', '010-6101-1972', 'sinsa@hg.ac.kr', '부산', 31);
insert into `Professors` values ('P40101', '이이', '910906-1234567', '010-7103-1992', 'leelee@hg.ac.kr', '부산', 40);
insert into `Professors` values ('P40102', '이황', '881208-1234567', '010-7104-1989', 'hwang@hg.ac.kr', '광주', 40);
insert into `Professors` values ('P42103', '송상현', '760313-1234567', '010-8101-1977', 'ssh@hg.ac.kr', '광주', 42);

# 강좌 데이터입력
insert into `Lectures` values ('101001', '대학 글쓰기', 2, 10, '본102', 'P10101');
insert into `Lectures` values ('101002', '한국어음운론', 3, 30, '본102', 'P10102');
insert into `Lectures` values ('101003', '한국현대문학사', 3, 30, '본103', 'P10102');
insert into `Lectures` values ('111011', '중세영문학', 3, 25, '본201', 'P11103');
insert into `Lectures` values ('111012', '영미시', 3, 25, '본201', 'P11104');
insert into `Lectures` values ('231110', '사회복지학개론', 1, 8, '별관103', 'P23102');
insert into `Lectures` values ('311002', '통계학의 이해', 2, 16, '별관303', 'P31101');
insert into `Lectures` values ('311003', '기초 통계학', 3, 26, '별관303', 'P31104');
insert into `Lectures` values ('401019', '기계역학', 3, 36, '공학관 102', 'P40101');
insert into `Lectures` values ('421012', '데이터베이스', 3, 32, '공학관 103', 'P42103');

# 학생 데이터입력
insert into `Students` values('20101001', '정우성', '760121-1234567', '010-1101-7601', null, '서울', 'P10101', '10');
insert into `Students` values('20101002', '이정재', '750611-1234567', '010-1102-7506', null, '서울', 'P10101', '10');
insert into `Students` values('20111011', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com', '대전', 'P11103', '11');
insert into `Students` values('20111013', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com', '대전', 'P11103', '11');
insert into `Students` values('20111014', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.net', '대전', 'P11104', '11');
insert into `Students` values('21221010', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com', '대구', 'P22110', '22');
insert into `Students` values('21231002', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.net', '대구', 'P23102', '23');
insert into `Students` values('22311011', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.net', '대구', 'P31104', '31');
insert into `Students` values('22311014', '유재석', '721128-1234567', '010-6101-7211', null, '부산', 'P31104', '31');
insert into `Students` values('22401001', '강호동', '920907-1234567', '010-7103-9209', null, '부산', 'P40101', '40');
insert into `Students` values('22401002', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com', '광주', 'P40101', '40');
insert into `Students` values('22421003', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com', '광주', 'P42103', '42');

update `Students` set `stdNo` = '22421003' where `stdName` = '강동원';
alter table `Register` modify `proNo` char(6) not null;
alter table `Register` drop PRIMARY KEY;
alter table `Register` modify `proNo` char(6) null;
alter table `Register` modify `stdNo` char(8) primary key;

#수강 데이터입력
insert into `Register` values(null, null, null, null, null, null, '20101001', '101001', 'P10101');
insert into `Register` values(null, null, null, null, null, null, '20101001', '101002', 'P10102');
insert into `Register` values(null, null, null, null, null, null, '20111013', '111011', 'P11103');
insert into `Register` values(null, null, null, null, null, null, '21231002', '231110', 'P23102');
insert into `Register` values(null, null, null, null, null, null, '22401001', '401019', 'P40101');
insert into `Register` values(null, null, null, null, null, null, '22401001', '421012', 'P42103');
insert into `Register` values(null, null, null, null, null, null, '20101001', '101003', 'P10102');
insert into `Register` values(null, null, null, null, null, null, '22421003', '311003', 'P31104');
insert into `Register` values(null, null, null, null, null, null, '22421003', '421012', 'P42103');
insert into `Register` values(null, null, null, null, null, null, '20111013', '111012', 'P11104');

delete from `Register` where `proNo` is null;

update `Register` set
`proNo` = (
	select `proNo`
from `Lectures` as l1
)
where `lecNo` in
 (select `lecNo` from `Register`as r2 )
;

select `proNo`,`lecNo`
from `Lectures`
where `lecNo` in
 ( select `lecNo` from `Register` );
 
 ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 자료형 FIRST;