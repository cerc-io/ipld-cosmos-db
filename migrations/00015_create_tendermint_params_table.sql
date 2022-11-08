-- +goose Up
-- references headers and public.blocks
CREATE TABLE IF NOT EXISTS tendermint.param_cids (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    block_max_bytes INT NOT NULL,
    block_max_gas   INT NOT NULL,
    cid TEXT NOT NULL,
    mh_key TEXT NOT NULL,
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.param_cids;
