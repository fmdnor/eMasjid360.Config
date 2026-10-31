CREATE TABLE committee_members (
    id BIGSERIAL PRIMARY KEY,

    committee_term_id BIGINT NOT NULL,
    member_id BIGINT NOT NULL,
    committee_position_id BIGINT NOT NULL,

    appointment_date DATE NOT NULL,
    resignation_date DATE,

    status VARCHAR(20) NOT NULL DEFAULT 'ACTIVE',

    remarks TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_committee_member_term
        FOREIGN KEY (committee_term_id)
        REFERENCES committee_terms(id),

    CONSTRAINT fk_committee_member_position
        FOREIGN KEY (committee_position_id)
        REFERENCES committee_positions(id),

    CONSTRAINT chk_committee_member_status
        CHECK (status IN ('ACTIVE', 'RESIGNED', 'EXPIRED'))
);