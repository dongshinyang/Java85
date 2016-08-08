-- 주문
DROP TABLE IF EXISTS ORDS RESTRICT;

-- 제품
DROP TABLE IF EXISTS PRODS RESTRICT;

-- 제조사
DROP TABLE IF EXISTS MKRS RESTRICT;

-- 고객
DROP TABLE IF EXISTS CUSTS RESTRICT;

-- 제품사진
DROP TABLE IF EXISTS PROD_PHOS RESTRICT;

-- 주소
DROP TABLE IF EXISTS ADDRS RESTRICT;

-- 고객사진
DROP TABLE IF EXISTS CUST_PHOS RESTRICT;

-- 배송주소
DROP TABLE IF EXISTS DLV_ADDRS RESTRICT;

-- 주문
CREATE TABLE ORDS (
	ONO    INTEGER     NOT NULL COMMENT '주문번호', -- 주문번호
	PNO    INTEGER     NOT NULL COMMENT '제품번호', -- 제품번호
	CID    VARCHAR(20) NOT NULL COMMENT '고객아이디', -- 고객아이디
	QTY    INTEGER     NOT NULL DEFAULT 1 COMMENT '주문수량', -- 주문수량
	ORD_DT DATETIME    NOT NULL COMMENT '주문일' -- 주문일
)
COMMENT '주문';

-- 주문
ALTER TABLE ORDS
	ADD CONSTRAINT PK_ORDS -- 주문 Primary key
		PRIMARY KEY (
			ONO -- 주문번호
		);

ALTER TABLE ORDS
	MODIFY COLUMN ONO INTEGER NOT NULL AUTO_INCREMENT COMMENT '주문번호';

-- 제품
CREATE TABLE PRODS (
	PNO    INTEGER      NOT NULL COMMENT '제품번호', -- 제품번호
	MKNO   INTEGER      NULL     COMMENT '제조사번호', -- 제조사번호
	PNAME  VARCHAR(255) NOT NULL COMMENT '제품명', -- 제품명
	DESCPT MEDIUMTEXT   NOT NULL COMMENT '설명', -- 설명
	PRICE  INTEGER      NOT NULL COMMENT '가격', -- 가격
	QTY    INTEGER      NOT NULL DEFAULT 1 COMMENT '잔여수량' -- 잔여수량
)
COMMENT '제품';

-- 제품
ALTER TABLE PRODS
	ADD CONSTRAINT PK_PRODS -- 제품 Primary key
		PRIMARY KEY (
			PNO -- 제품번호
		);

-- 제품 Index
CREATE INDEX IX_PRODS
	ON PRODS( -- 제품
		PNAME ASC -- 제품명
	);

ALTER TABLE PRODS
	MODIFY COLUMN PNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '제품번호';

-- 제조사
CREATE TABLE MKRS (
	MKNO   INTEGER      NOT NULL COMMENT '제조사번호', -- 제조사번호
	MKNAME VARCHAR(80)  NOT NULL COMMENT '제조사명', -- 제조사명
	WWW    VARCHAR(255) NOT NULL COMMENT '홈페이지', -- 홈페이지
	TEL    VARCHAR(30)  NULL     COMMENT '전화', -- 전화
	FAX    VARCHAR(30)  NULL     COMMENT '팩스' -- 팩스
)
COMMENT '제조사';

-- 제조사
ALTER TABLE MKRS
	ADD CONSTRAINT PK_MKRS -- 제조사 Primary key
		PRIMARY KEY (
			MKNO -- 제조사번호
		);

ALTER TABLE MKRS
	MODIFY COLUMN MKNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '제조사번호';

-- 고객
CREATE TABLE CUSTS (
	CID      VARCHAR(20)  NOT NULL COMMENT '고객아이디', -- 고객아이디
	PWD      VARCHAR(100) NOT NULL COMMENT '암호', -- 암호
	CNAME    VARCHAR(80)  NOT NULL COMMENT '고객명', -- 고객명
	TEL      VARCHAR(30)  NULL     COMMENT '전화', -- 전화
	EMAIL    VARCHAR(40)  NOT NULL COMMENT '이메일', -- 이메일
	ADNO     INTEGER      NULL     COMMENT '주소번호', -- 주소번호
	DET_ADDR VARCHAR(255) NULL     COMMENT '상세주소' -- 상세주소
)
COMMENT '고객';

-- 고객
ALTER TABLE CUSTS
	ADD CONSTRAINT PK_CUSTS -- 고객 Primary key
		PRIMARY KEY (
			CID -- 고객아이디
		);

-- 고객 Unique Index
CREATE UNIQUE INDEX UIX_CUSTS
	ON CUSTS ( -- 고객
		EMAIL ASC -- 이메일
	);

-- 고객 Index
CREATE INDEX IX_CUSTS
	ON CUSTS( -- 고객
		CNAME ASC -- 고객명
	);

-- 제품사진
CREATE TABLE PROD_PHOS (
	PPNO     INTEGER      NOT NULL COMMENT '제품사진번호', -- 제품사진번호
	PNO      INTEGER      NOT NULL COMMENT '제품번호', -- 제품번호
	PHO_PATH VARCHAR(255) NOT NULL COMMENT '사진' -- 사진
)
COMMENT '제품사진';

-- 제품사진
ALTER TABLE PROD_PHOS
	ADD CONSTRAINT PK_PROD_PHOS -- 제품사진 Primary key
		PRIMARY KEY (
			PPNO -- 제품사진번호
		);

ALTER TABLE PROD_PHOS
	MODIFY COLUMN PPNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '제품사진번호';

-- 주소
CREATE TABLE ADDRS (
	ADNO     INTEGER      NOT NULL COMMENT '주소번호', -- 주소번호
	POSTNO   CHAR(5)      NOT NULL COMMENT '우편번호', -- 우편번호
	BAS_ADDR VARCHAR(255) NOT NULL COMMENT '기본주소' -- 기본주소
)
COMMENT '주소';

-- 주소
ALTER TABLE ADDRS
	ADD CONSTRAINT PK_ADDRS -- 주소 Primary key
		PRIMARY KEY (
			ADNO -- 주소번호
		);

-- 주소 Index
CREATE INDEX IX_ADDRS
	ON ADDRS( -- 주소
		BAS_ADDR ASC -- 기본주소
	);

ALTER TABLE ADDRS
	MODIFY COLUMN ADNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '주소번호';

-- 고객사진
CREATE TABLE CUST_PHOS (
	CID      VARCHAR(20)  NOT NULL COMMENT '고객아이디', -- 고객아이디
	PHO_PATH VARCHAR(255) NOT NULL COMMENT '사진' -- 사진
)
COMMENT '고객사진';

-- 고객사진
ALTER TABLE CUST_PHOS
	ADD CONSTRAINT PK_CUST_PHOS -- 고객사진 Primary key
		PRIMARY KEY (
			CID -- 고객아이디
		);

-- 배송주소
CREATE TABLE DLV_ADDRS (
	DNO      INTEGER      NOT NULL COMMENT '배송주소번호', -- 배송주소번호
	CID      VARCHAR(20)  NOT NULL COMMENT '고객아이디', -- 고객아이디
	POSTNO   CHAR(5)      NOT NULL COMMENT '우편번호', -- 우편번호
	BAS_ADDR VARCHAR(255) NOT NULL COMMENT '기본주소', -- 기본주소
	DET_ADDR VARCHAR(255) NOT NULL COMMENT '상세주소', -- 상세주소
	USE_DT   DATETIME     NOT NULL COMMENT '이용일' -- 이용일
)
COMMENT '배송주소';

-- 배송주소
ALTER TABLE DLV_ADDRS
	ADD CONSTRAINT PK_DLV_ADDRS -- 배송주소 Primary key
		PRIMARY KEY (
			DNO -- 배송주소번호
		);

ALTER TABLE DLV_ADDRS
	MODIFY COLUMN DNO INTEGER NOT NULL AUTO_INCREMENT COMMENT '배송주소번호';

-- 주문
ALTER TABLE ORDS
	ADD CONSTRAINT FK_PRODS_TO_ORDS -- 제품 -> 주문
		FOREIGN KEY (
			PNO -- 제품번호
		)
		REFERENCES PRODS ( -- 제품
			PNO -- 제품번호
		);

-- 주문
ALTER TABLE ORDS
	ADD CONSTRAINT FK_CUSTS_TO_ORDS -- 고객 -> 주문
		FOREIGN KEY (
			CID -- 고객아이디
		)
		REFERENCES CUSTS ( -- 고객
			CID -- 고객아이디
		);

-- 제품
ALTER TABLE PRODS
	ADD CONSTRAINT FK_MKRS_TO_PRODS -- 제조사 -> 제품
		FOREIGN KEY (
			MKNO -- 제조사번호
		)
		REFERENCES MKRS ( -- 제조사
			MKNO -- 제조사번호
		);

-- 고객
ALTER TABLE CUSTS
	ADD CONSTRAINT FK_ADDRS_TO_CUSTS -- 주소 -> 고객
		FOREIGN KEY (
			ADNO -- 주소번호
		)
		REFERENCES ADDRS ( -- 주소
			ADNO -- 주소번호
		);

-- 제품사진
ALTER TABLE PROD_PHOS
	ADD CONSTRAINT FK_PRODS_TO_PROD_PHOS -- 제품 -> 제품사진
		FOREIGN KEY (
			PNO -- 제품번호
		)
		REFERENCES PRODS ( -- 제품
			PNO -- 제품번호
		);

-- 고객사진
ALTER TABLE CUST_PHOS
	ADD CONSTRAINT FK_CUSTS_TO_CUST_PHOS -- 고객 -> 고객사진
		FOREIGN KEY (
			CID -- 고객아이디
		)
		REFERENCES CUSTS ( -- 고객
			CID -- 고객아이디
		);

-- 배송주소
ALTER TABLE DLV_ADDRS
	ADD CONSTRAINT FK_CUSTS_TO_DLV_ADDRS -- 고객 -> 배송주소
		FOREIGN KEY (
			CID -- 고객아이디
		)
		REFERENCES CUSTS ( -- 고객
			CID -- 고객아이디
		);