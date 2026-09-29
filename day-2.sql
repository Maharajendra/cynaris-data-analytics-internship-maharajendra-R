USE transport_analytics;
SELECT * FROM da_bus_routes;
SELECT * FROM da_journey_times;

SELECT * FROM da_bus_routes INNER JOIN da_journey_times
ON da_bus_routes.route_id = da_journey_times.route_id;

SELECT * FROM da_bus_routes LEFT JOIN da_journey_times
ON da_bus_routes.route_id = da_journey_times.route_id;

SELECT *
FROM da_bus_routes
RIGHT JOIN da_journey_times
ON da_bus_routes.route_id = da_journey_times.route_id;

SELECT *
FROM da_bus_routes
LEFT JOIN da_ridership_data
ON da_bus_routes.route_id = da_ridership_data.route_id;


SELECT *
FROM da_bus_routes
RIGHT JOIN da_ridership_data
ON da_bus_routes.route_id = da_ridership_data.route_id;


SELECT *
FROM da_bus_routes
LEFT JOIN da_ridership_data
ON da_bus_routes.route_id = da_ridership_data.route_id

UNION

SELECT *
FROM da_bus_routes
RIGHT JOIN da_ridership_data
ON da_bus_routes.route_id = da_ridership_data.route_id;

DESCRIBE da_bus_routes;