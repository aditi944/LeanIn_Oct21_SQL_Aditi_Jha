create database instagram;
use instagram;

create table users(
id int(11) primary key AUTO_INCREMENT,
username varchar(255) unique key,
created_at timestamp default CURRENT_TIMESTAMP
);

desc users;

create table photos(
    id int primary key AUTO_INCREMENT,
    image_url varchar(255),
    user_id int,
    created_at timestamp default CURRENT_TIMESTAMP,
    Foreign key(user_id) references users(id)
    );
    
    desc photos;
    
    create table comments(
    id int primary key AUTO_INCREMENT,
    comment_text varchar(255),
    photo_id int,
    user_id int,
    created_at timestamp default CURRENT_TIMESTAMP,
    Foreign key(photo_id) references photos(id),
    Foreign key(user_id) references users(id)
    
    );
    
    desc comments;
    
    CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    PRIMARY KEY(user_id, photo_id)
);


    
    create table follows(
    follower_id int not null,
    followee_id int not null,
        created_at TIMESTAMP DEFAULT NOW(),
   FOREIGN KEY(follower_id) REFERENCES users(id),
   FOREIGN KEY(followee_id) REFERENCES users(id),
    primary key(follower_id, followee_id)
    );
    
    create table tags(
    id int primary key AUTO_INCREMENT,
    tag_name varchar(255) unique key null,
    created_at TIMESTAMP DEFAULT NOW()
    );
    
    create table photos_tags(
    photo_id int not null,
    tag_id int not null,
    FOREIGN key(photo_id) references likes(photo_id),
    FOREIGN key(tag_id) references tags(id)
    );

/*
Q1
*/
SELECT username, created_at FROM users ORDER BY created_at LIMIT 5;

/*
Q2

 */

SELECT Dayname(created_at) AS day,
Count(*) AS total
From users
Group by day
Order by total DESC;




/*
Q3
*/
SELECT  users.username FROM users LEFT JOIN  users ON user.id = photos.user_id WHERE photos.id IS NULL;

/*q4*/



SELECT users.username FROM photos INNER JOIN(SELECT photo_id,COUNT(*) AS like_count FROM likes GROUP BY photo_id)AS photo_likes
INNER JOIN users ON users.id = photos.user_id
ORDER BY like_count DESC
LIMIT 1;
                                             
/* q5
 */
Select FLOOR((select count(*) from photos)/(select count(*) from users)) AS AVG;

/*q6 */