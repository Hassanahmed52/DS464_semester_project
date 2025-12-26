CREATE TABLE IF NOT EXISTS fact_checks (
    id SERIAL PRIMARY KEY,
    headline TEXT NOT NULL,
    verdict TEXT,
    reasoning TEXT,
    key_findings TEXT[],
    checked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
