/*Please add ; after each select statement*/
CREATE PROCEDURE newsSubscribers()
BEGIN
    SELECT 
        DISTINCT join_data.subscriber
    FROM 
        (SELECT 
            subscriber
        FROM 
            full_year
        WHERE 
            newspaper LIKE '%Daily%' 
        UNION SELECT 
            subscriber
        FROM 
            half_year
        WHERE 
            newspaper LIKE '%Daily%' ) as join_data
    ORDER BY 
        join_data.subscriber ASC;
END