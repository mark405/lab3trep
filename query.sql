SELECT s.type, AVG(t.weekly_sales) AS average_weekly_sales
FROM Train t
JOIN stores s ON t.store = s.store
GROUP BY s.type;

SELECT f.store, f.date, f.fuel_price
FROM features f
WHERE (f.date, f.fuel_price) IN (
SELECT date, MAX(fuel_price) AS max_fuel_price
FROM features
WHERE date = '2024-01-15'
GROUP BY date);

SELECT s.type, MAX(f.temperature) AS max_temperature
FROM features f
JOIN stores s ON f.store = s.store
GROUP BY s.type;