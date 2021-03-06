SELECT 
  (
    SELECT COUNT(CMP.CMP_ID) 
    FROM COMPRAS CMP 
      JOIN USUARIOS USU ON (USU.USU_ID = CMP.CMP_USU_ID)
    WHERE TRUNC((MONTHS_BETWEEN(SYSDATE, USU.USU_DT_NASC))/12) 
      BETWEEN 10 AND 15
  ) AS "10 a 15 anos",
  (
    SELECT COUNT(CMP.CMP_ID) 
    FROM COMPRAS CMP 
      JOIN USUARIOS USU ON (USU.USU_ID = CMP.CMP_USU_ID)
    WHERE TRUNC((MONTHS_BETWEEN(SYSDATE, USU.USU_DT_NASC))/12) 
      BETWEEN 16 AND 24
  ) AS "16 a 24 anos",
  (
    SELECT COUNT(CMP.CMP_ID) 
    FROM COMPRAS CMP 
      JOIN USUARIOS USU ON (USU.USU_ID = CMP.CMP_USU_ID)
    WHERE TRUNC((MONTHS_BETWEEN(SYSDATE, USU.USU_DT_NASC))/12) 
      BETWEEN 25 AND 44
  ) AS "25 a 44 anos",
  (
    SELECT COUNT(CMP.CMP_ID) 
    FROM COMPRAS CMP 
      JOIN USUARIOS USU ON (USU.USU_ID = CMP.CMP_USU_ID)
    WHERE TRUNC((MONTHS_BETWEEN(SYSDATE, USU.USU_DT_NASC))/12) 
      BETWEEN 45 AND 50
  ) AS "45 a 50 anos",
  (
    SELECT COUNT(CMP.CMP_ID) 
    FROM COMPRAS CMP 
      JOIN USUARIOS USU ON (USU.USU_ID = CMP.CMP_USU_ID)
    WHERE TRUNC((MONTHS_BETWEEN(SYSDATE, USU.USU_DT_NASC))/12) 
      >= 51
  ) AS "51 anos ou mais "
FROM
  DUAL
;