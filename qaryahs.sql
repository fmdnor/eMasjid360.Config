CREATE TABLE qaryahs (
    id SERIAL PRIMARY KEY,

    mukim_id INTEGER NOT NULL,

    code VARCHAR(20),
    name VARCHAR(150) NOT NULL,

    reg_number VARCHAR(50),
    address TEXT,

    phone VARCHAR(30),
    email VARCHAR(100),

    logo_url VARCHAR(250),

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NULL,

    CONSTRAINT fk_qaryahs_mukim
        FOREIGN KEY (mukim_id)
        REFERENCES mukims(id)
);