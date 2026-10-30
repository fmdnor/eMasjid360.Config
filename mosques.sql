CREATE TABLE mosques (
    id SERIAL PRIMARY KEY,
    qaryah_id INTEGER NOT NULL,

    code VARCHAR(20),
    name VARCHAR(150) NOT NULL,

    address TEXT,
    phone VARCHAR(30),
    email VARCHAR(100),

    FOREIGN KEY (qaryah_id)
    REFERENCES qaryahs(id)
);