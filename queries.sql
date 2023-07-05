Select * From owners cross Join vehicles;

Select first_name, last_name, Count(owner_id) From owners o
Join vehicles v on o.id = v.owner_id Group By (first_name, last_name)
Order By first_name;

Select first_name, last_name, Round(Avg(price)) as average_price,
Count(owner_id) From owners o Join vehicles v on o.id = v.owner_id
Group By (first_name, last_name) having Count(owner_id) > 1 And ROUND(AVG(price)) > 10000 Order By first_name DESC;