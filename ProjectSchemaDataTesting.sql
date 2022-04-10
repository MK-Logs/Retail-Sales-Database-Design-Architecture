USE retailSalesDB;

CREATE TABLE h5 AS SELECT hierarchy5_id, 
avg(case when product_length > 0 then product_length end)  as al05, avg(product_length) as al5,
avg(case when product_width > 0 then product_width end)  as aw05, avg(product_width) as aw5,
avg(case when product_depth > 0 then product_depth end)  as ad05, avg(product_depth) as ad5 
FROM  productdetails
GROUP BY hierarchy5_id;

UPDATE productdetails, h5
SET productdetails.product_length = h5.al05 
WHERE (productdetails.hierarchy5_id = h5.hierarchy5_id) AND (h5.al05 IS NOT NULL) AND (h5.al05 != h5.al5) AND (productdetails.product_length = 0);

UPDATE productdetails, h5 
SET productdetails.product_width = h5.aw05 
WHERE (productdetails.hierarchy5_id = h5.hierarchy5_id) AND (h5.aw05 IS NOT NULL) AND (h5.aw05 != h5.aw5) AND (productdetails.product_width = 0);

UPDATE productdetails, h5 
SET productdetails.product_width = h5.ad05 
WHERE (productdetails.hierarchy5_id = h5.hierarchy5_id) AND (h5.ad05 IS NOT NULL) AND (h5.ad05 != h5.ad5) AND (productdetails.product_depth = 0);

CREATE TABLE h4 AS SELECT hierarchy4_id, 
avg(case when product_length > 0 then product_length end)  as al04, avg(product_length) as al4,
avg(case when product_width > 0 then product_width end)  as aw04, avg(product_width) as aw4,
avg(case when product_depth > 0 then product_depth end)  as ad04, avg(product_depth) as ad4 
FROM  productdetails
GROUP BY hierarchy4_id;

UPDATE productdetails, h4
SET productdetails.product_length = h4.al04 
WHERE (productdetails.hierarchy4_id = h4.hierarchy4_id) AND (h4.al04 IS NOT NULL) AND (h4.al04 != h4.al4) AND (productdetails.product_length = 0);

UPDATE productdetails, h4 
SET productdetails.product_width = h4.aw04 
WHERE (productdetails.hierarchy4_id = h4.hierarchy4_id) AND (h4.aw04 IS NOT NULL) AND (h4.aw04 != h4.aw4) AND (productdetails.product_width = 0);

UPDATE productdetails, h4 
SET productdetails.product_width = h4.ad04 
WHERE (productdetails.hierarchy4_id = h4.hierarchy4_id) AND (h4.ad04 IS NOT NULL) AND (h4.ad04 != h4.ad4) AND (productdetails.product_depth = 0);

CREATE TABLE h3 AS SELECT hierarchy3_id, 
avg(case when product_length > 0 then product_length end)  as al03, avg(product_length) as al3,
avg(case when product_width > 0 then product_width end)  as aw03, avg(product_width) as aw3,
avg(case when product_depth > 0 then product_depth end)  as ad03, avg(product_depth) as ad3 
FROM  productdetails
GROUP BY hierarchy3_id;

UPDATE productdetails, h3
SET productdetails.product_length = h3.al03 
WHERE (productdetails.hierarchy3_id = h3.hierarchy3_id) AND (h3.al03 IS NOT NULL) AND (h3.al03 != h3.al3) AND (productdetails.product_length = 0);

UPDATE productdetails, h3 
SET productdetails.product_width = h3.aw03 
WHERE (productdetails.hierarchy3_id = h3.hierarchy3_id) AND (h3.aw03 IS NOT NULL) AND (h3.aw03 != h3.aw3) AND (productdetails.product_width = 0);

UPDATE productdetails, h3 
SET productdetails.product_width = h3.ad03 
WHERE (productdetails.hierarchy3_id = h3.hierarchy3_id) AND (h3.ad03 IS NOT NULL) AND (h3.ad03 != h3.ad3) AND (productdetails.product_depth = 0);

CREATE TABLE h2 AS SELECT hierarchy2_id, 
avg(case when product_length > 0 then product_length end)  as al02, avg(product_length) as al2,
avg(case when product_width > 0 then product_width end)  as aw02, avg(product_width) as aw2,
avg(case when product_depth > 0 then product_depth end)  as ad02, avg(product_depth) as ad2 
FROM  productdetails
GROUP BY hierarchy2_id;

UPDATE productdetails, h2
SET productdetails.product_length = h2.al02 
WHERE (productdetails.hierarchy2_id = h2.hierarchy2_id) AND (h2.al02 IS NOT NULL) AND (h2.al02 != h2.al2) AND (productdetails.product_length = 0);

UPDATE productdetails, h2 
SET productdetails.product_width = h2.aw02 
WHERE (productdetails.hierarchy2_id = h2.hierarchy2_id) AND (h2.aw02 IS NOT NULL) AND (h2.aw02 != h2.aw2) AND (productdetails.product_width = 0);

UPDATE productdetails, h2 
SET productdetails.product_width = h2.ad02 
WHERE (productdetails.hierarchy2_id = h2.hierarchy2_id) AND (h2.ad02 IS NOT NULL) AND (h2.ad02 != h2.ad2) AND (productdetails.product_depth = 0);

CREATE TABLE h1 AS SELECT hierarchy1_id, 
avg(case when product_length > 0 then product_length end)  as al01, avg(product_length) as al1,
avg(case when product_width > 0 then product_width end)  as aw01, avg(product_width) as aw1,
avg(case when product_depth > 0 then product_depth end)  as ad01, avg(product_depth) as ad1 
FROM  productdetails
GROUP BY hierarchy1_id;

UPDATE productdetails, h1
SET productdetails.product_length = h1.al01 
WHERE (productdetails.hierarchy1_id = h1.hierarchy1_id) AND (h1.al01 IS NOT NULL) AND (h1.al01 != h1.al1) AND (productdetails.product_length = 0);

UPDATE productdetails, h1 
SET productdetails.product_width = h1.aw01 
WHERE (productdetails.hierarchy1_id = h1.hierarchy1_id) AND (h1.aw01 IS NOT NULL) AND (h1.aw01 != h1.aw1) AND (productdetails.product_width = 0);

UPDATE productdetails, h1 
SET productdetails.product_width = h1.ad01 
WHERE (productdetails.hierarchy1_id = h1.hierarchy1_id) AND (h1.ad01 IS NOT NULL) AND (h1.ad01 != h1.ad1) AND (productdetails.product_depth = 0);
