# Bitácora

Una línea por decisión: qué decidimos y por qué. Lo más reciente arriba.

## Decisiones

- 2026-11-17 · Cambiamos el enfoque y la fuente de datos al conjunto *Gestión de Incidentes* (`agi2-ekag`) de `datos.gov.co` (4.243 filas, 2019–2026) en `datos/originales/Gestion_de_Incidentes_agi2-ekag.csv` · Para analizar incidentes cibernéticos por sectores de Colombia (`Minas y Energía`, `Agricultura y Desarrollo Rural`, `Salud`, etc.) en lugar de PYMES o datos globales de Kaggle.
- 2026-11-17 · Descargamos `Global_Cybersecurity_Threats_2015-2024.csv` (3.000 filas, 2015–2024) en `datos/originales/` y completamos `diccionario.md` y `README.md` · Para cerrar la fase 01 Definir con datos reales sin valores inventados (reemplazado luego por la fuente de `datos.gov.co`).
- 2026-11-17 · Acotamos la pregunta principal al análisis de frecuencia y pérdida económica promedio por tipo de ataque en sectores típicamente PYME usando Kaggle · Global Cybersecurity Threats · Por retroalimentación docente para enfocar el proyecto en cifras concretas y diferenciarlo de E7.

## Limpieza (desde la sesión 4)

- Regla · Filas afectadas · Motivo
- (Pendiente S4) Unificar mayúsculas/minúsculas en `SECTOR` (`Ambiente Y/y Desarrollo Sostenible`), `CLASIFICACIÓN TAXONOMÍA` (`Contenido Dañino`/`dañino`, `Intento de Intrusión`/`intrusión`) y `TIPO DE INCIDENTE` (`Mala Configuración`/`configuración`) · Por confirmar en `02_limpieza.ipynb` · Evitar categorías duplicadas al agrupar.

## Uso de IA

- Inspección del CSV `agi2-ekag` y actualización de `README.md`, `diccionario.md` y `bitacora.md` al nuevo enfoque sectorial en Colombia · Aceptamos la ficha y el diccionario basados en las 9 columnas reales del dataset · Verificamos con Python conteo de filas (4.243), rango de fechas (`2019-03-22` a `2026-11-11`) y valores únicos por columna.
- Redacción inicial de la ficha del proyecto en `README.md` a partir de la pregunta corregida y los documentos previos del equipo · Aceptamos la estructura y marcamos como PENDIENTE los campos que dependían del CSV · Verificamos que no se inventaran fechas ni columnas.
