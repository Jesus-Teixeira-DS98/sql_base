-- Vericando os dados da tabela
select 
	datesold,
	postcode,
	price,
	propertyType,
	bedrooms
from 
	property_sales ps 
	
-- Quero entender o range de data, máximo e mínimo
SELECT  
	MAX(datesold) as max_date,
	MIN(datesold) as min_date
FROM property_sales ps 

-- postcode: Quantidade de bairros, número de casas vendidas em cada bairro e o preço médio do bairro 

SELECT  
	COUNT(DISTINCT postcode) 
FROM property_sales ps

SELECT  
	postcode ,
	ROUND(AVG(price),2) as avg_price,
	COUNT(postcode) as num_houses 
FROM property_sales ps
GROUP BY postcode  
ORDER BY COUNT(postcode) DESC

SELECT  
	postcode ,
	ROUND(AVG(price),2) as avg_price,
	COUNT(postcode) as num_houses 
FROM property_sales ps
GROUP BY postcode  
ORDER BY ROUND(AVG(price),2) DESC

-- propertyType: Tipos de propriedade na base

SELECT 
	DISTINCT propertyType
FROM property_sales ps 

-- bedrooms: Verificando o número de quartos e o preço médio por número de quartos

SELECT 
	DISTINCT propertyType
FROM property_sales ps 
