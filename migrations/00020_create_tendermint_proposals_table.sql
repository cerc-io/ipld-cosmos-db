-- +goose Up
-- references headers
CREATE TABLE IF NOT EXISTS tendermint.proposals (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    sm_type   INT NOT NULL,
    round     BIGINT NOT NULL,
    pol_round  INT NOT NULL, -- -1 if NULL
    block_id   UUID NOT NULL,
    timestamp BIGINT NOT NULL,
    PRIMARY KEY (header_hash, block_number, round)
);

-- +goose Down
DROP TABLE tendermint.proposals;
