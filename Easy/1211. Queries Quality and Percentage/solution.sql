SELECT query_name, ROUND(SUM((rating*1.0/position*1.0))/COUNT(*),2) AS quality, ROUND(SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS poor_query_percentage
FROM Queries q
GROUP BY query_name;