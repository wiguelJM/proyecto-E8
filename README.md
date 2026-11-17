# Ciberseguridad y pérdidas económicas en sectores PYME

Equipo E8 · Análisis de Datos Básico · Estud-IA (Capa 2)
Integrantes: Juan Caicedo, Diana Erazo, Miguel Ángel Hurtado

> **Cómo llenar este archivo:** borra «Escribe aquí» y responde debajo de cada pregunta. Si todavía no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar. No inventes datos.

## Ficha del proyecto · versión 1

### 1. Usuario y decisión
> ¿Quién usará el resultado (una persona o un área) y qué va a decidir con él?

Responsables de tecnología, gerentes o administradores de pequeñas y medianas empresas (PYMES) en los sectores de comercio, servicios y salud. Con este resultado decidirán qué tipos de ciberataques priorizar al momento de asignar presupuesto y definir medidas de mitigación y protección.

### 2. Pregunta principal
> Una sola pregunta que ayude a tomar esa decisión.

¿Cuáles son los tipos de ciberataques más frecuentes y con mayor pérdida económica promedio en los sectores empresariales típicamente PYME (comercio, servicios y salud)?

### 3. Fuente de datos
> Enlace o nombre de la fuente. ¿Es pública o es una muestra de práctica inventada (sintética)? Si es inventada, dilo aquí.

- **Kaggle · Global Cybersecurity Threats** (fuente pública).
- **PENDIENTE:** agregar el enlace exacto del dataset en Kaggle y confirmar si el archivo en `datos/originales/` corresponde al conjunto completo o a una muestra.

### 4. Qué representa una fila
> Completa la frase: «Cada fila es…». ¿Qué campo distingue una fila de otra?

Cada fila es **PENDIENTE:** confirmar al descargar y revisar el CSV en `datos/originales/` (se espera que represente un incidente o registro de ciberataque por sector, tipo de amenaza y periodo) y definir el campo o clave que distingue una fila de otra.

### 5. Periodo
> ¿Qué fechas cubren los datos?

**PENDIENTE:** confirmar el rango exacto de fechas/años una vez descargado el CSV en `datos/originales/`.

### 6. Cuatro indicadores
> Nombre de cada indicador y, si ya puedes, cómo se calcula (qué se divide entre qué).

1. **Número de incidentes por tipo de ataque:** conteo total de registros agrupados por tipo de ataque (`ransomware`, `phishing`, `malware`, etc.) en los sectores comercio, servicios y salud.
2. **Pérdida económica promedio por tipo de ataque:** suma de la pérdida económica reportada dividida entre el número de incidentes de cada tipo de ataque en los sectores seleccionados.
3. **Pérdida económica total por sector:** suma de las pérdidas económicas agrupadas por sector empresarial (comercio, servicios y salud).
4. **Proporción de incidentes por tipo de ataque y sector:** (número de incidentes de un tipo de ataque en un sector / total de incidentes de ese sector) × 100.

### 7. Fuera de alcance
> Lo que este proyecto NO va a responder.

- No evalúa vulnerabilidades técnicas específicas de modelos de inteligencia artificial (IA) ni diseña sistemas de monitoreo o detección en tiempo real.
- No incluye datos propios o exclusivos de PYMES de Medellín ni encuestas primarias (los sectores comercio, servicios y salud del dataset global se usan como referencia de sectores típicamente PYME).
- No abarca la implementación técnica de controles de seguridad ni auditorías de infraestructura.

## Si alcanzas hoy (para el jueves es obligatorio)

### Dos comparaciones útiles
> Por ejemplo: por mes, por comuna, por categoría.

1. **Por tipo de ataque (`ransomware`, `phishing`, `malware`, etc.):** comparar frecuencia de incidentes frente a pérdida económica promedio.
2. **Por sector empresarial (comercio vs. servicios vs. salud):** comparar si el tipo de ataque más frecuente o más costoso varía entre sectores.

### Tres riesgos de calidad
> ¿Qué podría venir mal en los datos? ¿Qué harías si la fuente falla?

1. **Ausencia de filtro por tamaño de empresa:** el dataset agrupa por sector y no necesariamente separa PYMES de grandes empresas, lo que puede sesgar los promedios de pérdida económica. Mitigación: documentar explícitamente esta limitación en el análisis.
2. **Valores nulos, atípicos o escalas inconsistentes en pérdida económica:** registros sin monto o con valores extremos que distorsionen el promedio. Mitigación: revisar nulos y distribución en `notebooks/02_limpieza.ipynb` y reportar también mediana o rangos si es necesario.
3. **Falla o indisponibilidad de la fuente / cobertura incompleta:** si el dataset no contiene alguno de los sectores esperados o tiene años faltantes, se documentará el alcance real y, de ser necesario, se buscará un conjunto alternativo público de incidentes cibernéticos en Kaggle.

### Mapa de preguntas
- ¿Qué pasó? Identificar qué tipos de ciberataques tienen mayor frecuencia y mayor pérdida económica promedio en los sectores comercio, servicios y salud.
- ¿Dónde o cuándo es distinto? **PENDIENTE:** comparar los resultados entre sectores (comercio, servicios, salud) y, según las columnas disponibles en el CSV, por año o país/región.
- ¿Qué recomendaría y con qué límites? Recomendar a las PYMES de comercio, servicios y salud priorizar sus medidas de prevención frente a los tipos de ataque con mayor frecuencia e impacto económico; con el límite de que las cifras provienen de un dataset global sectorial y no de una muestra exclusiva de PYMES locales.

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
