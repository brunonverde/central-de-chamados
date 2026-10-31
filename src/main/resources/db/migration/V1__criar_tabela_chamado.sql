CREATE TABLE chamado (
    id               BIGSERIAL    PRIMARY KEY,
    titulo           VARCHAR(150) NOT NULL,
    descricao        TEXT         NOT NULL,
    setor            VARCHAR(50)  NOT NULL,
    prioridade       VARCHAR(20)  NOT NULL,
    status           VARCHAR(20)  NOT NULL DEFAULT 'ABERTO',
    data_abertura    TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP,
    data_resolucao   TIMESTAMP,

    CONSTRAINT ck_chamado_prioridade CHECK (prioridade IN ('BAIXA', 'MEDIA', 'ALTA')),
    CONSTRAINT ck_chamado_status     CHECK (status IN ('ABERTO', 'EM_ANALISE', 'RESOLVIDO'))
);
