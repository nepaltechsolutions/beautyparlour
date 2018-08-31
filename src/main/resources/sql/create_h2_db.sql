/*
   H2 test database schema creation 
 */

/* Create table for entity Contact */
CREATE TABLE contact (
id BIGINT NOT NULL,
created TIMESTAMP NOT NULL,
lastModified TIMESTAMP ,
version INTEGER ,
contactStatus INTEGER NOT NULL,
email VARCHAR NOT NULL,
fullName VARCHAR NOT NULL,
message VARCHAR NOT NULL,
subject VARCHAR NOT NULL,
PRIMARY KEY(id)
);

