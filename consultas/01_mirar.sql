-- CONSULTA 1
-- Pregunta: ¿Cuáles son los incidentes de ciberseguridad registrados en el sector de Minas y Energía en Colombia
-- Datos: datos/originales/Gestion_de_Incidentes_agi2-ekag.csv - 10 Registros consultados, correspondientes al sector Minas y Energía.
-- Cifra de control: La consulta utiliza LIMIT 10, por lo que muestra únicamente una muestra de 10 registros y no el total de incidentes del sector.

sql("""
  SELECT SECTOR, REGIÓN, DEPARTAMENTO
  FROM datos
  WHERE IMPORTANCIA = 'Menor'
  LIMIT 10
""")
  
-- CONSULTA 2
-- Pregunta: ¿Cuál es la distribución de los incidentes de ciberseguridad registrados según su nivel de importancia y cuántos casos corresponden a cada categoría?
-- Datos: datos/originales/Gestion_de_Incidentes_agi2-ekag.csv - 4.243 registros en total, agrupados en 4 categorías de importancia
-- Cifra de control: La mayoría de los incidentes están clasificados como de importancia Menor (2.383), seguidos por los incidentes Graves (1.676). Los casos Muy Graves representan la menor cantidad, con 63 registros.

  sql("""
    SELECT IMPORTANCIA, COUNT(*) AS filas
    FROM datos
    GROUP BY IMPORTANCIA
    ORDER BY filas DESC
""")
