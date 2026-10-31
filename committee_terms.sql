CREATE TABLE committee_terms (
    id BIGSERIAL PRIMARY KEY,

    entity_type VARCHAR(20) NOT NULL,
    entity_id BIGINT NOT NULL,

    session_name VARCHAR(100) NOT NULL,

    start_date DATE NOT NULL,
    end_date DATE NOT NULL,

    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',

    notes TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_committee_entity_type
        CHECK (entity_type IN ('QARYAH', 'MOSQUE', 'SURAU')),

    CONSTRAINT chk_committee_status
        CHECK (status IN ('ACTIVE', 'EXPIRED', 'UPCOMING'))
);