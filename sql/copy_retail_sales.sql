
-- Substitua o caminho pelo local do arquivo CSV no seu computador/servidor
COPY public.retail_sales ("fev", "44060", "rótulos_de_linha", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "total_geral")
FROM '/caminho/para/retail_sales_dataset_clean.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"', ENCODING 'UTF8');
