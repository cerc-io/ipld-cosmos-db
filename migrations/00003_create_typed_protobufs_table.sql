-- +goose Up
CREATE TABLE IF NOT EXISTS typed_protobuf (
    name TEXT PRIMARY KEY,
    mh_key TEXT NOT NULL
);

-- +goose Down
DROP TABLE typed_protobuf;
