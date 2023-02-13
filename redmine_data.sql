USE redmine_db;
SELECT id, assigned_to_id, subject, description, parent_id, created_on, closed_on FROM issues ORDER BY id
INTO OUTFILE '/tmp/issues.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ';'
LINES TERMINATED BY '\n';

SELECT id, journalized_id, user_id, notes, created_on FROM journals ORDER BY id
INTO OUTFILE '/tmp/comments.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ';'
LINES TERMINATED BY '\n';

SELECT id, firstname, lastname from users
INTO OUTFILE '/tmp/people.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ';'
LINES TERMINATED BY '\n';

USE redmine_db;
select filename, disk_filename, author_id, created_on, disk_directory, container_id, description from attachments
INTO OUTFILE '/tmp/attachments.csv'
FIELDS ENCLOSED BY '"'
TERMINATED BY ';'
LINES TERMINATED BY '\n';
