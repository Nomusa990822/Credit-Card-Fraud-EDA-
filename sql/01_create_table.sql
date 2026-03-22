DROP TABLE IF EXISTS fraud_train;
DROP TABLE IF EXISTS fraud_test;
DROP TABLE IF EXISTS fraud_all;

CREATE TABLE fraud_train (
    row_id BIGINT,
    trans_date_trans_time TIMESTAMP,
    cc_num BIGINT,
    merchant VARCHAR(255),
    category VARCHAR(100),
    amt DECIMAL(12,2),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(10),
    zip VARCHAR(20),
    lat DECIMAL(10,6),
    long DECIMAL(10,6),
    city_pop BIGINT,
    job VARCHAR(255),
    dob DATE,
    trans_num VARCHAR(100),
    unix_time BIGINT,
    merch_lat DECIMAL(10,6),
    merch_long DECIMAL(10,6),
    is_fraud INT
);

CREATE TABLE fraud_test (
    row_id BIGINT,
    trans_date_trans_time TIMESTAMP,
    cc_num BIGINT,
    merchant VARCHAR(255),
    category VARCHAR(100),
    amt DECIMAL(12,2),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    gender VARCHAR(10),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(10),
    zip VARCHAR(20),
    lat DECIMAL(10,6),
    long DECIMAL(10,6),
    city_pop BIGINT,
    job VARCHAR(255),
    dob DATE,
    trans_num VARCHAR(100),
    unix_time BIGINT,
    merch_lat DECIMAL(10,6),
    merch_long DECIMAL(10,6),
    is_fraud INT
);
