-- +goose Up
CREATE TABLE IF NOT EXISTS tendermint.versions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    app_version BIGINT NOT NULL,
    block_version BIGINT NOT NULL,
);

-- +goose Down
DROP TABLE tendermint.versions;
