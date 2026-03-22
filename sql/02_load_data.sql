-- Load training data
COPY fraud_train (
    row_id,
    trans_date_trans_time,
    cc_num,
    merchant,
    category,
    amt,
    first_name,
    last_name,
    gender,
    street,
    city,
    state,
    zip,
    lat,
    long,
    city_pop,
    job,
    dob,
    trans_num,
    unix_time,
    merch_lat,
    merch_long,
    is_fraud
)
FROM '/absolute/path/to/data/train.csv'
DELIMITER ','
CSV HEADER;

-- Load testing data
COPY fraud_test (
    row_id,
    trans_date_trans_time,
    cc_num,
    merchant,
    category,
    amt,
    first_name,
    last_name,
    gender,
    street,
    city,
    state,
    zip,
    lat,
    long,
    city_pop,
    job,
    dob,
    trans_num,
    unix_time,
    merch_lat,
    merch_long,
    is_fraud
)
FROM '/absolute/path/to/data/test.csv'
DELIMITER ','
CSV HEADER;

-- Combine train and test
CREATE TABLE fraud_all AS
SELECT * FROM fraud_train
UNION ALL
SELECT * FROM fraud_test;
