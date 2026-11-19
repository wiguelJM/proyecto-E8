-- 1. Qué pregunta responde: Identifica los incidentes cibernéticos reportados en el sector Minas y Energía en Colombia con sus columnas clave (fecha, orden de entidad, sector, ubicación, taxonomía, tipo e importancia) para priorizar prevención y monitoreo.
-- 2. Cifra de control: 4.243 filas antes del filtro -> 38 filas después del filtro (sector = "Minas y Energía").
-- 3. Qué es una fila del resultado: Un reporte individual de incidente cibernético registrado en Colombia para una entidad del sector Minas y Energía.

SELECT
  `fecha_de_solicitud`,
  `orden_de_la_entidad`,
  `sector`,
  `regi_n`,
  `divipola_departamento`,
  `departamento`,
  `clasificaci_n_taxonom_a`,
  `tipo_de_incidente`,
  `importancia`
WHERE caseless_one_of(`sector`, "Minas y Energía")
