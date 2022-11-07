-- +goose Up
-- references evidence
CREATE TABLE IF NOT EXISTS tendermint.duplicate_vote_evidence (
    block_number BIGINT NOT NULL,
    header_hash VARCHAR(66) NOT NULL,

    vote_a UUID NOT NULL -- references votes
    vote_b UUID NOT NULL -- references votes

    total_voting_power INT NOT NULL,
    validator_power   INT NOT NULL,
    timestamp        BIGINT NOT NULL,
    evidence_index INT NOT NULL,
    PRIMARY KEY (header_hash, block_number)
);

-- +goose Down
DROP TABLE tendermint.duplicate_vote_evidence;
