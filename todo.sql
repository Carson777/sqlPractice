CREATE TABLE todos ( id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT, priority INTEGER NOT NULL DEFAULT '1', created_at timestamp NOT NULL, completed_at timestamp);

insert into todos (title, details, priority, created_at, completed_at)
values 
('Laundry', 'Dew it', '1', current_timestamp, NULL),
('Groceries', 'Wal-mart', '2', current_timestamp, NULL),
('Clean', 'Apartment', '1', current_timestamp, NULL),
('School', 'TIY', '3', current_timestamp, NULL),
('HW', 'this', '2', current_timestamp, current_timestamp);

select * from todos where completed_at is null;

select * from todos where priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id='1';

DELETE FROM todos WHERE completed_at IS NOT NULL;
