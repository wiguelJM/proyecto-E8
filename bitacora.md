# Bitácora

Una línea por decisión: qué decidimos y por qué. Lo más reciente arriba.

## Decisiones

- 2026-11-17 · Cambiamos el enfoque y la fuente de datos al conjunto *Gestión de Incidentes* (`agi2-ekag`) de `datos.gov.co` (4.243 filas, 2019–2026) en `datos/originales/Gestion_de_Incidentes_agi2-ekag.csv` · Para analizar incidentes cibernéticos por sectores de Colombia (`Minas y Energía`, `Agricultura y Desarrollo Rural`, `Salud`, etc.) en lugar de PYMES o datos globales de Kaggle.
- 2026-11-17 · Descargamos `Global_Cybersecurity_Threats_2015-2024.csv` (3.000 filas, 2015–2024) en `datos/originales/` y completamos `diccionario.md` y `README.md` · Para cerrar la fase 01 Definir con datos reales sin valores inventados (reemplazado luego por la fuente de `datos.gov.co`).
- 2026-11-17 · Acotamos la pregunta principal al análisis de frecuencia y pérdida económica promedio por tipo de ataque en sectores típicamente PYME usando Kaggle · Global Cybersecurity Threats · Por retroalimentación docente para enfocar el proyecto en cifras concretas y diferenciarlo de E7.

## Limpieza (desde la sesión 4)

- Regla · Filas afectadas · Motivo
- Unificar escritura de SECTOR · 3 filas · corregir · Unificar mayúsculas en 'Ambiente Y/y Desarrollo Sostenible' para evitar sectores duplicados (`27` → `26` grupos; `67 + 3` → `70`)
- Unificar escritura de CLASIFICACIÓN TAXONOMÍA · 2 filas · corregir · Unificar mayúsculas en 'Contenido Dañino/dañino' e 'Intento de Intrusión/intrusión' para evitar categorías duplicadas (`12` → `10` grupos; `80 + 1` → `81` y `6 + 1` → `7`)
- Unificar escritura de TIPO DE INCIDENTE · 1 fila · corregir · Unificar mayúsculas en 'Mala Configuración/configuración' para evitar tipos duplicados (`27` → `26` grupos; `4 + 1` → `5`)
- Fecha imposible · 0 filas · revisar · Fechas que no se pudieron leer con el formato MM/DD/AAAA HH:MM:SS AM/PM (`%m/%d/%Y %I:%M:%S %p`); no se inventan (0 filas inválidas, todas las 4.243 convertidas a `datetime`)
- Límite metodológico (filas idénticas) · 856 filas · conservar · La base no tiene código único de incidente ni hora real (todas marcan `12:00:00 AM`); pueden ser incidentes distintos del mismo día, por lo que no se quitan
- Conciliación final (`02_limpieza.ipynb`, celda 9): `Original 4243 = limpias 4243 + quitadas 0 + a revisión 0 → 4243` (Cuadra)
- Impacto en indicadores (cifra antes · cifra después · por qué cambió): `% graves y muy graves` global pasó de `40.99%` (1.739 / 4.243 en `original`) a `42.19%` (1.739 / 4.122 en `analisis`) al excluir las 121 filas con `IMPORTANCIA = 'Solicitud'` en la vista de análisis sin borrarlas de la base limpia; y `Ambiente y Desarrollo Sostenible` pasó de `67` + `3` filas separadas a `70` filas unificadas.

## Uso de IA

- Generación y ejecución reproducible de `notebooks/02_limpieza.ipynb` a partir de la plantilla oficial, exportación de `datos/limpios/incidentes_limpio.csv` y `datos/limpios/incidentes_revision.csv`, y actualización de `bitacora.md` · Aceptamos las 4 reglas de limpieza (`unificar` en `SECTOR`, `CLASIFICACIÓN TAXONOMÍA`, `TIPO DE INCIDENTE` y `a_fecha` en `FECHA DE SOLICITUD`), conservar las 856 filas idénticas como límite documentado y filtrar `Solicitud` solo en la vista `analisis` · Comprobamos ejecutando el cuaderno dos veces seguidas con hash SHA-256 idéntico de los CSV generados y conciliación `4243 = 4243 + 0 + 0 (Cuadra)`.

- Inspección del CSV `agi2-ekag` y actualización de `README.md`, `diccionario.md` y `bitacora.md` al nuevo enfoque sectorial en Colombia · Aceptamos la ficha y el diccionario basados en las 9 columnas reales del dataset · Verificamos con Python conteo de filas (4.243), rango de fechas (`2019-03-22` a `2026-11-11`) y valores únicos por columna.
- Redacción inicial de la ficha del proyecto en `README.md` a partir de la pregunta corregida y los documentos previos del equipo · Aceptamos la estructura y marcamos como PENDIENTE los campos que dependían del CSV · Verificamos que no se inventaran fechas ni columnas.
