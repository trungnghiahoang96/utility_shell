
-- Insert missing events into an ordered sequence of event records in PosgreSQL

  

INSERT INTO abcd_dev (out_of_service, return_service, vin,date,TIME,category)
SELECT c.out_of_service,
       c.return_service,
       c.vin,
       c.date,
       c.time,
       'out_of_service'
FROM abcd_dev c
JOIN abcd_dev a ON a.vin = c.vin
AND a.date < c.date
AND a.time < c.time
AND NOT EXISTS
  (SELECT *
   FROM abcd_dev x
   WHERE x.vin = a.vin
     AND x.date >= a.date
     AND x.date <= c.date
     AND x.time >= a.time
     AND x.time <= c.time )
JOIN abcd_dev d ON d.vin = c.vin
AND d.date > c.date
AND d.time > c.time
AND NOT EXISTS
  (SELECT *
   FROM abcd_dev x
   WHERE x.vin = d.vin
     AND x.date >= c.date
     AND x.date <= d.date
     AND x.time >= c.time
     AND x.time <=  d.time )
WHERE c.category = 'Return to Service' ;
