-- +goose Up
-- everything links up to here
CREATE TABLE IF NOT EXISTS tendermint.header_cids (
    block_number          BIGINT NOT NULL,
    header_hash           VARCHAR(66) NOT NULL, -- HeaderPartTree root
    parent_block_id       UUID NOT NULL, -- links tendermint.block_ids
    cid                   TEXT NOT NULL,
    mh_key                TEXT NOT NULL, -- links to protobuf encoded header in public.blocks
    node_id               VARCHAR(128) NOT NULL,
    timestamp             BIGINT NOT NULL,
    version               UUID NOT NULL, -- links to tendermint.versions
    times_validated       INTEGER NOT NULL DEFAULT 1,
    last_commit_root      VARCHAR(66) NOT NULL,
    data_root             VARCHAR(66) NOT NULL,
    validators_root       VARCHAR(66) NOT NULL,
    next_validators_root  VARCHAR(66) NOT NULL,
    consensus_params_hash VARCHAR(66) NOT NULL,
    app_root              VARCHAR(66) NOT NULL,
    last_results_root     VARCHAR(66) NOT NULL,
    evidence_root         VARCHAR(66) NOT NULL,
    proposer_address      VARCHAR(66) NOT NULL,
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.header_cids;
