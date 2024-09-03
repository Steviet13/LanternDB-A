BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,status,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','OFFLINE','ROLE_ADMIN');
INSERT INTO users (username,password_hash,status,role) VALUES ('demoadmin','$2a$10$AElBp1FoERum/I7CWY.9MeG8v7M5i2o4oiMbYw3dqivwUgrFkG516','OFFLINE','ROLE_ADMIN');
INSERT INTO users (username,password_hash,status,role) VALUES ('demouser','$2a$10$M.oh0H0qnXya8AHnz.BOr.hP4RfaFHFrubEL/p78ZJ7o22o4GLMR2','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('dominik horn','$2a$10$74ms51K1kpPiXc.11ayUo.E..6Xk/rYrvDvqzqbbVDsfk5oPq09ZO','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('orla russell','$2a$10$gc23ihCXgZi/jkrxRhMe4.o3GXpp78RVasq04QpkN.DJzpoaVdfbW','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('shania wood','$2a$10$8oQHcGrUzR2Tx.rW7qViTu5WcK5YbfVzCjjMkVQgRzDhEfya0TBda','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('beth blankenship','$2a$10$U1dZhTlWyTxtjGHKicQsLeWjZAEUmNEDqB0EWGnKBISr0RlbXdoNO','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('sana nguyen','$2a$10$tbWWzFuZRUhcO0M/CwFsuuio2y5Q7.wiNNNwvfsmoof7maQ8vRjHe','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('gerald montoya','$2a$10$IFb9QlE9PX8YbFkMnbxGDugqTJRXVYSBlvnFy41N71B3fK6bGT3rm','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('fynn savage','$2a$10$1kKHvSH1cDPoJdmDWSm25OF9iaGSjr01IK7Om0V.q30RihqFOpSbi','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('mathew benson','$2a$10$KTlwlVkxIM8MhwsBli.1tujuUdyVhbKRzcxJa3e.n6AAJx/XaZVYy','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('fabian gentry','$2a$10$DqSuTcSIWPP0QMR10rsmGu4Y6EvIzJ3HzD0.Z9YKG0upaEj37LmWO','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('damian mcgowan','$2a$10$QZyZ.PjJoVlM1Zb38Ore/e9Z97loZNzlpl1pjveLDFZ2fr6.cvv4.','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('simon odonnell','$2a$10$H5G2nIWnpTprE1/2SmLUF.wO9GfLW6zpqL/DEjky9xEPInlRlg.g.','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('david baker','$2a$10$na1zAhi5aERYkSOobKdysOu/j4tzBmyo3m9qBgKRz3NrwLvOPh6RC','OFFLINE','ROLE_USER');
INSERT INTO users (username,password_hash,status,role) VALUES ('freddie bloggs','$2a$10$M/cRsqmfA5UsmlRwKDzc5elBY8oq2TMbZ0mGEw4VWk14UBEz0FwYS','OFFLINE','ROLE_USER');
INSERT INTO collections (collection_name) VALUES ('Wish List'), ('Currently Playing'), ('Played');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 5, 'Over a decade later and its still a heavy hitter in the gaming space today', 'custom servers are keeping the game alive in an awesome way, Love seeing the creativity');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3498, 17, 'I love this game', 'whenever I need some dopamine++');	
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (3328, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4200, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4291, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5286, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (13536, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (12020, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (5679, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (28, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 5, 'Loved this game from start to finish', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 6, 'Great game, GoTY for sure', 'title.');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 7, 'Still play this every day', 'always new content to keep the game fresh');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 8, 'Great game, great community', '10/10 would buy again');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 9, 'Wasnt sure what to expect, pleasently surprised!', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 10, 'A must buy', 'seriously, just get this game. You are welcome');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 11, 'Its peak', 'PEAK!!!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 12, 'Great comfort game', 'always can count on this game on a rainy day');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 13, '10/10', 'if only every game could be this good');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 14, 'Cant reccomend enough', 'its so worth your time to play');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 15, 'A fantastic present for a loved one', 'honestly so much fun, highly reccomend!');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 16, 'Glad I did not miss this one', 'one of the best gaming investments I have ever made');
INSERT INTO reviews (game_id, user_id, review_title, review_text)
    VALUES (4062, 17, 'I love this game', 'whenever I need some dopamine++');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 6, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 9, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 10, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 3498, 'Grand Theft Auto V');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 3498, 'Grand Theft Auto V');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 6, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 9, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 10, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 14, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 3328, 'The Witcher 3: Wild Hunt');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 3328, 'The Witcher 3: Wild Hunt');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 9, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 10, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 14, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 4200, 'Portal 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 4200, 'Portal 2');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 6, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 9, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 10, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 4291, 'Counter-Strike: Global Offensive');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 4291, 'Counter-Strike: Global Offensive');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 9, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 10, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (2, 13, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 5286, 'Tomb Raider (2013)');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 9, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 10, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 11, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 13536, 'Portal');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 13536, 'Portal');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 7, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 8, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 9, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 10, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 12020, 'Left 4 Dead 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 12020, 'Left 4 Dead 2');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 9, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (2, 10, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 5679, 'The Elder Scrolls V: Skyrim');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 5679, 'The Elder Scrolls V: Skyrim');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 8, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (2, 9, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (3, 10, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 12, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 28, 'Red Dead Redemption 2');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 28, 'Red Dead Redemption 2');	
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 5, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 6, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 7, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (2, 8, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 9, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (4, 10, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 11, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 12, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 13, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 14, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 15, 4062, 'BioShock Infinite');
INSERT INTO ratings (rating_score, user_id, game_id, game_title)
    VALUES (5, 16, 4062, 'BioShock Infinite');
INSERT INTO friends (list_owner_id, list_owner_name, friend_user_id, friend_user_name)
	VALUES (4,'demouser',3,'demoadmin');
INSERT INTO friends (list_owner_id, list_owner_name, friend_user_id, friend_user_name)
	VALUES (4,'demouser',5,'dominik horn');
INSERT INTO friends (list_owner_id, list_owner_name, friend_user_id, friend_user_name)
	VALUES (4,'demouser',6,'orla russell');
INSERT INTO friends (list_owner_id, list_owner_name, friend_user_id, friend_user_name)
	VALUES (4,'demouser',7,'shania wood');
INSERT INTO friends (list_owner_id, list_owner_name, friend_user_id, friend_user_name)
	VALUES (4,'demouser',8,'beth blankenship');
	
COMMIT TRANSACTION;
