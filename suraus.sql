CREATE TABLE suraus (
    id SERIAL PRIMARY KEY,

    mosque_id INTEGER NOT NULL,

    code VARCHAR(20),
    name VARCHAR(150) NOT NULL,

    address TEXT,
    phone VARCHAR(30),

    FOREIGN KEY (mosque_id)
    REFERENCES mosques(id)
);