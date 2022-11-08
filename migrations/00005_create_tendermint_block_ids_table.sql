-- +goose Up
CREATE TABLE IF NOT EXISTS tendermint.block_ids (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    header_hash VARCHAR(66) NOT NULL, -- HeaderFieldTree root
    block_hash VARCHAR(66) NOT NULL, -- BlockPartTree root
    block_number BIGINT NOT NULL
);

-- +goose Down
DROP TABLE tendermint.block_ids;
