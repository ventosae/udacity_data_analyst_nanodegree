-- In order to join city_data with global_data we 
-- have to rename a column "avg_temparatue"
ALTER TABLE global_data
RENAME COLUMN avg_temp TO avg_temp_global;
-- Now, we will simply get all data we need for 
-- city Melbounre in Australia (ther is a similary named city in the US as well)
select * from city_data
JOIN global_data ON city_data.year = global_data.year
where city like 'Melbourne' AND country LIKE 'Australia'
