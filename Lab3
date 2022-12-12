CREATE TABLE Cafedry
(id serial PRIMARY KEY, Title varchar (50) NOT NULL, Decanat varchar (100) NOT NULL);

CREATE TABLE Study_Group
(id serial PRIMARY KEY, Title varchar (50) NOT NULL, Faculty varchar (100) NOT NULL, Fk_Group_Cafedry int REFERENCES Cafedry (id));

CREATE TABLE Students
(id serial PRIMARY KEY, Naming varchar (150) NOT NULL, Passport int NOT NULL, Groupa varchar (50) NOT NULL, Fk_Students_Group int REFERENCES Study_Group(id));

INSERT INTO  Cafedry (Title, Decanat) VALUES ('Информатика', 'Информационные технологии');

INSERT INTO Cafedry(Title, Decanat) VALUES ('Сети связи и системы коммутации', 'Сети и системы связи');

INSERT INTO Study_Group (Title, Faculty, Fk_Group_Cafedry) VALUES ('БВТ01', 'Информационные технологии', 1);
INSERT INTO Study_Group (Title, Faculty, Fk_Group_Cafedry) VALUES ('БВТ02', 'Информационные технологии', 1);

INSERT INTO Study_Group (Title, Faculty, Fk_Group_Cafedry) VALUES ('СиСС01', 'Сети и системы связи', 2);
INSERT INTO Study_Group (Title, Faculty, Fk_Group_Cafedry) VALUES ('СиСС02', 'Сети и системы связи', 2);


INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Яблочкин С.М.', 6548, 'ИТО1', 1);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Лобанов А.А.', 3659, ' БВТ1', 1);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Потемкина Т.Н', 7852, ' БВТ1', 1);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Уфаев К.А.', 3256, ' БВТ1', 1);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Пастернак Н.А.', 2541, ' БВТ1', 1);

INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Смирнов П.А.', 6985, 'БВТ2', 2);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Фурсов Р.Р.', 2354, 'БВТ2', 2);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Николаева А.Ф.', 8541, 'БВТ2', 2);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Хадарин Д.А.', 1458, 'БВТ2', 2);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Побережный И.А.', 6984, 'БВТ2', 2);

INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Иванов И.И.', 3695, 'СиСС01', 3);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Никифоров А.А.', 5678, 'СиСС01', 3);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Валуев В.В.', 1546, 'СиСС01', 3);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Сергеев Д.Д.', 3481, 'СиСС01', 3);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Дмитриев И.Я', 4281, ' СиСС01', 3);

INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Магомедов К.И.', 5648, 'СиСС02', 4);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Филатов А.А.', 2659, 'СиСС02', 4);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Вазнев Д.И.', 6593, 'СиСС02', 4);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Кириллов И.И.', 3210, 'СиСС02', 4);
INSERT INTO Students (Naming, Passport, Groupa, Fk_Students_Group) VALUES ('Иванов И.А.', 5374, 'СиСС02', 4);
