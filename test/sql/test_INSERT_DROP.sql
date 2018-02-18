\unset ECHO
\i test/setup.sql

-- Plan the tests.
SELECT plan(7);

-- Run the tests.
-- Insert 1 task with 2 associated points
INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');
INSERT INTO
  fpoint3d (task_id, value)
VALUES (0, 'POINT(0 0 0)');

INSERT INTO
  fpoint3d (task_id, value)
VALUES (0, 'POINT(1 1 1)');

-- Check the insert consequences
SELECT sequences_are(
    'public',
    ARRAY [
    'fpoint3d_id_seq', 'task_id_seq', 'f_operation_seq_for_task_0']
);
SELECT results_eq(
    'SELECT count(*) FROM fpoint3d', $$ VALUES (2::bigint) $$, 'fpoint3d table should contain 2 entries'
);

-- Delete the task (which delete in cascade both associated points)
DELETE FROM task
WHERE id = 0;

-- Check the delete consequences
SELECT sequences_are(
    'public',
    ARRAY [
    'fpoint3d_id_seq', 'task_id_seq']
);
SELECT results_eq(
    'SELECT count(*) FROM fpoint3d', $$ VALUES (0::bigint) $$, 'fpoint3d table should contain 0 entries'
);

-- Insert 3 task with 0 associated points
INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');
INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');
INSERT INTO
  task (name, description, type, module, state, "user", date)
VALUES ('', '', 0, 0, 0, '', '');
SELECT sequences_are(
    'public',
    ARRAY [
    'fpoint3d_id_seq', 'task_id_seq', 'f_operation_seq_for_task_1', 'f_operation_seq_for_task_2',
    'f_operation_seq_for_task_3']
);

-- Delete all three tasks
DELETE FROM task;

-- Check the delete consequences
SELECT sequences_are(
    'public',
    ARRAY [
    'fpoint3d_id_seq', 'task_id_seq']
);

SELECT results_eq(
    'SELECT count(*) FROM fpoint3d', $$ VALUES (0::bigint) $$, 'fpoint3d table should contain 0 entries'
);

\i test/teardown.sql
