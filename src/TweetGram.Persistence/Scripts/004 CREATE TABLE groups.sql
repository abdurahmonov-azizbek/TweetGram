CREATE TABLE groups (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    created_by INTEGER NOT NULL,
    status_id INTEGER NOT NULL,
    created_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW() AT TIME ZONE 'UTC',
    CONSTRAINT fk_groups_created_by FOREIGN KEY (created_by) REFERENCES users(id),
    CONSTRAINT fk_groups_status FOREIGN KEY (status_id) REFERENCES statuses(id)
);