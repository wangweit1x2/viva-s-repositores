
-- 连表删除 将喜好为piano的user从user表中删除
	-- 下面为错误的连表删除
DELETE FROM users WHERE id IN (
	SELECT u.id FROM users u
    LEFT JOIN hobby tna
    ON
    u.id = tna.uid
    WHERE hobby = 'piano'
);

	-- 下面为正确的连表删除
DELETE u FROM users u
        LEFT JOIN
    hobby tna ON u.id = tna.uid 
WHERE
    tna.hobby = 'piano';


-- 下面为查询的sql：
SELECT * FROM users;

SELECT * FROM hobby;

-- 下面为测试添加的数据：
INSERT INTO users(name,age) values('happyheng',18);
INSERT INTO users(name,age) values('happyheng1',19);
INSERT INTO hobby(uid,hobby) values(2,'piano');


-- 下面为创建表的sql：
create table users(
id int(11) unsigned not null  auto_increment,
name varchar(50) not null,
age int,
primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;


CREATE TABLE hobby(
 id INT(11) UNSIGNED AUTO_INCREMENT,
 uid INT(11) UNSIGNED,
 hobby VARCHAR(50) NOT NULL,
 PRIMARY KEY(id)
);



