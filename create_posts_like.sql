DROP TABLE IF EXISTS posts_like;
CREATE TABLE posts_like (
  ID int(11) NOT NULL AUTO_INCREMENT,
  FileId int(11) NOT NULL,
  UserId int(11) NOT NULL,
  PRIMARY KEY (ID),
  INDEX IndexID (FileId,UserId)
);
-- EXPLAIN  SELECT * FROM posts_like;

