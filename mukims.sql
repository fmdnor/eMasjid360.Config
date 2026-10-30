CREATE TABLE mukims (
    id SERIAL PRIMARY KEY,

    district_id INTEGER NOT NULL,
    code VARCHAR(20) NOT NULL,
    name VARCHAR(150) NOT NULL,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,

    CONSTRAINT fk_mukims_district
        FOREIGN KEY (district_id)
        REFERENCES districts(id),

    CONSTRAINT uq_mukims_district_code
        UNIQUE (district_id, code)
);