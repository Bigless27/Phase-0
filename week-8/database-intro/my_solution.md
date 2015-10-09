SQL Code:
1. select * from states;

2. select * from regions;

3. select state_name, population form states;

4. select state_name, population from states
   order by population desc;

5. select state_name from states where region_id=7;

6. select state_name, population_density from states
   where population_density > 50 order by population density asc;

7. select state_name where population between 100000 and
   1500000;

8. select state_name, region_id from states order by asc;

9. select region_name from regions where region_name like "%Central%";

10. select region_name, state_name from regions, states where regions.id = states.region_id;

![Schema](https://github.com/Bigless27/phase-0/blob/master/week-8/database-intro/Schema.png "schema")

Reflection

- Data bases are for storing large amounts of data for the ability to easily access it through data queries.
- A one-to-many relationship is a relationship where there is only one type of some element, but there are many different types of elements that that single element can be related to.
- A primary key is an unique key that identifies a row in a table. A foriegn key is a primary key used in another table to identify multiple instances of the primary key. A foriegn key isn't usually the unique identifier in the table and it more than likely will have multple instances of that varibale in that table
- selecting information from an SQL databas is done through the use of writing query statements. These statements can be specified to grab and create a new table of whatever parameters you enter into the table.

  - A genral guideline for writting these statements is to always put a ; after each query statement. Another guideline to use a a wild card.

  - when searching for data in a query and you don't know exactly what you're looking for. You can use a %, which is a wild card that will return results if you keyword is present.