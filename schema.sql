CREATE TABLE scrape (
id SERIAL PRIMARY KEY,
hotel_name VARCHAR,
price INT,
ratings FLOAT,
average_price FLOAT);

CREATE TABLE csv (
id SERIAL PRIMARY KEY,
city VARCHAR,
hotel_name VARCHAR,
date_of_review DATE,
hotel_rating FLOAT,
average_rating_by_hotel FLOAT,
average_rating_by_city FLOAT,
diff_between_avg_ratings FLOAT);

SELECT scrape.id, scrape.price, scrape.average_price, csv.city
FROM scrape
INNER JOIN csv
ON scrape.id = csv.id;