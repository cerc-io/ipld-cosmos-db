-- +goose Up
-- references headers, referenced by commit_sigs that belong to this commit
-- can possibly remove this table, embed missing info in commits_sigs table and have it reference header/block_id directly
CREATE TABLE IF NOT EXISTS tendermint.commits (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    round      BIGINT NOT NULL,
    block_id   UUID NOT NULL,
    PRIMARY KEY (header_hash, block_number, round)
);

-- +goose Down
DROP TABLE tendermint.commits;
