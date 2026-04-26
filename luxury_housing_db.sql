CREATE DATABASE luxury_housing_db;
USE luxury_housing_db;

CREATE TABLE luxury_housing (

    property_id          VARCHAR(20),
    project_name         VARCHAR(100),
    developer_name       VARCHAR(100),

    micro_market         VARCHAR(100),

    unit_size_sqft       DECIMAL(10,2),
    configuration        VARCHAR(20),
    possession_status    VARCHAR(50),

    ticket_price_cr      DECIMAL(10,4),
    price_per_sqft       DECIMAL(10,2),
    price_segment        VARCHAR(30),

    transaction_type     VARCHAR(20),
    sales_channel        VARCHAR(30),
    purchase_quarter     DATE,
    quarter_number       VARCHAR(10),

    buyer_type           VARCHAR(30),
    nri_buyer            TINYINT(1),
    buyer_comments       TEXT,

    connectivity_score   DECIMAL(5,4),
    connectivity_band    VARCHAR(10),
    amenity_score        DECIMAL(5,4),
    locality_infra_score DECIMAL(5,4),

    avg_traffic_time_min SMALLINT,

    booking_flag         TINYINT(1),

    PRIMARY KEY (property_id)
);

CREATE INDEX idx_micro_market     ON luxury_housing (micro_market);
CREATE INDEX idx_developer        ON luxury_housing (developer_name);
CREATE INDEX idx_quarter          ON luxury_housing (quarter_number);
CREATE INDEX idx_booking_flag     ON luxury_housing (booking_flag);
CREATE INDEX idx_price_segment    ON luxury_housing (price_segment);
CREATE INDEX idx_buyer_type       ON luxury_housing (buyer_type);
CREATE INDEX idx_sales_channel    ON luxury_housing (sales_channel);
CREATE INDEX idx_configuration    ON luxury_housing (configuration);
CREATE INDEX idx_possession       ON luxury_housing (possession_status);

SELECT COUNT(*) FROM luxury_housing;



