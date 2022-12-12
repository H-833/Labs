CREATE DATABASE web

CREATE TABLE web_users(id SERIAL NOT NULL, fullname VARCHAR NOT NULL, login VARCHAR NOT NULL, password VARCHAR NOT NULL);

INSERT INTO web_users(fullname, login, password) VALUES ('Ivanov Ivan', 'ivanov', '123456');
INSERT INTO web_users(fullname, login, password) VALUES ('Aksakov Boris', 'aboris', '035790');
INSERT INTO web_users(fullname, login, password) VALUES ('Cvetkova Darya', 'cvetdr', '911103');
INSERT INTO web_users(fullname, login, password) VALUES ('Evtushenko Fedor', 'evtush', '659012');
INSERT INTO web_users(fullname, login, password) VALUES ('Galaktionov Hariton', 'harshg', '888321');
INSERT INTO web_users(fullname, login, password) VALUES ('Kitko Lesya', 'lesyak', '755025');
INSERT INTO web_users(fullname, login, password) VALUES ('Mutko Nikolay', 'kolyam', '306090');
INSERT INTO web_users(fullname, login, password) VALUES ('Ohra Pano', 'derevo', '260091');
INSERT INTO web_users(fullname, login, password) VALUES ('Scarlet Remilia', 'vampir', '415139');
INSERT INTO web_users(fullname, login, password) VALUES ('Vucic Aleksandr', 'alekrs', '241999');
