# Incidentes cibernéticos por sector en Colombia

Equipo E8 · Análisis de Datos Básico · Estud-IA (Capa 2)
Integrantes: Juan Caicedo, Diana Erazo, Miguel Ángel Hurtado

> **Cómo llenar este archivo:** borra «Escribe aquí» y responde debajo de cada pregunta. Si todavía no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar. No inventes datos.

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado (una persona o un área) y qué va a decidir con él?

Responsables de seguridad digital, áreas de TI o gestión de riesgo de entidades y sectores productivos en Colombia (como Minas y Energía, Agricultura y Desarrollo Rural, Salud, Comercio, Industria y Turismo, entre otros). Con este resultado decidirán qué tipos de incidentes cibernéticos priorizar en sus acciones de prevención, monitoreo y capacitación según su sector.

### 2. Pregunta principal
> Una sola pregunta que ayude a tomar esa decisión.

¿Cuáles son los tipos de incidentes cibernéticos más frecuentes y de mayor gravedad (`IMPORTANCIA`) según el sector en Colombia?

### 3. Fuente de datos
> Enlace o nombre de la fuente. ¿Es pública o es una muestra de práctica inventada (sintética)? Si es inventada, dilo aquí.

- **Portal Nacional de Datos Abiertos (`datos.gov.co`) · Gestión de Incidentes (`agi2-ekag`)** (fuente pública): https://www.datos.gov.co/Ciencia-Tecnolog-a-e-Innovaci-n/Gesti-n-de-Incidentes/agi2-ekag
- Conjunto completo descargado en `datos/originales/Gestion_de_Incidentes_agi2-ekag.csv` (4.243 filas, 9 columnas).

### 4. Qué representa una fila
> Completa la frase: «Cada fila es…». ¿Qué campo distingue una fila de otra?

Cada fila es un reporte de incidente cibernético registrado con su fecha (`FECHA DE SOLICITUD`), orden de la entidad (`ORDEN DE LA ENTIDAD`), sector (`SECTOR`), ubicación (`REGIÓN`, `DIVIPOLA DEPARTAMENTO`, `DEPARTAMENTO`), taxonomía (`CLASIFICACIÓN TAXONOMÍA`), tipo de incidente (`TIPO DE INCIDENTE`) y gravedad (`IMPORTANCIA`). No existe una columna de identificador único; cada fila se distingue por su posición en el archivo y la combinación de sus atributos.

### 5. Periodo
> ¿Qué fechas cubren los datos?

Del **2019-03-22** al **2026-11-11** (`FECHA DE SOLICITUD`).

### 6. Cuatro indicadores
> Nombre de cada indicador y, si ya puedes, cómo se calcula (qué se divide entre qué).

1. **Total de incidentes por sector:** conteo de reportes (`COUNT(*)`) agrupado por `SECTOR`.
2. **Proporción de incidentes graves y muy graves por sector (%):** `(incidentes con IMPORTANCIA IN ('Grave', 'Muy Grave') en el sector / total de incidentes del sector) * 100`.
3. **Frecuencia por clasificación taxonómica y tipo de incidente:** conteo de filas (`COUNT(*)`) agrupado por `CLASIFICACIÓN TAXONOMÍA` y `TIPO DE INCIDENTE` dentro de cada `SECTOR`.
4. **Distribución porcentual por orden de entidad y región (%):** `(incidentes por ORDEN DE LA ENTIDAD o REGIÓN / total de incidentes del sector o del conjunto) * 100`.

### 7. Fuera de alcance
> Lo que este proyecto NO va a responder.

- No calcula pérdidas económicas en dinero ni cantidad de usuarios afectados (el conjunto de datos no incluye esas variables).
- No clasifica ni segmenta empresas por tamaño (PYMES vs. grandes empresas); el análisis es por `SECTOR` y `ORDEN DE LA ENTIDAD` (`Nacional`, `Territorial`, `Privada`).
- No evalúa vulnerabilidades técnicas de modelos de IA ni implementa sistemas de monitoreo en tiempo real.

## Si alcanzas hoy (para el jueves es obligatorio)

### Dos comparaciones útiles
> Por ejemplo: por mes, por comuna, por categoría.

1. **Por sector (`SECTOR`):** comparar volumen de incidentes y porcentaje de casos `Grave` / `Muy Grave` entre sectores (por ejemplo, `Minas y Energía`, `Agricultura y Desarrollo Rural`, `Salud`, `Comercio, Industria y Turismo` y `Privado`).
2. **Por tipo de incidente (`TIPO DE INCIDENTE`) y año (`FECHA DE SOLICITUD`):** comparar qué amenazas predominan en cada sector y cómo evolucionan entre 2019 y 2026.

### Tres riesgos de calidad
> ¿Qué podría venir mal en los datos? ¿Qué harías si la fuente falla?

1. **Inconsistencias de mayúsculas/minúsculas en categorías:** hay etiquetas duplicadas por capitalización en `SECTOR` (`Ambiente Y Desarrollo Sostenible` vs. `Ambiente y Desarrollo Sostenible`), `CLASIFICACIÓN TAXONOMÍA` (`Contenido Dañino` vs. `Contenido dañino`, `Intento de Intrusión` vs. `Intento de intrusión`) y `TIPO DE INCIDENTE` (`Mala Configuración` vs. `Mala configuración`). Mitigación: normalizar texto en `notebooks/02_limpieza.ipynb`.
2. **Sesgo de reporte entre entidades públicas y privadas:** predominan reportes de entidades de orden `Nacional` o `Territorial` sobre el orden `Privada`, lo que puede reflejar obligación de reporte más que exposición real. Mitigación: desagregar siempre por `ORDEN DE LA ENTIDAD` y documentar el límite.
3. **Indisponibilidad o cambio de esquema en `datos.gov.co`:** si el portal cambia columnas o falla, se trabaja sobre la copia local congelada en `datos/originales/Gestion_de_Incidentes_agi2-ekag.csv` para mantener reproducibilidad.

### Mapa de preguntas
- ¿Qué pasó? Identificar los tipos de incidentes cibernéticos más frecuentes y su nivel de importancia en los distintos sectores de Colombia.
- ¿Dónde o cuándo es distinto? Comparar diferencias entre sectores (`SECTOR`), regiones y departamentos (`REGIÓN`, `DEPARTAMENTO`), orden de la entidad (`ORDEN DE LA ENTIDAD`) y años (`2019`–`2026`).
- ¿Qué recomendaría y con qué límites? Recomendar controles y priorización de respuesta según los incidentes predominantes y más graves de cada sector; con el límite de que los registros dependen de incidentes reportados y no miden impacto financiero ni tamaño de empresa.

## Archivos del proyecto

| Archivo o carpeta | Qué contiene |
|---|---|
| [diccionario.md](diccionario.md) | Qué significa cada columna de la muestra |
| [bitacora.md](bitacora.md) | Decisiones y por qué; uso de IA |
| `datos/originales/` | La muestra tal como se descargó (no se modifica) |
| `consultas/` | Consultas SQL comentadas (sesión 3) |
| `notebooks/` | Cuadernos de Colab (sesiones 3 a 5) |
| `tablero/` | Capturas y enlace del tablero (sesión 6) |

## Reglas del repositorio

- Es **público**: nada de datos personales (nombres, cédulas, teléfonos, correos, direcciones), contraseñas ni llaves.
- Lo que está en `datos/originales/` no se modifica: se guarda tal como se descargó.
- Cada commit dice en su mensaje **qué** se decidió y **por qué**.

---

Proyecto desarrollado en Estud-IA · Capa 2 · Análisis de Datos.
