-- +goose Up
-- references header
-- referenced by Txs, Evidence (all evidence which forms list), and Commit
CREATE TABLE IF NOT EXISTS tendermint.block_cids (
    block_number          BIGINT NOT NULL,
    block_hash            VARCHAR(66) NOT NULL, -- block part tree root hash
    header_hash           VARCHAR(66) NOT NULL,
    cid                   TEXT NOT NULL,
    mh_key                TEXT NOT NULL -- links to the protobuf encoded block object
    PRIMARY KEY (block_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.block_cids;
