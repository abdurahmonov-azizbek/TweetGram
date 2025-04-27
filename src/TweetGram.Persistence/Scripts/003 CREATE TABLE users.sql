CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    username TEXT NOT NULL UNIQUE,
    email TEXT,
    password_hash TEXT NOT NULL,
    status_id INTEGER NOT NULL,
    created_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    modified_time TIMESTAMP WITH TIME ZONE,
    
    CONSTRAINT fk_users_status_id FOREIGN KEY (status_id) REFERENCES statuses(id)
);