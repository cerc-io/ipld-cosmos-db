-- +goose Up
-- references header_cids
-- referenced by validator set
-- can this be represented by commits and headers tables?
CREATE TABLE IF NOT EXISTS tendermint.light_blocks (
    block_number BIGINT NOT NULL,
    header_hash VARCHAR(66) NOT NULL, -- signed header's hash
    commit_hash VARCHAR(66) NOT NULL, -- references commit
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.light_blocks;
