-- Pregunta: ¿Cuáles son los incidentes cibernéticos reportados en el sector Minas y Energía en Colombia?
-- Datos: datos/originales/Gestion_de_Incidentes_agi2-ekag.csv (4.243 filas; en Colab la tabla se llama datos)
-- Cifra de control: 4.243 filas en total y 38 filas en el sector Minas y Energía
SELECT
  "FECHA DE SOLICITUD",
  "ORDEN DE LA ENTIDAD",
  "SECTOR",
  "REGIÓN",
  "DEPARTAMENTO",
  "CLASIFICACIÓN TAXONOMÍA",
  "TIPO DE INCIDENTE",
  "IMPORTANCIA"
FROM datos
WHERE "SECTOR" = 'Minas y Energía';
