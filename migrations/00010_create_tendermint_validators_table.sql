-- +goose Up
CREATE TABLE IF NOT EXISTS tendermint.validators (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4 (),
    address     VARCHAR(66) NOT NULL,
    pub_key      TEXT NOT NULL,
    voting_power BIGINT NOT NULL,
    proposer_priority INT NOT NULL
);

-- +goose Down
DROP TABLE tendermint.validators;
