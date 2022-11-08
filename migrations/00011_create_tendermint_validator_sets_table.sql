-- +goose Up
-- TODO: make view?
CREATE TABLE IF NOT EXISTS tendermint.validator_sets (
    block_number BIGINT NOT NULL,
    validators UUID[] NOT NULL, -- references validators
    proposer UUID NOT NULL, -- references validators
    PRIMARY KEY (proposer, block_number)
);

-- +goose Down
DROP TABLE tendermint.validator_sets;
