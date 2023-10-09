BEGIN;

CREATE TABLE IF NOT EXISTS puser(
    uid SERIAL NOT NULL PRIMARY KEY,
    email VARCHAR NOT NULL,
    username VARCHAR NOT NULL,
    encrypt VARCHAR NOT NULL
);


CREATE TABLE IF NOT EXISTS usertype(
    uid INT NOT NULL,
    utype VARCHAR CHECK (utype IN ('OWNER', 'ADMIN', 'USER')),
    CONSTRAINT fk_puser
        FOREIGN KEY(uid)
	        REFERENCES puser(uid)
);

COMMIT;