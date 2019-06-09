INSERT INTO public.specialty(
	code, name)
	VALUES ('240801', 'Машины и аппараты химических производств'),
	('260601', 'Технология швейных изделий'),
	('260902', 'Конструирование швейных изделий'),
	('010501', 'Фундаментальная математика и механика'),
	('010302', 'Прикладная математика и информатика'),
	('050321',	'Геология'),
    ('050322',	'География'),
    ('050323',	'Картография и геоинформатика'),
    ('050324',	'Гидрометеорология'),
    ('050325',	'Прикладная гидрометеорология'),
    ('050326',	'Экология и природопользование');
	
INSERT INTO public.abiturient(
	first_name, last_last, birth_date, birth_place, address, phone_number, middle_name)
	VALUES ('Иван', 'Иванов', (to_date('1963-09-01', 'YYYY-MM-DD')), 'Москва', 'Московская обл., г.Балашиха, ул.Кирова, д.20, кв.70', '+78545896584', 'Ионович'),
	('Петров', 'Пётр', (to_date('1980-09-02', 'YYYY-MM-DD')), 'Иваново', 'г.Санкт Петербург, пр.Невский, д.1а, кв.2', '+78540000000', ''),
	('Алексеев', 'Николай', (to_date('1970-01-01', 'YYYY-MM-DD')), 'Нью Йорк', 'Нижегородская обл., г.Арзамас, ул.Иванова, д.1, кв.1', '+78545896522', 'Аглы');
	
INSERT INTO public.subject(
	id, name)
	VALUES ('01','Русский язык'),
    ('02','Математика профильная'),
    ('22','Математика профильная'),
    ('03','Физика'),
    ('04','Химия'),
    ('05','Информатика и ИКТ'),
    ('06','Биология'),
    ('07','История'),
    ('08','География'),
    ('09','Английский язык'),
    ('10','Немецкий язык'),
    ('11','Французский язык'),
    ('12','Обществознание'),
    ('13','Испанский язык'),
    ('14','Китайский язык'),
    ('18','Литература'),
    ('29','Английский язык (устный экзамен)'),
    ('30','Немецкий язык (устный экзамен)'),
    ('31','Французский язык (устный экзамен)'),
    ('33','Испанский язык (устный экзамен)');
	
INSERT INTO public.university(
  code, name, active, url, short_name, city, rate)
	VALUES ('MGU', 'Московский государственный университет имени М.В. Ломоносова', true, 'localhost:3082', 'МГУ имени М.В. Ломоносова', 'Москва', 647),
	('SPGU', 'Санкт-Петербургский государственный университет', true, 'localhost:3083', 'СПбГУ', 'СПБ', 616),
	('MFTI', 'Московский физико-технический институт', true, 'localhost:3084', 'МФТИ', 'Москва', 612),
	('EHS', 'Национальный исследовательский университет "Высшая школа экономики"', true, 'localhost:3085', 'НИУ ВШЭ', 'Москва', 606),
	('LUTIK', 'Университет "Лютик"', false, 'localhost:3086', 'У Лютик', 'Москва', 0),
	('EHS1', 'Московский государственный технический университет имени Н.Э. Баумана', true, 'localhost:3087', 'МГТУ им. Н.Э. Баумана ', 'Москва', 616),
	('EHS2', 'Национальный исследовательский Томский политехнический университет', true, 'localhost:3088', 'ТПУ', 'Томск', 696),
	('EHS3', 'Новосибирский национальный исследовательский государственный университет', true, 'localhost:3089', 'НГУ', 'Новосибирск', 686),
	('EHS4', 'Национальный исследовательский Томский государственный университет', true, 'localhost:3090', 'ТГУ', 'Томск', 676),
	('EHS5', 'Казанский (Приволжский) федеральный университет', true, 'localhost:3091', 'КФУ', 'Казань', 666);
	
INSERT INTO public.doc_type(
	name, code)
	VALUES ('Документ удостоверяющий личность', 'ДУЛ'),
	('Документ об образовании', 'ДОО'),
	('Дополнительные документы', 'ДД');
	
INSERT INTO public.document(
	name, data, type_id, abiturient_id)
	VALUES ('attetst.jpg', 'werwerwer', 2, 1),
	('olymp.jpg', 'werwerwer', 3, 1);
	
INSERT INTO public.score(
	abiturient_id, subject_id, score)
	VALUES (1, '01', 55),
	(1, '06', 80),
	(2,'09',1),
	(2, '10', 80),
	(2, '11', 100),
	(2, '13', 10),
	(2, '14', 15),
	(2, '18', 66),
	(3, '18', 96),
	(3, '22', 93),
	(3, '03', 84);
	
INSERT INTO public.login(
	login, role, password, abiturient_id)
	VALUES ('login', 'user', 'pass', 1),
	('login1', 'user', 'pass', 2),
	('login3', 'user', 'pass', 3),
	('login4', 'admin', 'pass', NULL);
	
INSERT INTO public.faculty(
	university_id, name)
	VALUES ('MGU', 'Механико-математический факультет'),
	('MGU', 'Факультет вычислительной математики и кибернетики'),
	('MGU', 'Физический факультет'),
	('SPGU', 'Математико-механический факультет'),
	('SPGU', 'Факультет прикладной математики - процессов управления'),
	('MFTI', 'Факультет радиотехники и кибернетики'),
	('MGU', 'Факультет почвоведения'),
	('MGU', 'Геологический факультет'),
	('MGU', 'Географический факультет'),
	('MGU', 'Факультет наук о материалах'),
	('SPGU', 'Факультет почвоведения'),
	('SPGU', 'Геологический факультет'),
	('SPGU', 'Географический факультет'),
	('SPGU', 'Факультет наук о материалах'),
	('MFTI', 'Факультет почвоведения'),
	('MFTI', 'Геологический факультет'),
	('MFTI', 'Географический факультет'),
	('MFTI', 'Факультет наук о материалах'),
	('MGU', 'Факультет фундаментальной медицины'),	
	('EHS', 'Механико-математический факультет'),
	('EHS', 'Факультет вычислительной математики и кибернетики'),
	('EHS', 'Физический факультет'),
	('EHS', 'Факультет почвоведения'),
	('EHS', 'Геологический факультет'),
	('EHS', 'Географический факультет'),
	('EHS', 'Факультет наук о материалах'),
	('EHS', 'Факультет фундаментальной медицины'),	
	('EHS1', 'Механико-математический факультет'),
	('EHS1', 'Факультет вычислительной математики и кибернетики'),
	('EHS1', 'Физический факультет'),
	('EHS1', 'Факультет почвоведения'),
	('EHS1', 'Геологический факультет'),
	('EHS1', 'Географический факультет'),
	('EHS1', 'Факультет наук о материалах'),
	('EHS1', 'Факультет фундаментальной медицины'),	
	('EHS2', 'Механико-математический факультет'),
	('EHS2', 'Факультет вычислительной математики и кибернетики'),
	('EHS2', 'Физический факультет'),
	('EHS2', 'Факультет почвоведения'),
	('EHS2', 'Геологический факультет'),
	('EHS2', 'Географический факультет'),
	('EHS2', 'Факультет наук о материалах'),
	('EHS2', 'Факультет фундаментальной медицины'),	
	('EHS3', 'Механико-математический факультет'),
	('EHS3', 'Факультет вычислительной математики и кибернетики'),
	('EHS3', 'Физический факультет'),
	('EHS3', 'Факультет почвоведения'),
	('EHS3', 'Геологический факультет'),
	('EHS3', 'Географический факультет'),
	('EHS3', 'Факультет наук о материалах'),
	('EHS3', 'Факультет фундаментальной медицины'),	
	('EHS4', 'Механико-математический факультет'),
	('EHS4', 'Факультет вычислительной математики и кибернетики'),
	('EHS4', 'Физический факультет'),
	('EHS4', 'Факультет почвоведения'),
	('EHS4', 'Геологический факультет'),
	('EHS4', 'Географический факультет'),
	('EHS4', 'Факультет наук о материалах'),
	('EHS4', 'Факультет фундаментальной медицины'),	
	('EHS5', 'Механико-математический факультет'),
	('EHS5', 'Факультет вычислительной математики и кибернетики'),
	('EHS5', 'Физический факультет'),
	('EHS5', 'Факультет почвоведения'),
	('EHS5', 'Геологический факультет'),
	('EHS5', 'Географический факультет'),
	('EHS5', 'Факультет наук о материалах'),
	('EHS5', 'Факультет фундаментальной медицины');
	
INSERT INTO public.pass_score(
	university_id, subject_id, specialty_id, faculty_id, pass_score)
	VALUES ('MGU', '22', '010501', 1, 69),
	('MGU', '03', '010501', 2, 69),
	('MGU', '05', '010501', 3, 69),
	('SPGU', '03', '240801', 4, 75),
	('SPGU', '22', '240801', 5, 69),
	('MFTI', '22', '010501', 6, 69);
