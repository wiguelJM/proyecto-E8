-- Pregunta: ¿Cuántos incidentes cibernéticos del sector Minas y Energía hay según su nivel de importancia?
-- Datos: datos/originales/Gestion_de_Incidentes_agi2-ekag.csv, solo sector Minas y Energía (tabla datos)
-- Cifra de control: los grupos suman 38 incidentes (Grave 19 + Menor 17 + Muy Grave 2 = 38)
SELECT
  "IMPORTANCIA",
  COUNT(*) AS filas
FROM datos
WHERE "SECTOR" = 'Minas y Energía'
GROUP BY "IMPORTANCIA"
ORDER BY filas DESC;
