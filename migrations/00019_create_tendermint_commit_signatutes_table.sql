-- +goose Up
-- references headers and commits
CREATE TABLE IF NOT EXISTS tendermint.commit_signatures (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    validator_address VARCHAR(66) NOT NULL,
    round BIGINT NOT NULL,
    block_id_flag  INT NOT NULL,
    timestamp        BIGINT NOT NULL,
    signature        BYTEA NOT NULL,
    PRIMARY KEY (header_hash, block_number, validator_address)
);

-- +goose Down
DROP TABLE tendermint.commit_signatures;
