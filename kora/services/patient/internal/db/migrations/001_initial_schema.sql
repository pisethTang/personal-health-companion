CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS checkins (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    patient_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    mood_score FLOAT CHECK (mood_score >= 0 AND mood_score <= 10),
    weight_kg FLOAT CHECK (weight_kg > 0),
    notes TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS symptoms (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    checkin_id UUID NOT NULL REFERENCES checkins(id) ON DELETE CASCADE,
    symptom TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);


CREATE TABLE IF NOT EXISTS medication_logs (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    checkin_id UUID NOT NULL REFERENCES checkins(id) ON DELETE CASCADE,
    medication_name TEXT NOT NULL,
    taken BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);