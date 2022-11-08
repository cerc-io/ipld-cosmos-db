-- +goose Up
-- TODO: this is too generic, need a migration running script that requests chain name
CREATE SCHEMA cosmos;

-- +goose Down
DROP SCHEMA cosmos;
