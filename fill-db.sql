--
-- Data for table: users; Type: TABLE DATA; Schema: public
--
INSERT INTO users(email, password_hash, first_name, last_name, avatar) VALUES
('ivpetr@fan.local', '8NkbOQ', 'Ivan', 'Petrov', 'item07.jpg'),
('vsidor@fan.local', 'YiwXX3', 'Viktor', 'Sidorov', 'item02.jpg'),
('oliv@fan.local', 'rfH4zX', 'Oleg', 'Ivanov', 'item09.jpg'),
('denkot@fan.local', 'kKFy-9','Denis', 'Kotov', 'item15.jpg');

--
-- Data for table: categories; Type: TABLE DATA; Schema: public
--
INSERT INTO categories(name) VALUES
('Деревья'),
('За жизнь'),
('Без рамки'),
('Разное'),
('IT'),
('Музыка'),
('Кино'),
('Программирование'),
('Железо');

--
-- Data for table: articles; Type: TABLE DATA; Schema: public
--
ALTER TABLE articles DISABLE TRIGGER ALL;
INSERT INTO articles(title, announce, full_text, image, user_id, created_at) VALUES
('Как собрать камни бесконечности', 'Программировать не настолько сложно, как об этом говорят. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Бороться с прокрастинацией несложно.', 'Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Это один из лучших рок-музыкантов. Простые ежедневные упражнения помогут достичь успеха. Золотое сечение — соотношение двух величин, гармоническая пропорция. Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Из под его пера вышло 8 платиновых альбомов. Этот смартфон — настоящая находка.', 'image1.jpg', 1, '2021-04-30 17:29:50'),
('Как начать программировать', 'Из под его пера вышло 8 платиновых альбомов. Этот смартфон — настоящая находка. Большой и яркий экран, мощнейший процессор — всё это в небольшом гаджете. Как начать действовать? Для начала просто соберитесь.', 'Вы можете достичь всего. Стоит только немного постараться и запастись книгами. Процессор заслуживает особого внимания. Он обязательно понравится геймерам со стажем. Этот смартфон — настоящая находка. Большой и яркий экран, мощнейший процессор — всё это в небольшом гаджете. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Простые ежедневные упражнения помогут достичь успеха. Помните, небольшое количество ежедневных упражнений лучше, чем один раз, но много. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Собрать камни бесконечности легко, если вы прирожденный герой.', 'image2.jpg', 3, '2021-02-28 00:37:05'),
('Ёлки. История деревьев', 'Первая большая ёлка была установлена только в 1938 году. Бороться с прокрастинацией несложно. Просто действуйте. Маленькими шагами. Программировать не настолько сложно, как об этом говорят.', 'Простые ежедневные упражнения помогут достичь успеха. Программировать не настолько сложно, как об этом говорят. Альбом стал настоящим открытием года. Мощные гитарные рифы и скоростные соло-партии не дадут заскучать. Как начать действовать? Для начала просто соберитесь. Рок-музыка всегда ассоциировалась с протестами. Так ли это на самом деле? Собрать камни бесконечности легко, если вы прирожденный герой. Золотое сечение — соотношение двух величин, гармоническая пропорция. Он написал больше 30 хитов. Игры и программирование разные вещи. Не стоит идти в программисты, если вам нравятся только игры.', 'image3.jpg', 4, '2021-05-13 10:58:15');
ALTER TABLE articles ENABLE TRIGGER ALL;

--
-- Data for table: articles_categories; Type: TABLE DATA; Schema: public
--
ALTER TABLE article_categories DISABLE TRIGGER ALL;
INSERT INTO article_categories VALUES
(1, 2),
(1, 8),
(2, 9),
(2, 4),
(2, 2),
(3, 5),
(3, 2);
ALTER TABLE article_categories ENABLE TRIGGER ALL;

--
-- Data for table: comments; Type: TABLE DATA; Schema: public
--
ALTER TABLE comments DISABLE TRIGGER ALL;
INSERT INTO comments(text, created_at, article_id, user_id) VALUES
('Хочу такую же футболку :-) Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.', '2021-04-30 18:29:50', 1, 1),
('Согласен с автором! Хочу такую же футболку :-) Это где ж такие красоты?', '2021-05-05 10:21:00', 1, 4),
('Мне кажется или я уже читал это где-то?', '2021-06-11 17:00:50', 2, 2),
('Плюсую, но слишком много буквы! Согласен с автором! Мне не нравится ваш стиль. Ощущение, что вы меня поучаете.', '2021-05-30 09:09:30', 2, 1),
('Планируете записать видосик на эту тему? Хочу такую же футболку :-) Плюсую, но слишком много буквы!', '2021-05-19 11:59:50', 2, 4),
('Давно не пользуюсь стационарными компьютерами. Ноутбуки победили.', '2021-06-09 15:49:10', 3, 3),
('Хочу такую же футболку :-)', '2021-06-16 22:29:50', 3, 4);
ALTER TABLE comments ENABLE TRIGGER ALL;
