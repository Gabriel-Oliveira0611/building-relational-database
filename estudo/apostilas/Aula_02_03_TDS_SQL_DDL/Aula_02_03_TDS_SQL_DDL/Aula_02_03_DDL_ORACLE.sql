-- ============================================================================
-- AULA - DDL / ALTER TABLE - ORACLE
-- ============================================================================
-- Professor: Diogo Alves
--
-- Observação:
-- Alguns comandos abaixo são destrutivos (DROP) ou dependem do estado atual
-- da tabela. Para facilitar a aula, os exemplos foram organizados por assunto.
-- Execute cada bloco conforme a explicação em sala.
-- ============================================================================

-- LIMPEZA DO AMBIENTE - OPCIONAL
DROP TABLE T_TESTE_DDL CASCADE CONSTRAINTS;

-- ============================================================================
-- 1. CRIAÇÃO DA TABELA DE EXEMPLO
-- ============================================================================

CREATE TABLE T_TESTE_DDL
(
    CD_TESTE NUMBER(3)     NOT NULL,
    NM_TESTE VARCHAR2(30)  NOT NULL,
    DS_TESTE VARCHAR2(60)  NULL,
    DT_TESTE DATE          NULL
);


-- ============================================================================
-- 2. ADIÇÃO DE CONSTRAINTS
-- ============================================================================

-- CHAVE PRIMÁRIA
ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT PK_TESTE_DDL PRIMARY KEY (CD_TESTE);

-- CONSTRAINT UNIQUE
ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT UN_TESTE_DDL_NOME UNIQUE (NM_TESTE);

ALTER TABLE T_TESTE_DDL
ADD CONSTRAINT UN_TESTE_DDL_DESC UNIQUE (DS_TESTE);


-- ============================================================================
-- 3. ADIÇÃO DE COLUNAS
-- ============================================================================

-- ADIÇÃO DE UMA COLUNA
ALTER TABLE T_TESTE_DDL
ADD DS_EMAIL VARCHAR2(80);

-- ADIÇÃO DE DUAS OU MAIS COLUNAS
ALTER TABLE T_TESTE_DDL
ADD (
    DS_OBS1 VARCHAR2(50) NOT NULL,
    DS_OBS2 VARCHAR2(50)
);


-- ============================================================================
-- 4. MODIFICAÇÃO DE COLUNAS
-- ============================================================================

-- AUMENTO DO TAMANHO DE UMA COLUNA
ALTER TABLE T_TESTE_DDL
MODIFY DS_OBS1 VARCHAR2(80);

-- MODIFICAÇÃO DO TIPO DE DADO DA COLUNA
ALTER TABLE T_TESTE_DDL
MODIFY NM_TESTE CHAR(30);

-- ALTERAÇÃO DE NULL (OPCIONAL) PARA NOT NULL (OBRIGATÓRIA)
ALTER TABLE T_TESTE_DDL
MODIFY DS_TESTE NOT NULL;

-- MODIFICAÇÃO DO VALOR DEFAULT
ALTER TABLE T_TESTE_DDL
MODIFY DT_TESTE DEFAULT SYSDATE;

-- ALTERAÇÃO DE TIPO, TAMANHO E OBRIGATORIEDADE
ALTER TABLE T_TESTE_DDL
MODIFY NM_TESTE VARCHAR2(40) NULL;

-- ALTERAÇÃO DE NOT NULL (OBRIGATÓRIA) PARA NULL (OPCIONAL)
ALTER TABLE T_TESTE_DDL
MODIFY DS_OBS1 NULL;


-- ============================================================================
-- 5. REMOÇÃO DO DEFAULT
-- ============================================================================

-- Na prática, definimos o DEFAULT como NULL.
ALTER TABLE T_TESTE_DDL
MODIFY DT_TESTE DEFAULT NULL;


-- ============================================================================
-- 6. RENOMEAR COLUNA
-- ============================================================================

ALTER TABLE T_TESTE_DDL
RENAME COLUMN DS_EMAIL TO DS_EMAIL_NOVO;


-- ============================================================================
-- 7. RENOMEAR CONSTRAINT
-- ============================================================================

ALTER TABLE T_TESTE_DDL
RENAME CONSTRAINT UN_TESTE_DDL_DESC TO UN_TESTE_DDL_DESC_NOVO;


-- ============================================================================
-- 8. HABILITAR / DESABILITAR CONSTRAINT
-- ============================================================================

-- DESABILITAR
ALTER TABLE T_TESTE_DDL
DISABLE CONSTRAINT UN_TESTE_DDL_DESC_NOVO;

-- HABILITAR / REABILITAR
ALTER TABLE T_TESTE_DDL
ENABLE CONSTRAINT UN_TESTE_DDL_DESC_NOVO;


-- ============================================================================
-- 9. COMENTÁRIOS EM TABELA E COLUNA
-- ============================================================================

-- COMENTÁRIO SOBRE A TABELA
COMMENT ON TABLE T_TESTE_DDL
IS 'Tabela utilizada para exemplificar comandos DDL';

-- COMENTÁRIO SOBRE UMA COLUNA
COMMENT ON COLUMN T_TESTE_DDL.NM_TESTE
IS 'Coluna contendo um nome para exemplificar na tabela TESTE';


-- ============================================================================
-- 10. REMOÇÃO DE CONSTRAINTS
-- ============================================================================

-- REMOÇÃO DA CONSTRAINT UNIQUE
ALTER TABLE T_TESTE_DDL
DROP CONSTRAINT UN_TESTE_DDL_NOME;


-- ============================================================================
-- 11. REMOÇÃO DA CHAVE PRIMÁRIA
-- ============================================================================
-- Escolha UMA das opções abaixo durante a aula.


-- OPÇÃO 1 - Remoção normal da chave primária
 ALTER TABLE T_TESTE_DDL
 DROP CONSTRAINT PK_TESTE_DDL;

-- ============================================================================
-- 12. REMOÇÃO DE COLUNAS
-- ============================================================================
-- Estes comandos são destrutivos.
-- Execute somente quando não precisar mais das colunas nos exemplos anteriores.


-- REMOÇÃO DE UMA COLUNA
ALTER TABLE T_TESTE_DDL
DROP COLUMN DS_OBS2;


-- REMOÇÃO DE VÁRIAS COLUNAS
-- Após DROP usamos parênteses e NÃO utilizamos a palavra COLUMN.
ALTER TABLE T_TESTE_DDL
DROP (DS_TESTE, DS_OBS1);


-- ============================================================================
-- 13. RENOMEAR A TABELA
-- ============================================================================

ALTER TABLE T_TESTE_DDL
RENAME TO T_TESTE_DDL_NOVO;

-- ============================================================================
-- 14. CONSULTAS ÚTEIS PARA A AULA
-- ============================================================================

-- VISUALIZAR ESTRUTURA DA TABELA
DESC T_TESTE_DDL_NOVO;

-- VISUALIZAR CONSTRAINTS DA TABELA
SELECT CONSTRAINT_NAME,
       CONSTRAINT_TYPE,
       STATUS
  FROM USER_CONSTRAINTS
 WHERE TABLE_NAME = 'T_TESTE_DDL_NOVO'
 ORDER BY CONSTRAINT_TYPE,
          CONSTRAINT_NAME;

-- VISUALIZAR COLUNAS DA TABELA
SELECT COLUMN_ID,
       COLUMN_NAME,
       DATA_TYPE,
       DATA_LENGTH,
       NULLABLE,
       DATA_DEFAULT
  FROM USER_TAB_COLUMNS
 WHERE TABLE_NAME = 'T_TESTE_DDL_NOVO'
 ORDER BY COLUMN_ID;


-- ============================================================================
-- 15. LIMPEZA DO AMBIENTE - OPCIONAL
-- ============================================================================

 DROP TABLE T_TESTE_DDL_NOVO CASCADE CONSTRAINTS;

-- ============================================================================
-- FIM DO SCRIPT
-- ============================================================================
