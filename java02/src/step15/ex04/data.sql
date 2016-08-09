/* 학습모듈 데이터 입력 */
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('SW아키텍처');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('응용SW엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('임베디드SW엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('DB엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('NW엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('보안엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('UI/UX엔지니어링');
INSERT INTO BIT_SUBJ_MODS(TITL) VALUES('시스템SW엔지니어링');

/* 강사 회원 정보 등록 */
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('홍길동','111-1111','hong@bit.com','1111');
INSERT INTO BIT_TCHS(TNO) VALUES(1);
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('임꺽정','111-1112','leem@bit.com','1111');
INSERT INTO BIT_TCHS(TNO) VALUES(2);
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('유관순','111-1113','ryu@bit.com','1111');
INSERT INTO BIT_TCHS(TNO) VALUES(3);
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('김구','111-1114','kim@bit.com','1111');
INSERT INTO BIT_TCHS(TNO) VALUES(4);
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('안중근','111-1115','ahn@bit.com','1111');
INSERT INTO BIT_TCHS(TNO) VALUES(5);

/* 매니저 회원 정보 등록 */
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('김용','111-1116','kimy@bit.com','1111');
INSERT INTO BIT_MGRS(MGRNO,POSI) VALUES(6,'대리');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('강소희','111-1117','kang@bit.com','1111');
INSERT INTO BIT_MGRS(MGRNO,POSI) VALUES(7,'주임');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('장현진','111-1118','jang@bit.com','1111');
INSERT INTO BIT_MGRS(MGRNO,POSI) VALUES(8,'대리');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('홍주형','111-1119','hongjh@bit.com','1111');
INSERT INTO BIT_MGRS(MGRNO,POSI) VALUES(9,'주임');

/* 학생 회원 정보 등록 */
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생1','2222-0001','s01@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생2','2222-0002','s02@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생3','2222-0003','s03@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생4','2222-0004','s04@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생5','2222-0005','s05@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생6','2222-0006','s06@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생7','2222-0007','s07@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생8','2222-0008','s08@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생9','2222-0009','s09@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생10','2222-0010','s10@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생11','2222-0011','s11@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생12','2222-0012','s12@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생13','2222-0013','s13@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생14','2222-0014','s14@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생15','2222-0015','s15@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생16','2222-0016','s16@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생17','2222-0017','s17@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생18','2222-0018','s18@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생19','2222-0019','s19@test.com','1111');
INSERT INTO BIT_MEMBS(MNM,TEL,EMAIL,PWD) VALUES('학생20','2222-0020','s20@test.com','1111');

INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(10,'학사','대한대학교','2010-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(11,'학사','대한대학교','2011-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(12,'학사','대한대학교','2012-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(13,'학사','대한대학교','2013-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(14,'석사','대한대학교','2014-2-10','N');

INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(15,'학사','고구려대학교','2012-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(16,'학사','고구려대학교','2012-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(17,'학사','고구려대학교','2012-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(18,'석사','고구려대학교','1998-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(19,'석사','고구려대학교','1998-2-10','N');

INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(20,'학사','고조선대학교','2011-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(21,'학사','고조선대학교','2011-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(22,'학사','고조선대학교','2011-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(23,'석사','고조선대학교','2001-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(24,'박사','고조선대학교','2001-2-10','N');

INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(25,'고졸','부산고등학교','2015-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(26,'고졸','광주고등학교','2015-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(27,'고졸','청주고등학교','2015-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(28,'고졸','강릉고등학교','2015-2-10','N');
INSERT INTO BIT_STDS(SNO,SLVL,SCHL,ED_DT,WORK) VALUES(29,'고졸','용인고등학교','2015-2-10','N');


