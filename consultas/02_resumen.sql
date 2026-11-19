-- Pregunta: ¿Cuántos incidentes cibernéticos hay según su nivel de gravedad (IMPORTANCIA)?
-- Datos: datos/originales/Gestion_de_Incidentes_agi2-ekag.csv (4.243 filas)
-- Cifra de control: suma de grupos = 4.243 (Menor 2.383 + Grave 1.676 + Solicitud 121 + Muy Grave 63 = 4.243)

SELECT
  "IMPORTANCIA",
  COUNT(*) AS filas
FROM datos
GROUP BY "IMPORTANCIA"
ORDER BY filas DESC;
