CREATE DATABASE mtucischedule;

CREATE TABLE public.subject (name character varying NOT NULL);

CREATE TABLE public.teacher (id serial primary key, full_name character varying, subject character varying);

CREATE TABLE public.timetable (id serial primary key, day character varying, subject character varying, auditorium character varying, start_time time without time zone);

INSERT INTO public.subject(name) VALUES ('Высшая Математика - Лекция');
INSERT INTO public.subject(name) VALUES ('Высшая Математика - Практика');
INSERT INTO public.subject(name) VALUES ('Введение В Информационные Технологии - Лекция');
INSERT INTO public.subject(name) VALUES ('Введение В Информационные Технологии - Практика');
INSERT INTO public.subject(name) VALUES ('Введение В Информационные Технологии - Лабораторная');
INSERT INTO public.subject(name) VALUES ('Введение В Профессию - Лекция');
INSERT INTO public.subject(name) VALUES ('История - Лекция');
INSERT INTO public.subject(name) VALUES ('История - Практика');
INSERT INTO public.subject(name) VALUES ('Физика - Лекция');
INSERT INTO public.subject(name) VALUES ('Физика - Практика');
INSERT INTO public.subject(name) VALUES ('Физика - Лабораторная');
INSERT INTO public.subject(name) VALUES ('Физическая Культура');
INSERT INTO public.subject(name) VALUES ('Русский Язык - Лекция');
INSERT INTO public.subject(name) VALUES ('Русский Язык - Практика');
INSERT INTO public.subject(name) VALUES ('Иностранный Язык');

INSERT INTO public.teacher(full_name, subject) VALUES ('Пискарёв Сергей Игоревич', 'Высшая Математика - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Изотова Анастасия Андреевна', 'Высшая Математика - Практика');
INSERT INTO public.teacher(full_name, subject) VALUES ('Рабенандрасана Жослен', 'Введение В Информационные Технологии - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Рабенандрасана Жослен', 'Введение В Информационные Технологии - Практика');
INSERT INTO public.teacher(full_name, subject) VALUES ('Болотов Денис Вячеславович', 'Введение В Информационные Технологии - Лабораторная');
INSERT INTO public.teacher(full_name, subject) VALUES ('Воронкова Маргарита Николаевна', 'Введение В Профессию - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Скляр Лидия Николаевна', 'История - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Скляр Лидия Николаевна', 'История - Практика');
INSERT INTO public.teacher(full_name, subject) VALUES ('Карпов Игорь Александрович', 'Физика - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Оборотов Вячеслав Александрович', 'Физика - Практика');
INSERT INTO public.teacher(full_name, subject) VALUES ('Вальковский Сергей Николаевич', 'Физика - Лабораторная');
INSERT INTO public.teacher(full_name, subject) VALUES ('Смолина Валерия Алексеевна', 'Физическая Культура');
INSERT INTO public.teacher(full_name, subject) VALUES ('Горшкова Дарья Ивановна', 'Русский Язык - Лекция');
INSERT INTO public.teacher(full_name, subject) VALUES ('Горшкова Дарья Ивановна', 'Русский Язык - Практика');
INSERT INTO public.teacher(full_name, subject) VALUES ('Чупак Наталья Михайловна', 'Иностранный Язык');

--Нечётная Неделя

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Нечёт', 'Высшая Математика - Лекция', 'Н-526', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Нечёт', 'Физическая Культура', 'Кросс-фит Зал', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Нечёт', 'Занятия Нет', '-', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Нечёт', 'Занятия Нет', '-', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Нечёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Нечёт', 'Занятия Нет', '-', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Нечёт', 'Занятия Нет', '-', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Нечёт', 'Физика - Лабораторная', 'Н-338', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Нечёт', 'Введение В Информационные Технологии - Лабораторная', 'Н-516', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Нечёт', 'История - Практика', 'Н-318', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Нечёт', 'Занятия Нет', '-', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Нечёт', 'Физическая Культура', 'Кросс-фит Зал', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Нечёт', 'Введение В Информационные Технологии', 'Н-512', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Нечёт', 'Физика - Лекция', 'Н-347', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Нечёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Нечёт', 'Высшая Математика - Практика', 'Н-424', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Нечёт', 'Занятия Нет', '-', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Нечёт', 'Занятия Нет', '-', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Нечёт', 'Занятия Нет', '-', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Нечёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Нечёт', 'Физика - Практика', 'Н-412', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Нечёт', 'Иностранный Язык', 'Н-520', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Нечёт', 'Занятия Нет', '-', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Нечёт', 'Занятия Нет', '-', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Нечёт', 'Занятия Нет', '-', '17:15');

--Чётная Неделя

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Чёт', 'Физика - Лекция', 'Н-226', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Чёт', 'Высшая Математика - Лекция', 'Н-514', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Чёт', 'Иностранный Язык', 'Н-426', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Чёт', 'Физическая Культура', 'Кросс-фит Зал', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Понедельник Чёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Чёт', 'История - Практика', 'Н-318', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Чёт', 'Физическая Культура', 'Кросс-фит Зал', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Чёт', 'Занятия Нет', '-', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Чёт', 'Занятия Нет', '-', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Вторник Чёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Чёт', 'Введение В Профессию - Лекция', 'А-222', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Чёт', 'Введение В Информационные Технологии - Лекция', 'А-222', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Чёт', 'Введение В Информационные Технологии - Лекция', 'А-222', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Чёт', 'Введение В Информационные Технологии - Лабораторная', 'А-301', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Среда Чёт', 'Занятия Нет', '-', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Чёт', 'Занятия Нет', '-', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Чёт', 'Введение В Информационные Технологии - Практика', 'Н-504а', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Чёт', 'Русский Язык - Практика', 'Н-318', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Чёт', 'История - Лекция', 'Н-227', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Четверг Чёт', 'Высшая Математика - Практика', 'Н-302', '17:15');

INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Чёт', 'Занятия Нет', '-', '9:30');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Чёт', 'Занятия Нет', '-', '11:20');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Чёт', 'Занятия Нет', '-', '13:10');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Чёт', 'Занятия Нет', '-', '15:25');
INSERT INTO public.timetable (day, subject, auditorium, start_time) VALUES ('Пятница Чёт', 'Занятия Нет', '-', '17:15');

