-- +goose Up
-- references headers and public.blocks
CREATE TABLE IF NOT EXISTS tendermint.transaction_cids (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    mh_key TEXT NOT NULL,
    cid TEXT NOT NULL,
    proto_type TEXT NOT NULL, -- references typed_protobufs
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.transaction_cids;
