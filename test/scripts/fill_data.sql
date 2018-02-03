-- Insert tasks
INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');

INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');

INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');

-- Insert points
INSERT INTO
  fpoint3d (task_id, value)
VALUES (0, 'POINT(0 0 0)');

INSERT INTO
  fpoint3d (task_id, value)
VALUES (0, 'POINT(1 1 1)');

INSERT INTO
  fpoint3d (task_id, value)
VALUES (1, 'POINT(0 0 0)');

INSERT INTO
  fpoint3d (task_id, value)
VALUES (2, 'POINT(0 0 0)');
