DROP TABLE IF EXISTS users;
CREATE TABLE users (
  ID int(11) NOT NULL AUTO_INCREMENT,
  Account varchar(128) NOT NULL,
  MailAddress varchar(256) NOT NULL,
  Password varchar(128) NOT NULL,
  NickName varchar(128) DEFAULT NULL,
  State varchar(45) DEFAULT 'active',
  AccountCreateTime datetime NOT NULL DEFAULT current_timestamp(),
  LastLoginTime datetime DEFAULT NULL,
  AvatarFilePath text DEFAULT NULL,
  ShowAvatarFlag tinyint(4) DEFAULT 0,
  PRIMARY KEY (ID)
);

DESC users;