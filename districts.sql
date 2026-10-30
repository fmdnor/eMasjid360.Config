CREATE TABLE districts (
    id SERIAL PRIMARY KEY,

    state_id INTEGER NOT NULL,
    code VARCHAR(20) NOT NULL,
    name VARCHAR(150) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,

    CONSTRAINT fk_districts_state
        FOREIGN KEY (state_id)
        REFERENCES states(id),

    CONSTRAINT uq_districts_state_code
        UNIQUE (state_id, code)
);