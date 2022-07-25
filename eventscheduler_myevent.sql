#Event設定
SET GLOBAL event_scheduler = ON;
DROP EVENT IF EXISTS myevent;
CREATE EVENT myevent
	ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 day
    DO
		DELETE FROM albumapp.imagefiles WHERE DeleteFlag=1 AND DATE_SUB(CURDATE(), INTERVAL 30 day)

-- SELECT * FROM albumapp.imagefiles WHERE DeleteFlag = 1;