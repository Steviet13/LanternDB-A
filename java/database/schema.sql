BEGIN TRANSACTION;

DROP TABLE IF EXISTS collections;
DROP TABLE IF EXISTS collection_list;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS friends;


CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	status varchar(50) NOT NULL,
	role varchar(50) DEFAULT 'OFFLINE',
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
	
);

ALTER TABLE users
ADD CONSTRAINT PK_user PRIMARY KEY (user_id),
ADD CONSTRAINT chk_status CHECK (status IN ('ONLINE', 'OFFLINE', 'AWAY', 'BUSY'));

CREATE TABLE collections (
    collection_id SERIAL PRIMARY KEY,
    collection_name VARCHAR(255) NOT NULL
    
);
CREATE TABLE collection_list (
    collection_list_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    collection_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
	genre VARCHAR(255) NOT NULL,
    CONSTRAINT FK_user FOREIGN KEY (user_id)
        REFERENCES users (user_id)
		ON DELETE CASCADE,
	CONSTRAINT FK_collection FOREIGN KEY (collection_id)
		REFERENCES collections (collection_id)
        ON DELETE CASCADE
);
CREATE TABLE ratings (
	rating_id SERIAL PRIMARY KEY,
	rating_score INT NOT NULL,
	user_id INT NOT NULL,
	game_id INT NOT NULL,
	game_title VARCHAR(255) NOT NULL,
	CONSTRAINT FK_user FOREIGN KEY (user_id)
		REFERENCES users (user_id)
			ON DELETE CASCADE
);
CREATE TABLE reviews (
	review_id SERIAL PRIMARY KEY,
	game_id INT NOT NULL,
	user_id INT NOT NULL,
	rating_id INT, 
	review_title VARCHAR(255) NOT NULL,
	review_text VARCHAR(255) NOT NULL,
	CONSTRAINT FK_user FOREIGN KEY (user_id)
		REFERENCES users (user_id)
			ON DELETE CASCADE,
	CONSTRAINT FK_rating FOREIGN KEY (rating_id)
		REFERENCES ratings (rating_id)
			ON DELETE CASCADE
);
CREATE TABLE comments (
	comment_id SERIAL PRIMARY KEY,
	review_id INT NOT NULL,
	game_id INT NOT NULL,
	user_id INT NOT NULL,
	comment_text VARCHAR(255) NOT NULL,
	CONSTRAINT FK_review FOREIGN KEY (review_id)
		REFERENCES reviews (review_id)
			ON DELETE CASCADE,
	CONSTRAINT FK_user FOREIGN KEY (user_id)
		REFERENCES users (user_id)
			ON DELETE CASCADE

);
CREATE TABLE friends (
	friend_id SERIAL PRIMARY KEY,
	list_owner_id INT NOT NULL,
	list_owner_name VARCHAR(255) NOT NULL,
	friend_user_id INT NOT NULL,
	friend_user_name VARCHAR(255) NOT NULL,
	CONSTRAINT FK_friend_user_id FOREIGN KEY (friend_user_id)
		REFERENCES users (user_id)
			ON DELETE CASCADE,
	CONSTRAINT FK_friend_user_name FOREIGN KEY (friend_user_name)
		REFERENCES users (username)
			ON DELETE CASCADE
);


-- function to update the `updated_at` column
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- trigger that calls the function before each row update
CREATE TRIGGER trg_update_users
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION update_updated_at();



COMMIT TRANSACTION;


