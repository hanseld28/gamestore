--COMENT�?RIOS DAS TABELAS/COLUNA
COMMENT ON TABLE GAMES.CLASSIFICACOES_INDICATIVAS IS
'Tabela com a Classifica��o indicativa por idade dos jogos';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_ID IS
'Chave prim�ria da tabela CLASSIFICACOES_INDICATIVAS';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_TITULO IS
'Titulo do jogo';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_IDADE_MINIMA IS
'A idade m�nima dos jogos';


COMMENT ON TABLE GAMES.COMPRAS IS
'Tabela com dados das compras realizadas';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_USU_ID IS
'Chave prim�ria da tabela COMPRAS, uma chave estrangeira que vem da tabela USUARIOS';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_FPG_ID  IS
'Chave prim�ria da tabela COMPRAS, uma chave estrangeira que vem da tabela FORMAS_DE_PAGAMENTO';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_DATA IS
'Data em que a compra foi realizada';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_VALOR_TOTAL IS
'Valor total a ser pago nesta compra';


COMMENT ON TABLE GAMES.FORMAS_DE_PAGAMENTO IS
'Tabela com as formas de pagamento, n�o pode ser nula';
COMMENT ON COLUMN GAMES.FORMAS_DE_PAGAMENTO.FPG_ID IS
'Chave prim�ria da tabela FORMAS_DE_PAGAMENTO, n�o pode ser nula';
COMMENT ON COLUMN GAMES.FORMAS_DE_PAGAMENTO.FPG_NOME IS
'Poss�veis formas de pagamento, n�o pode ser nula';


COMMENT ON TABLE GAMES.ITENS_DE_COMPRA IS
'Tabela com os itens da compra, n�o pode ser nula';
COMMENT ON COLUMN GAMES.ITENS_DE_COMPRA.ITC_JGS_ID IS
'Chave prim�ria da tabela ITENS_DE_COMPRA, uma chave estrangeira que vem da tabela JOGOS, n�o pode ser nula'; --x
COMMENT ON COLUMN GAMES.ITENS_DE_COMPRA.ITC_CMP_USU_ID IS
'Chave prim�ria da tabela ITENS_DE_COMPRA, uma chave estrangeira que vem da tabela COMPRAS, n�o pode ser nula'; --x


COMMENT ON TABLE GAMES.DESENVOLVEDORAS IS
'Tabela com dados das empresas desenvolvedoras, n�o pode ser nula';
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_ID IS
'Chave prim�ria da tabela DESENVOLVEDORAS, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_NOME  IS
'Nome da empresa desenvolvedora, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_SOBRE IS
'Pequena descri��o da empresa desenvolvedora, n�o pode ser nula';


COMMENT ON TABLE GAMES.DISTRIBUIDORAS IS
'Tabela com dados das empresas distribuidoras, n�o pode ser nula';
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_ID IS
'Chave prim�ria da tabela DISTRIBUIDORAS, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_NOME  IS
'Nome da empresa distribuidora, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_SOBRE IS
'Pequena descri��o da empresa distribuidora, n�o pode ser nula';


COMMENT ON TABLE GAMES.EDITORAS IS
'Tabela com dados das editoras dos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.EDITORAS.EDT_ID IS
'Chave prim�ria da tabela EDITORAS, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.EDITORAS.EDT_NOME  IS
'Nome da editora, n�o pode ser nula'; 


COMMENT ON TABLE GAMES.GENEROS IS
'Tabela com os g�neros dos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS.GNR_ID IS
'Chave prim�ria da tabela GENEROS, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.GENEROS.GNR_NOME  IS
'Nome do genero a que pertence o jogo, n�o pode ser nula'; 


COMMENT ON TABLE GAMES.GENEROS_JOGOS IS
'Tabela de muitos para muitos que liga os generos aos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS_JOGOS.GJS_GNR_ID IS
'Chave prim�ria da tabela GENEROS_JOGOS, uma chave estrangeira que vem da tabela GENEROS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS_JOGOS.GJS_JGS_ID IS
'Chave prim�ria da tabela GENEROS_JOGOS, uma chave estrangeira que vem da tabela JOGOS, n�o pode ser nula';


COMMENT ON TABLE GAMES.JOGOS IS
'Tabela que cont�m os dados dos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_ID IS
'Chave prim�ria da tabela JOGOS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_TITULO  IS
'T�tulo do jogo, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_DESCRICAO  IS
'Descri��o curta do jogo, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_SINOPSE  IS
'Guarda uma pequena sinopse do jogo, um dado do tipo NCLOB'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_DATA_LANCAMENTO  IS
'Data do lan�amento do jogo, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_PRECO  IS
'Pre�o do jogo, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_EDT_ID  IS
'Chave estrangeira que vem da tabela EDITORAS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_CIS_ID  IS
'Chave estrangeira que vem da tabela CLASSIFICACOES_INDICATIVAS, n�o pode ser nula'; 


COMMENT ON TABLE GAMES.JOGOS_DESENVOLVIDOS IS
'Tabela de muitos para muitos que liga os desenvolvedores aos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DESENVOLVIDOS.JDS_JGS_ID IS
'Chave prim�ria da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela JOGOS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DESENVOLVIDOS.JDS_DVD_ID IS
'Chave prim�ria da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela DESENVOLVEDORAS, n�o pode ser nula';



COMMENT ON TABLE GAMES.JOGOS_DISTRIBUIDOS IS
'Tabela de muitos para muitos que liga os desenvolvedores aos jogos, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DISTRIBUIDOS.JDT_JGS_ID IS
'Chave prim�ria da tabela JOGOS_DISTRIBUIDOS, uma chave estrangeira que vem da tabela JOGOS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DISTRIBUIDOS.JDT_DBR_ID IS
'Chave prim�ria da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela DISTRIBUIDORAS, n�o pode ser nula';



COMMENT ON TABLE GAMES.USUARIOS IS
'Tabela que cont�m os dados dos usu�rios do site, n�o pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_ID IS
'Chave prim�ria da tabela USUARIOS, n�o pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_NICK  IS
'Apelido do usu�rio, preenchida somente se houver';
COMMENT ON COLUMN GAMES.USUARIOS.USU_PNOME  IS
'Primeiro nome do usu�rio, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_MNOME  IS
'Nome do meio do usu�rio, preenchida somente se houver';
COMMENT ON COLUMN GAMES.USUARIOS.USU_UNOME  IS
'Sobrenome do usu�rio, n�o pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_DT_NASC  IS
'Data de nascimento do usu�rio, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_SENHA  IS
'Senha criada pelo usu�rio, n�o pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_EMAIL  IS
'Email do usu�rio, n�o pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_DATA_CRIACAO  IS
'Data que de cadastro so usu�rio, n�o pode ser nula'; 
