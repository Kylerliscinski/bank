-- Active: 1715635410117@@127.0.0.1@3306@humorous_jersey_devil_65a309_db
CREATE TABLE IF NOT EXISTS accounts (
    id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
    name varchar(255) COMMENT 'User Name',
    email varchar(255) UNIQUE COMMENT 'User Email',
    picture varchar(255) COMMENT 'User Picture'
) default charset utf8mb4 COMMENT '';

CREATE TABLE players (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    name VARCHAR(255) NOT NULL,
    img VARCHAR(1000) NOT NULL,
    score INT NOT NULL DEFAULT 0
);

INSERT INTO
    players (name, img, score)
VALUES (
        "Kyler",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5MDF7vi2bbyR4JFNd-IIvYg2DHV5XT7171Q&s",
        0
    ),
    (
        "Marissa",
        "https://i.ytimg.com/vi/C_fxDY8JVpg/hq720.jpg?sqp=-oaymwEYCJUDENAFSFryq4qpAwoIARUAAIhC0AEB&rs=AOn4CLDe7k2DX1Tfv81NnXTJ8mOqlGqEnQ",
        0
    );