DROP TABLE IF EXISTS imagefiles;
CREATE TABLE imagefiles (
  ID int(11) NOT NULL AUTO_INCREMENT,
  UserId int(11) NOT NULL,
  FilePath mediumtext NOT NULL,
  PublicFlag tinyint(4) NOT NULL DEFAULT 0,
  Favorite tinyint(4) NOT NULL DEFAULT 0,
  DeleteFlag tinyint(4) NOT NULL DEFAULT 0,
  UpdateTime datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);

DESC imagefiles;
