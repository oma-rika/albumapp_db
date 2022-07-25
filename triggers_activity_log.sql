DROP TRIGGER IF EXISTS imagefile_insert_trigger;
DROP TRIGGER IF EXISTS imagefile_update_trigger;
DROP TRIGGER IF EXISTS imagefile_delete_trigger;


CREATE TRIGGER
  imagefile_insert_trigger
AFTER INSERT ON
  albumapp.imagefiles
FOR EACH ROW
  INSERT INTO
    albumapp.activity_log (UserId, Message) VALUES (NEW.UserId, 'アルバムにデータを追加しました');

CREATE TRIGGER
  imagefile_update_trigger
AFTER UPDATE ON
  albumapp.imagefiles
FOR EACH ROW
  INSERT INTO
  albumapp.activity_log (UserId, Message) VALUES (NEW.UserId, 'アルバムのデータを変更しました');

CREATE TRIGGER
  imagefile_delete_trigger
BEFORE DELETE ON
  albumapp.imagefiles
FOR EACH ROW
  INSERT INTO
  albumapp.activity_log (UserId, Message) VALUES (OLD.UserId, 'ゴミ箱に移動したデータを削除しました');

-- SHOW TRIGGERS;
