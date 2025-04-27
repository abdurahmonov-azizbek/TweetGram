CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    sender_id INTEGER NOT NULL,
    receiver_id INTEGER,
    group_id INTEGER,
    content TEXT, 
    status_id INTEGER NOT NULL,
    created_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW() AT TIME ZONE 'UTC',
    modified_time TIMESTAMP WITH TIME ZONE,
    CONSTRAINT fk_messages_sender FOREIGN KEY (sender_id) REFERENCES users(id),
    CONSTRAINT fk_messages_receiver FOREIGN KEY (receiver_id) REFERENCES users(id),
    CONSTRAINT fk_messages_group FOREIGN KEY (group_id) REFERENCES groups(id),
    CONSTRAINT fk_messages_status FOREIGN KEY (status_id) REFERENCES statuses(id)
);