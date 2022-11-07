-- +goose Up
CREATE TABLE IF NOT EXISTS tendermint.votes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    sm_type          INT NOT NULL,
    round            INT NOT NULL,
    block_id         UUID PRIMARY KEY NOT NULL, -- references block_ids
    timestamp        BIGINT NOT NULL,
    validator_address VARCHAR(66) NOT NULL,
    validator_index  INT NOT NULL,
    signature        BYTEA NOT NULL
);

-- +goose Down
DROP TABLE tendermint.votes;
