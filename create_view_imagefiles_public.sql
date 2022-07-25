DROP VIEW IF EXISTS imagefiles_public_view;
CREATE VIEW imagefiles_public_view AS SELECT * FROM albumapp.imagefiles WHERE PublicFlag = 1;
-- SELECT * FROM albumapp.imagefiles_public_view;