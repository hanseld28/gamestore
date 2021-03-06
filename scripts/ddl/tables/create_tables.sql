CREATE TABLE CLASSIFICACOES_INDICATIVAS (
    CIS_ID             NUMBER(6) NOT NULL,
    CIS_TITULO         NVARCHAR2(50) NOT NULL,
    CIS_IDADE_MINIMA   NUMBER(2) NOT NULL
);

CREATE TABLE FORMAS_DE_PAGAMENTO ( 
    FPG_ID NUMBER (6)  NOT NULL, 
    FPG_NOME NVARCHAR2 (30)  NOT NULL 
);

CREATE TABLE DESENVOLVEDORAS (
    DVD_ID      NUMBER(6) NOT NULL,
    DVD_NOME    NVARCHAR2(100) NOT NULL
);

CREATE TABLE DISTRIBUIDORAS (
    DBR_ID      NUMBER(6) NOT NULL,
    DBR_NOME    NVARCHAR2(100) NOT NULL
);

CREATE TABLE EDITORAS (
    EDT_ID     NUMBER(6) NOT NULL,
    EDT_NOME   NVARCHAR2(100) NOT NULL
);

CREATE TABLE GENEROS (
    GNR_ID     NUMBER(6) NOT NULL,
    GNR_NOME   NVARCHAR2(100) NOT NULL
);

CREATE TABLE JOGOS (
    JGS_ID                NUMBER(6) NOT NULL,
    JGS_TITULO            NVARCHAR2(100) NOT NULL,
    JGS_DESCRICAO         NVARCHAR2(500) NOT NULL,
    JGS_SINOPSE           NCLOB,
    JGS_DATA_LANCAMENTO   DATE NOT NULL,
    JGS_PRECO             NUMBER(5, 2) NOT NULL,
    JGS_EDT_ID            NUMBER(6) NOT NULL,
    JGS_CIS_ID            NUMBER(6) NOT NULL
);

CREATE TABLE GENEROS_JOGOS (
    GJS_GNR_ID   NUMBER(6) NOT NULL,
    GJS_JGS_ID   NUMBER(6) NOT NULL
);

CREATE TABLE JOGOS_DESENVOLVIDOS (
    JDS_JGS_ID   NUMBER(6) NOT NULL,
    JDS_DVD_ID   NUMBER(6) NOT NULL
);

CREATE TABLE JOGOS_DISTRIBUIDOS (
    JDT_DBR_ID   NUMBER(6) NOT NULL,
    JDT_JGS_ID   NUMBER(6) NOT NULL
);

CREATE TABLE USUARIOS (
    USU_ID             NUMBER(6) NOT NULL,
    USU_NICK           NVARCHAR2(20),
    USU_PNOME          NVARCHAR2(30) NOT NULL,
    USU_MNOME          NVARCHAR2(50),
    USU_UNOME          NVARCHAR2(20) NOT NULL,
    USU_DT_NASC        DATE NOT NULL,
    USU_SENHA          NVARCHAR2(400) NOT NULL,
    USU_EMAIL          NVARCHAR2(60) NOT NULL,
    USU_DATA_CRIACAO   DATE NOT NULL
);

CREATE TABLE COMPRAS ( 
    CMP_ID          NUMBER(6) NOT NULL, 
    CMP_USU_ID 	    NUMBER (6) NOT NULL, 
    CMP_FPG_ID      NUMBER (6) NOT NULL, 
    CMP_DATA        DATE NOT NULL, 
    CMP_VALOR_TOTAL NUMBER (5,2) NOT NULL 
);

CREATE TABLE ITENS_DE_COMPRA ( 
    ITC_JGS_ID NUMBER (6)  NOT NULL, 
    ITC_CMP_ID NUMBER (6)  NOT NULL
);




