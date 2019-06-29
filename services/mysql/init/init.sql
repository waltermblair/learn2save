USE learn2save;

CREATE TABLE accounts (
	id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	balance decimal(13,4) DEFAULT 0.00,
	last_transaction_at datetime DEFAULT CURRENT_TIMESTAMP,
    	last_updated_at datetime DEFAULT CURRENT_TIMESTAMP,
    	created_at datetime DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE audits (
	id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    	account_id int(11) NOT NULL,
	created_at datetime DEFAULT CURRENT_TIMESTAMP,
	created_by varchar(25) NOT NULL,
    	description varchar(25) NOT NULL
);

INSERT INTO accounts (balance) VALUES (0.00);
