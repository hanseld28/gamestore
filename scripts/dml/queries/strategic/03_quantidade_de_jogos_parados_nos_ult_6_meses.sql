WITH
  IDS_JOGOS 
AS (
    SELECT DISTINCT
      JGS.JGS_ID 
    FROM 
      JOGOS JGS
    MINUS
    SELECT 
      ITC.ITC_JGS_ID
    FROM 
      ITENS_DE_COMPRA ITC
      JOIN COMPRAS CMP ON (CMP.CMP_ID = ITC.ITC_CMP_ID)
    WHERE 
      CMP.CMP_DATA BETWEEN (SYSDATE-(365/2)) AND SYSDATE
   ) 
SELECT
  COUNT(JGS_ID) AS "Quantidade de Jogos"
FROM
  IDS_JOGOS 
;