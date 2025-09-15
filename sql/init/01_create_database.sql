DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_database WHERE datname = 'bike_stores') THEN
    PERFORM pg_terminate_backend(pid)
    FROM pg_stat_activity
    WHERE datname = 'bike_stores' AND pid <> pg_backend_pid();

    EXECUTE 'DROP DATABASE bike_stores';
  END IF;
END
$$;

CREATE DATABASE bike_stores WITH ENCODING 'UTF8';