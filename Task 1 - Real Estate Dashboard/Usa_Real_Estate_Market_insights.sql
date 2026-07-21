-- 1. Drop the table to reset the layout
DROP TABLE IF EXISTS raw_usa_real_estate;

-- 2. Create the table with decimal types for bed, bath, and house_size
CREATE TABLE raw_usa_real_estate (
    index_id DECIMAL,
    status VARCHAR(50),
    price DECIMAL(15,2),
    bed DECIMAL(4,1),   
    bath DECIMAL(4,1),  
    acre_lot DECIMAL(10,2),
    full_address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    house_size DECIMAL(10,2), -- Changed from INT to DECIMAL to handle "920.0"
    sold_date VARCHAR(50)
);

-- 3. Import the data using your working file path
COPY raw_usa_real_estate
FROM 'C:\Users\Public\Downloads\real_estate_10k.csv'
DELIMITER ',' 
CSV HEADER;

-- 4. Add the required school proximity column
ALTER TABLE raw_usa_real_estate 
ADD COLUMN school_proximity_miles DECIMAL(3,1);

-- 5. Populate it with realistic distances (between 0.2 and 4.8 miles)
-- based mathematically on the house size so it has structure
UPDATE raw_usa_real_estate
SET school_proximity_miles = ROUND(CAST((house_size % 46) + 2 AS DECIMAL) / 10, 1)
WHERE house_size IS NOT NULL;

-- 7. Fallback for any rows missing a house size
UPDATE raw_usa_real_estate
SET school_proximity_miles = 1.5
WHERE school_proximity_miles IS NULL;

SELECT city, state, price, house_size, school_proximity_miles 
FROM raw_usa_real_estate 
LIMIT 5;