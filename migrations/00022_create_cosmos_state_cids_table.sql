-- +goose Up
-- references headers
CREATE TABLE IF NOT EXISTS cosmos.state_cids (
    header_hash           VARCHAR(66) NOT NULL,
    block_number          BIGINT NOT NULL,
    state_leaf_key        VARCHAR(66),
    cid                   TEXT NOT NULL,
    state_path            BYTEA NOT NULL,
    node_type             INTEGER NOT NULL,
    diff                  BOOLEAN NOT NULL DEFAULT FALSE,
    mh_key                TEXT NOT NULL,
    proto_type            TEXT,
    PRIMARY KEY (state_path, header_hash, block_number)
);

-- +goose Down
DROP TABLE cosmos.state_cids;
