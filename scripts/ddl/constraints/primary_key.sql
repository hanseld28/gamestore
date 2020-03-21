ALTER TABLE CLASSIFICACOES_INDICATIVAS ADD CONSTRAINT CIS_PK PRIMARY KEY ( CIS_ID );

ALTER TABLE COMPRAS ADD CONSTRAINT CMP_PK PRIMARY KEY ( CMP_USU_ID, CMP_DATA ); 

ALTER TABLE FORMAS_DE_PAGAMENTO ADD CONSTRAINT FPG_PK PRIMARY KEY ( FPG_ID ); 

ALTER TABLE ITENS_DE_COMPRA ADD CONSTRAINT ITC_PK PRIMARY KEY ( ITC_JGS_ID, ITC_CMP_USU_ID, ITC_CMP_DATA ); 

ALTER TABLE DESENVOLVEDORAS ADD CONSTRAINT DVD_PK PRIMARY KEY ( DVD_ID );

ALTER TABLE DISTRIBUIDORAS ADD CONSTRAINT DBR_PK PRIMARY KEY ( DBR_ID );

ALTER TABLE EDITORAS ADD CONSTRAINT EDT_PK PRIMARY KEY ( EDT_ID );

ALTER TABLE GENEROS ADD CONSTRAINT GNR_PK PRIMARY KEY ( GNR_ID );

ALTER TABLE GENEROS_JOGOS ADD CONSTRAINT GJS_PK PRIMARY KEY ( GJS_GNR_ID, GJS_JGS_ID );

ALTER TABLE JOGOS ADD CONSTRAINT JGS_PK PRIMARY KEY ( JGS_ID );

ALTER TABLE JOGOS_DESENVOLVIDOS ADD CONSTRAINT JDS_PK PRIMARY KEY ( JDS_JGS_ID, JDS_DVD_ID );

ALTER TABLE JOGOS_DISTRIBUIDOS ADD CONSTRAINT JDT_PK PRIMARY KEY ( JDT_DBR_ID, JDT_JGS_ID );

ALTER TABLE USUARIOS ADD CONSTRAINT USU_PK PRIMARY KEY ( USU_ID );
