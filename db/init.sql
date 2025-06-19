-- Initialisaition for database schema
-- Using PostgreSQL
-- Table for categories
CREATE TABLE IF NOT EXISTS character_category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) UNIQUE NOT NULL,
    description TEXT
);

-- Table for characters
CREATE TABLE IF NOT EXISTS character (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    description TEXT,
    image_blob BYTEA,  -- Binary data for image
    first_message TEXT,
    category_id INTEGER REFERENCES character_category(id)
);
