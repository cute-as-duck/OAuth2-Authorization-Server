CREATE TABLE oauth2_registered_client (
    id VARCHAR PRIMARY KEY NOT NULL,
    client_id VARCHAR,
    client_id_issued_at VARCHAR,
    client_secret VARCHAR,
    client_secret_expires_at VARCHAR,
    client_name VARCHAR,
    client_authentication_methods VARCHAR,
    authorization_grant_types VARCHAR,
    redirect_uris VARCHAR,
    scopes VARCHAR,
    client_settings VARCHAR,
    token_settings VARCHAR
);