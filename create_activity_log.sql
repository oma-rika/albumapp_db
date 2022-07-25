DROP TABLE IF EXISTS activity_log;
CREATE TABLE activity_log (
  ID int(11) NOT NULL AUTO_INCREMENT,
  UserId int(11) NOT NULL,
  Message varchar(256) NOT NULL,
  Filename varchar(256) DEFAULT NULL,
  UpdateTime datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (ID)
);
DESC activity_log;


