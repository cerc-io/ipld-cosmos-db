-- +goose Up
-- references headers
CREATE TABLE IF NOT EXISTS tendermint.light_client_attack_evidence (
    -- references light_blocks and headers
    block_number BIGINT NOT NULL,
    header_hash VARCHAR(66) NOT NULL,

    -- references mis-behaving validator_sets (with block_number)
    proposer VARCHAR(66) NOT NULL,

    common_height     BIGINT NOT NULL,
    total_voting_power   INT NOT NULL,
    timestamp           BIGINT NOT NULL,
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.light_client_attack_evidence;
