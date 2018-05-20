Change all autoincrement value in php

i)
ALTER TABLE `users` DROP `id`;
ALTER TABLE `users` AUTO_INCREMENT = 1;
ALTER TABLE `users` ADD `id` int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;


ii)
SET @num := 0; UPDATE users SET id = @num := (@num+1); ALTER TABLE users AUTO_INCREMENT =1;



..........................................................

Column value swap in Mysql 

UPDATE users SET name=@tmp:=name, name=age, age=@tmp;



..........................................................


Column row swap value in mysql
update users set gender = (case when gender = 'm' then 'f' when gender = 'f' then 'm' else gender end);

update users set gender = if(gender = 'm','f',if(gender = 'f','m',null))


..........................................................


custom order by

SELECT * FROM `wp_posts` order by id IN ( 2, 6) desc, id asc


..........................................................

Delete Duplicate row in tables

DELETE t1 FROM contacts t1
        INNER JOIN
    contacts t2 
WHERE
    t1.id < t2.id AND t1.email = t2.email;


