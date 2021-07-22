CREATE TABLE Lists(  
    id int NOT NULL primary key AUTO_INCREMENT COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    title varchar(255) COMMENT 'task title',
    creatorId INT NOT NULL COMMENT 'creator Id'
) default charset utf8 COMMENT '';
CREATE TABLE Tasks(  
    id int NOT NULL primary key AUTO_INCREMENT COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    body varchar(255) COMMENT 'task title',
    listId INT NOT NULL COMMENT 'FK: lists id',
    FOREIGN KEY(listId) REFERENCES Lists(id) ON DELETE CASCADE
) default charset utf8 COMMENT '';
CREATE TABLE Profiles(  
    id INT NOT NULL primary key AUTO_INCREMENT COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'created at',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'updated at',
    Picture varchar(255) COMMENT 'task title',
    UserName VARCHAR(255) COMMENT 'profile user name '
) default charset utf8 COMMENT '';

DROP Table Lists;
