-- +goose Up
-- references headers and public.blocks
CREATE TABLE IF NOT EXISTS tendermint.results (
    header_hash VARCHAR(66) NOT NULL,
    block_number BIGINT NOT NULL,
    code      BIGINT NOT NULL,
    data      BYTEA NOT NULL,
    gas_wanted BIGINT NOT NULL,
    gas_used   BIGINT NOT NULL,
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.results;
