# Mysql

DELETE n1 FROM users n1, users n2 WHERE n1.id > n2.id AND n1.name = n2.name


SELECT id, browser->'$.name' browser FROM events;


SELECT * FROM t1 WHERE json_extract(jdoc, '$.key1')='value1'



======================

Increase Upload file size in phpmyadmin ( PHP.ini )

memory_limit=512M

post_max_size=80M

upload_max_filesize=200M


