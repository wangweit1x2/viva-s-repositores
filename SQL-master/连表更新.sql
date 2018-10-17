

-- 连表更新 将喜好为piano的人的name改为pianoboy
UPDATE users u
        LEFT JOIN
    hobby h ON u.id = h.uid 
SET 
	h.hobby = 'swim',
    u.name = 'swimboy'
WHERE 
	h.hobby = 'piano';
    
    
SELECT * FROM users, hobby;



-- 下面为查询的sql：
SELECT * FROM users;

SELECT * FROM hobby;
