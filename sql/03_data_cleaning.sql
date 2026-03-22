DROP VIEW IF EXISTS fraud_cleaned;

CREATE VIEW fraud_cleaned AS
SELECT
    trans_date_trans_time,
    merchant,
    category,
    amt,
    gender,
    city,
    state,
    zip,
    lat,
    long,
    city_pop,
    job,
    dob,
    unix_time,
    merch_lat,
    merch_long,
    is_fraud
FROM fraud_all;
