INSERT INTO public.specialty(
	code, name)
	VALUES ('240801', 'Машины и аппараты химических производств'),
	('260601', 'Технология швейных изделий'),
	('260902', 'Конструирование швейных изделий');
	
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
	name, active, url, short_name, rate)
	VALUES ('Московский государственный университет имени М.В. Ломоносова', true, 'localhost:3082', 'МГУ имени М.В. Ломоносова', 647),
	('Санкт-Петербургский государственный университет', true, 'localhost:3083', 'СПбГУ', 616),
	('Московский физико-технический институт', true, 'localhost:3084', 'МФТИ', 612),
	('Национальный исследовательский университет "Высшая школа экономики"', true, 'localhost:3085', 'НИУ ВШЭ', 606),
	('Университет "Лютик"', false, 'localhost:3085', 'У Лютик', NULL);
	
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