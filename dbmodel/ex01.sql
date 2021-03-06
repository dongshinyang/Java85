-- 교육과정
DROP TABLE IF EXISTS BIT_COURS RESTRICT;

-- 강사
DROP TABLE IF EXISTS BIT_TCHS RESTRICT;

-- 매니저
DROP TABLE IF EXISTS BIT_MGRS RESTRICT;

-- 학생
DROP TABLE IF EXISTS BIT_STDS RESTRICT;

-- 학습모듈
DROP TABLE IF EXISTS BIT_SUBJ_MODS RESTRICT;

-- 회원
DROP TABLE IF EXISTS BIT_MEMBS RESTRICT;

-- 수강신청
DROP TABLE IF EXISTS BIT_APPLS RESTRICT;

-- 과정학습모듈
DROP TABLE IF EXISTS BIT_CO_MODS RESTRICT;

-- 회원사진
DROP TABLE IF EXISTS BIT_MEMB_PHOS RESTRICT;

-- 교육과정
CREATE TABLE BIT_COURS (
	CONO  INTEGER      NOT NULL COMMENT '교육과정번호', -- 교육과정번호
	TITL  VARCHAR(255) NOT NULL COMMENT '과정명', -- 과정명
	CONTS MEDIUMTEXT   NOT NULL COMMENT '설명', -- 설명
	ST_DT DATE         NOT NULL COMMENT '시작일', -- 시작일
	ED_DT DATE         NOT NULL COMMENT '종료일', -- 종료일
	QTY   INTEGER      NOT NULL COMMENT '모집인원', -- 모집인원
	STAT  INTEGER      NULL     COMMENT '상태', -- 상태
	ROOM  VARCHAR(50)  NULL     COMMENT '강의실', -- 강의실
	MGRNO INTEGER      NULL     COMMENT '매니저번호' -- 매니저번호
)
COMMENT '교육과정';

-- 교육과정
ALTER TABLE BIT_COURS
	ADD CONSTRAINT PK_BIT_COURS -- 교육과정 Primary key
		PRIMARY KEY (
			CONO -- 교육과정번호
		);

-- 교육과정 Index
CREATE INDEX IX_BIT_COURS
	ON BIT_COURS( -- 교육과정
		TITL ASC -- 과정명
	);

ALTER TABLE BIT_COURS
	MODIFY COLUMN CONO INTEGER NOT NULL AUTO_INCREMENT COMMENT '교육과정번호';

-- 강사
CREATE TABLE BIT_TCHS (
	TNO    INTEGER NOT NULL COMMENT '강사번호', -- 강사번호
	SAL_HR INTEGER NULL     COMMENT '시급' -- 시급
)
COMMENT '강사';

-- 강사
ALTER TABLE BIT_TCHS
	ADD CONSTRAINT PK_BIT_TCHS -- 강사 Primary key
		PRIMARY KEY (
			TNO -- 강사번호
		);

-- 매니저
CREATE TABLE BIT_MGRS (
	MGRNO INTEGER     NOT NULL COMMENT '매니저번호', -- 매니저번호
	POSI  VARCHAR(50) NULL     COMMENT '직급' -- 직급
)
COMMENT '매니저';

-- 매니저
ALTER TABLE BIT_MGRS
	ADD CONSTRAINT PK_BIT_MGRS -- 매니저 Primary key
		PRIMARY KEY (
			MGRNO -- 매니저번호
		);

-- 학생
CREATE TABLE BIT_STDS (
	SNO      INTEGER      NOT NULL COMMENT '학생번호', -- 학생번호
	SLVL     VARCHAR(50)  NOT NULL COMMENT '최종학교', -- 최종학교
	SCHL     VARCHAR(50)  NOT NULL COMMENT '학교명', -- 학교명
	ED_DT    DATE         NOT NULL COMMENT '졸업년도', -- 졸업년도
	WORK     CHAR(1)      NOT NULL COMMENT '재직여부', -- 재직여부
	COMP     VARCHAR(50)  NULL     COMMENT '회사명', -- 회사명
	POSI     VARCHAR(50)  NULL     COMMENT '직급', -- 직급
	CTEL     VARCHAR(30)  NULL     COMMENT '회사전화', -- 회사전화
	CFAX     VARCHAR(30)  NULL     COMMENT '회사팩스', -- 회사팩스
	POSTNO   CHAR(5)      NULL     COMMENT '우편번호', -- 우편번호
	BAS_ADDR VARCHAR(255) NULL     COMMENT '기본주소', -- 기본주소
	DET_ADDR VARCHAR(255) NULL     COMMENT '상세주소' -- 상세주소
)
COMMENT '학생';

-- 학생
ALTER TABLE BIT_STDS
	ADD CONSTRAINT PK_BIT_STDS -- 학생 Primary key
		PRIMARY KEY (
			SNO -- 학생번호
		);

-- 학습모듈
CREATE TABLE BIT_SUBJ_MODS (
	SMNO  INTEGER      NOT NULL COMMENT '학습모듈번호', -- 학습모듈번호
	TITL  VARCHAR(255) NOT NULL COMMENT '학습목듈명', -- 학습목듈명
	CONTS TEXT         NULL     COMMENT '내용' -- 내용
)
COMMENT '학습모듈';

-- 학습모듈
ALTER TABLE BIT_SUBJ_MODS
	ADD CONSTRAINT PK_BIT_SUBJ_MODS -- 학습모듈 Primary key
		PRIMARY KEY (
			SMNO -- 학습모듈번호
		);

-- 학습모듈 Index
CREATE INDEX IX_BIT_SUBJ_MODS
	ON BIT_SUBJ_MODS( -- 학습모듈
		TITL ASC -- 학습목듈명
	);

ALTER TABLE BIT_SUBJ_MODS
	MODIFY COLUMN SMNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '학습모듈번호';

-- 회원
CREATE TABLE BIT_MEMBS (
	MNO   INTEGER     NOT NULL COMMENT '회원번호', -- 회원번호
	MNM   VARCHAR(50) NOT NULL COMMENT '이름', -- 이름
	TEL   VARCHAR(30) NOT NULL COMMENT '전화', -- 전화
	EMAIL VARCHAR(40) NOT NULL COMMENT '이메일', -- 이메일
	PWD   VARCHAR(50) NOT NULL COMMENT '암호' -- 암호
)
COMMENT '회원';

-- 회원
ALTER TABLE BIT_MEMBS
	ADD CONSTRAINT PK_BIT_MEMBS -- 회원 Primary key
		PRIMARY KEY (
			MNO -- 회원번호
		);

-- 회원 Unique Index
CREATE UNIQUE INDEX UIX_BIT_MEMBS
	ON BIT_MEMBS ( -- 회원
		EMAIL ASC -- 이메일
	);

ALTER TABLE BIT_MEMBS
	MODIFY COLUMN MNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 수강신청
CREATE TABLE BIT_APPLS (
	SNO    INTEGER  NOT NULL COMMENT '학생번호', -- 학생번호
	CONO   INTEGER  NOT NULL COMMENT '교육과정번호', -- 교육과정번호
	CRE_DT DATETIME NOT NULL COMMENT '신청일', -- 신청일
	STAT   INTEGER  NULL     COMMENT '상태', -- 상태
	RESN   TEXT     NULL     COMMENT '이유' -- 이유
)
COMMENT '수강신청';

-- 수강신청
ALTER TABLE BIT_APPLS
	ADD CONSTRAINT PK_BIT_APPLS -- 수강신청 Primary key
		PRIMARY KEY (
			SNO,  -- 학생번호
			CONO  -- 교육과정번호
		);

-- 과정학습모듈
CREATE TABLE BIT_CO_MODS (
	CONO INTEGER NOT NULL COMMENT '교육과정번호', -- 교육과정번호
	SMNO INTEGER NOT NULL COMMENT '학습모듈번호', -- 학습모듈번호
	TNO  INTEGER NULL     COMMENT '강사번호' -- 강사번호
)
COMMENT '과정학습모듈';

-- 과정학습모듈
ALTER TABLE BIT_CO_MODS
	ADD CONSTRAINT PK_BIT_CO_MODS -- 과정학습모듈 Primary key
		PRIMARY KEY (
			CONO, -- 교육과정번호
			SMNO  -- 학습모듈번호
		);

-- 회원사진
CREATE TABLE BIT_MEMB_PHOS (
	MPNO      INTEGER      NOT NULL COMMENT '회원사진번호', -- 회원사진번호
	MNO       INTEGER      NOT NULL COMMENT '회원번호', -- 회원번호
	PHOT_PATH VARCHAR(255) NOT NULL COMMENT '사진' -- 사진
)
COMMENT '회원사진';

-- 회원사진
ALTER TABLE BIT_MEMB_PHOS
	ADD CONSTRAINT PK_BIT_MEMB_PHOS -- 회원사진 Primary key
		PRIMARY KEY (
			MPNO -- 회원사진번호
		);

ALTER TABLE BIT_MEMB_PHOS
	MODIFY COLUMN MPNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원사진번호';

-- 교육과정
ALTER TABLE BIT_COURS
	ADD CONSTRAINT FK_BIT_MGRS_TO_BIT_COURS -- 매니저 -> 교육과정
		FOREIGN KEY (
			MGRNO -- 매니저번호
		)
		REFERENCES BIT_MGRS ( -- 매니저
			MGRNO -- 매니저번호
		);

-- 강사
ALTER TABLE BIT_TCHS
	ADD CONSTRAINT FK_BIT_MEMBS_TO_BIT_TCHS -- 회원 -> 강사
		FOREIGN KEY (
			TNO -- 강사번호
		)
		REFERENCES BIT_MEMBS ( -- 회원
			MNO -- 회원번호
		);

-- 매니저
ALTER TABLE BIT_MGRS
	ADD CONSTRAINT FK_BIT_MEMBS_TO_BIT_MGRS -- 회원 -> 매니저
		FOREIGN KEY (
			MGRNO -- 매니저번호
		)
		REFERENCES BIT_MEMBS ( -- 회원
			MNO -- 회원번호
		);

-- 학생
ALTER TABLE BIT_STDS
	ADD CONSTRAINT FK_BIT_MEMBS_TO_BIT_STDS -- 회원 -> 학생
		FOREIGN KEY (
			SNO -- 학생번호
		)
		REFERENCES BIT_MEMBS ( -- 회원
			MNO -- 회원번호
		);

-- 수강신청
ALTER TABLE BIT_APPLS
	ADD CONSTRAINT FK_BIT_STDS_TO_BIT_APPLS -- 학생 -> 수강신청
		FOREIGN KEY (
			SNO -- 학생번호
		)
		REFERENCES BIT_STDS ( -- 학생
			SNO -- 학생번호
		);

-- 수강신청
ALTER TABLE BIT_APPLS
	ADD CONSTRAINT FK_BIT_COURS_TO_BIT_APPLS -- 교육과정 -> 수강신청
		FOREIGN KEY (
			CONO -- 교육과정번호
		)
		REFERENCES BIT_COURS ( -- 교육과정
			CONO -- 교육과정번호
		);

-- 과정학습모듈
ALTER TABLE BIT_CO_MODS
	ADD CONSTRAINT FK_BIT_COURS_TO_BIT_CO_MODS -- 교육과정 -> 과정학습모듈
		FOREIGN KEY (
			CONO -- 교육과정번호
		)
		REFERENCES BIT_COURS ( -- 교육과정
			CONO -- 교육과정번호
		);

-- 과정학습모듈
ALTER TABLE BIT_CO_MODS
	ADD CONSTRAINT FK_BIT_SUBJ_MODS_TO_BIT_CO_MODS -- 학습모듈 -> 과정학습모듈
		FOREIGN KEY (
			SMNO -- 학습모듈번호
		)
		REFERENCES BIT_SUBJ_MODS ( -- 학습모듈
			SMNO -- 학습모듈번호
		);

-- 과정학습모듈
ALTER TABLE BIT_CO_MODS
	ADD CONSTRAINT FK_BIT_TCHS_TO_BIT_CO_MODS -- 강사 -> 과정학습모듈
		FOREIGN KEY (
			TNO -- 강사번호
		)
		REFERENCES BIT_TCHS ( -- 강사
			TNO -- 강사번호
		);

-- 회원사진
ALTER TABLE BIT_MEMB_PHOS
	ADD CONSTRAINT FK_BIT_MEMBS_TO_BIT_MEMB_PHOS -- 회원 -> 회원사진
		FOREIGN KEY (
			MNO -- 회원번호
		)
		REFERENCES BIT_MEMBS ( -- 회원
			MNO -- 회원번호
		);