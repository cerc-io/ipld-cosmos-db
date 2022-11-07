-- +goose Up
CREATE SCHEMA IF NOT EXISTS tendermint;

-- +goose Down
DROP SCHEMA tendermint;
