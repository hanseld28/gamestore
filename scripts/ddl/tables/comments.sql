--COMENTÁRIOS DAS TABELAS/COLUNA
COMMENT ON TABLE GAMES.CLASSIFICACOES_INDICATIVAS IS
'Tabela com a Classificação indicativa por idade dos jogos';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_ID IS
'Chave primária da tabela CLASSIFICACOES_INDICATIVAS';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_TITULO IS
'Titulo do jogo';
COMMENT ON COLUMN GAMES.CLASSIFICACOES_INDICATIVAS.CIS_IDADE_MINIMA IS
'A idade mínima dos jogos';


COMMENT ON TABLE GAMES.COMPRAS IS
'Tabela com dados das compras realizadas';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_USU_ID IS
'Chave primária da tabela COMPRAS, uma chave estrangeira que vem da tabela USUARIOS';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_FPG_ID  IS
'Chave primária da tabela COMPRAS, uma chave estrangeira que vem da tabela FORMAS_DE_PAGAMENTO';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_DATA IS
'Data em que a compra foi realizada';
COMMENT ON COLUMN GAMES.COMPRAS.CMP_VALOR_TOTAL IS
'Valor total a ser pago nesta compra';


COMMENT ON TABLE GAMES.FORMAS_DE_PAGAMENTO IS
'Tabela com as formas de pagamento, não pode ser nula';
COMMENT ON COLUMN GAMES.FORMAS_DE_PAGAMENTO.FPG_ID IS
'Chave primária da tabela FORMAS_DE_PAGAMENTO, não pode ser nula';
COMMENT ON COLUMN GAMES.FORMAS_DE_PAGAMENTO.FPG_NOME IS
'Possíveis formas de pagamento, não pode ser nula';


COMMENT ON TABLE GAMES.ITENS_DE_COMPRA IS
'Tabela com os itens da compra, não pode ser nula';
COMMENT ON COLUMN GAMES.ITENS_DE_COMPRA.ITC_JGS_ID IS
'Chave primária da tabela ITENS_DE_COMPRA, uma chave estrangeira que vem da tabela JOGOS, não pode ser nula'; --x
COMMENT ON COLUMN GAMES.ITENS_DE_COMPRA.ITC_CMP_USU_ID IS
'Chave primária da tabela ITENS_DE_COMPRA, uma chave estrangeira que vem da tabela COMPRAS, não pode ser nula'; --x


COMMENT ON TABLE GAMES.DESENVOLVEDORAS IS
'Tabela com dados das empresas desenvolvedoras, não pode ser nula';
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_ID IS
'Chave primária da tabela DESENVOLVEDORAS, não pode ser nula'; 
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_NOME  IS
'Nome da empresa desenvolvedora, não pode ser nula'; 
COMMENT ON COLUMN GAMES.DESENVOLVEDORAS.DVD_SOBRE IS
'Pequena descrição da empresa desenvolvedora, não pode ser nula';


COMMENT ON TABLE GAMES.DISTRIBUIDORAS IS
'Tabela com dados das empresas distribuidoras, não pode ser nula';
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_ID IS
'Chave primária da tabela DISTRIBUIDORAS, não pode ser nula'; 
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_NOME  IS
'Nome da empresa distribuidora, não pode ser nula'; 
COMMENT ON COLUMN GAMES.DISTRIBUIDORAS.DBR_SOBRE IS
'Pequena descrição da empresa distribuidora, não pode ser nula';


COMMENT ON TABLE GAMES.EDITORAS IS
'Tabela com dados das editoras dos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.EDITORAS.EDT_ID IS
'Chave primária da tabela EDITORAS, não pode ser nula'; 
COMMENT ON COLUMN GAMES.EDITORAS.EDT_NOME  IS
'Nome da editora, não pode ser nula'; 


COMMENT ON TABLE GAMES.GENEROS IS
'Tabela com os gêneros dos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS.GNR_ID IS
'Chave primária da tabela GENEROS, não pode ser nula'; 
COMMENT ON COLUMN GAMES.GENEROS.GNR_NOME  IS
'Nome do genero a que pertence o jogo, não pode ser nula'; 


COMMENT ON TABLE GAMES.GENEROS_JOGOS IS
'Tabela de muitos para muitos que liga os generos aos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS_JOGOS.GJS_GNR_ID IS
'Chave primária da tabela GENEROS_JOGOS, uma chave estrangeira que vem da tabela GENEROS, não pode ser nula';
COMMENT ON COLUMN GAMES.GENEROS_JOGOS.GJS_JGS_ID IS
'Chave primária da tabela GENEROS_JOGOS, uma chave estrangeira que vem da tabela JOGOS, não pode ser nula';


COMMENT ON TABLE GAMES.JOGOS IS
'Tabela que contém os dados dos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_ID IS
'Chave primária da tabela JOGOS, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_TITULO  IS
'Título do jogo, não pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_DESCRICAO  IS
'Descrição curta do jogo, não pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_SINOPSE  IS
'Guarda uma pequena sinopse do jogo, um dado do tipo NCLOB'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_DATA_LANCAMENTO  IS
'Data do lançamento do jogo, não pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_PRECO  IS
'Preço do jogo, não pode ser nula'; 
COMMENT ON COLUMN GAMES.JOGOS.JGS_EDT_ID  IS
'Chave estrangeira que vem da tabela EDITORAS, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS.JGS_CIS_ID  IS
'Chave estrangeira que vem da tabela CLASSIFICACOES_INDICATIVAS, não pode ser nula'; 


COMMENT ON TABLE GAMES.JOGOS_DESENVOLVIDOS IS
'Tabela de muitos para muitos que liga os desenvolvedores aos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DESENVOLVIDOS.JDS_JGS_ID IS
'Chave primária da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela JOGOS, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DESENVOLVIDOS.JDS_DVD_ID IS
'Chave primária da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela DESENVOLVEDORAS, não pode ser nula';



COMMENT ON TABLE GAMES.JOGOS_DISTRIBUIDOS IS
'Tabela de muitos para muitos que liga os desenvolvedores aos jogos, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DISTRIBUIDOS.JDT_JGS_ID IS
'Chave primária da tabela JOGOS_DISTRIBUIDOS, uma chave estrangeira que vem da tabela JOGOS, não pode ser nula';
COMMENT ON COLUMN GAMES.JOGOS_DISTRIBUIDOS.JDT_DBR_ID IS
'Chave primária da tabela JOGOS_DESENVOLVIDOS, uma chave estrangeira que vem da tabela DISTRIBUIDORAS, não pode ser nula';



COMMENT ON TABLE GAMES.USUARIOS IS
'Tabela que contém os dados dos usuários do site, não pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_ID IS
'Chave primária da tabela USUARIOS, não pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_NICK  IS
'Apelido do usuário, preenchida somente se houver';
COMMENT ON COLUMN GAMES.USUARIOS.USU_PNOME  IS
'Primeiro nome do usuário, não pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_MNOME  IS
'Nome do meio do usuário, preenchida somente se houver';
COMMENT ON COLUMN GAMES.USUARIOS.USU_UNOME  IS
'Sobrenome do usuário, não pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_DT_NASC  IS
'Data de nascimento do usuário, não pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_SENHA  IS
'Senha criada pelo usuário, não pode ser nula'; 
COMMENT ON COLUMN GAMES.USUARIOS.USU_EMAIL  IS
'Email do usuário, não pode ser nula';
COMMENT ON COLUMN GAMES.USUARIOS.USU_DATA_CRIACAO  IS
'Data que de cadastro so usuário, não pode ser nula'; 
