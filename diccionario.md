# Diccionario de datos

> Explica cada columna de tu muestra para que otra persona la entienda sin preguntarte. Si no sabes algo, escribe **PENDIENTE:** y qué te falta confirmar.

- **Archivo:** `datos/originales/Gestion_de_Incidentes_agi2-ekag.csv`
- **Fuente y fecha de descarga:** Portal Nacional de Datos Abiertos de Colombia (`datos.gov.co`), conjunto *Gestión de Incidentes* (`https://www.datos.gov.co/Ciencia-Tecnolog-a-e-Innovaci-n/Gesti-n-de-Incidentes/agi2-ekag`), descargado el 2026-11-17.
- **Cada fila es:** Un reporte de incidente cibernético registrado en Colombia con fecha, orden de la entidad, sector, ubicación geográfica, clasificación taxonómica, tipo de incidente e importancia.
- **Filas en la muestra:** 4.243 filas (conjunto completo, 0 valores nulos).
- **Campo que identifica cada fila (clave):** No hay columna de clave única explícita; cada fila se identifica por su posición en el archivo y la combinación de sus atributos.

## Columnas

### FECHA DE SOLICITUD
- Qué significa: Fecha en la que se registró o reportó el incidente cibernético.
- Tipo: fecha
- Unidad o formato: `MM/DD/AAAA HH:MM:SS AM/PM` (en el CSV original).
- Valores válidos: Del `2019-03-22` al `2026-11-11`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### ORDEN DE LA ENTIDAD
- Qué significa: Nivel administrativo o naturaleza de la entidad afectada que reporta el incidente.
- Tipo: texto
- Unidad o formato: Categoría en español.
- Valores válidos: `Nacional`, `Privada`, `Territorial`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### SECTOR
- Qué significa: Sector económico o administrativo al que pertenece la entidad afectada.
- Tipo: texto
- Unidad o formato: Categoría en español (27 valores únicos; presenta variación de mayúsculas en `Ambiente Y/y Desarrollo Sostenible`).
- Valores válidos: `Agricultura y Desarrollo Rural`, `Ambiente Y Desarrollo Sostenible`, `Ambiente y Desarrollo Sostenible`, `Ciencia, Tecnología e Innovación`, `Comercio, Industria y Turismo`, `Cooperación Internacional`, `Cultura`, `Defensa`, `Deporte`, `Educación`, `Estadísticas`, `Función Pública`, `Hacienda y Crédito Público`, `Igualdad`, `Inclusión Social y Reconciliación`, `Interior`, `Justicia y Derecho`, `Minas y Energía`, `Organismos de Control`, `Planeación`, `Presidencia`, `Privado`, `Salud`, `Tecnologías de la Información y Comunicaciones`, `Trabajo`, `Transporte`, `Vivienda, Ciudad y Territorio`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### REGIÓN
- Qué significa: Macroregión geográfica de Colombia donde se ubica la entidad.
- Tipo: texto
- Unidad o formato: Nombre de la región.
- Valores válidos: `Bogotá D.C.`, `Caribe`, `Centro Oriental`, `Centro Sur`, `Eje Cafetero`, `Llanos Orientales`, `Pacífico`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### DIVIPOLA DEPARTAMENTO
- Qué significa: Código oficial DANE (DIVIPOLA) del departamento correspondiente al incidente.
- Tipo: texto / código
- Unidad o formato: Código numérico de 1 a 2 dígitos sin ceros a la izquierda en el CSV (ej. `5`, `8`, `11`, `76`).
- Valores válidos: 33 códigos departamentales de Colombia (`5` a `99`, incluyendo `11` para Bogotá D.C.).
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### DEPARTAMENTO
- Qué significa: Nombre del departamento (o distrito capital) de Colombia donde se registra el incidente.
- Tipo: texto
- Unidad o formato: Nombre oficial del departamento en español.
- Valores válidos: 33 entidades territoriales (32 departamentos y `Bogotá D.C.`).
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### CLASIFICACIÓN TAXONOMÍA
- Qué significa: Categoría general del incidente según la taxonomía de ciberseguridad utilizada.
- Tipo: texto
- Unidad o formato: Categoría en español (12 valores únicos; presenta duplicados por mayúsculas en `Contenido Dañino`/`dañino` e `Intento de Intrusión`/`intrusión`).
- Valores válidos: `Compromiso de Información`, `Contenido Abusivo`, `Contenido Dañino`, `Contenido dañino`, `Disponibilidad`, `Fraude`, `Intento de Intrusión`, `Intento de intrusión`, `Intrusión`, `Obtención de Información`, `Otros`, `Vulnerable`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### TIPO DE INCIDENTE
- Qué significa: Tipo específico de incidente cibernético reportado dentro de la taxonomía.
- Tipo: texto
- Unidad o formato: Categoría en español (27 valores únicos; presenta duplicado por mayúsculas en `Mala Configuración`/`configuración`).
- Valores válidos: `Acceso no Autorizado a Información`, `Compromiso de Aplicaciones`, `Compromiso de Cuenta con Privilegios`, `Compromiso de Cuenta sin Privilegios`, `Configuración de Malware`, `DDoS (Denegación Distribuida de Servicio)`, `Delito de Odio`, `Distribución de Malware`, `DoS (Denegación de Servicio)`, `Escaneo de Redes (Scanning)`, `Explotación de Vulnerabilidades Conocidas`, `Incidente no Clasificado`, `Intento de Acceso con Vulneración de Credenciales`, `Interrupciones`, `Mala Configuración`, `Mala configuración`, `Modificación no Autorizada de Información`, `Phishing`, `Pérdida de Datos`, `Revelación de Información`, `Robo`, `Servidor C&C (Comando y Control)`, `Sistema Infectado`, `Sistema Vulnerable`, `Spam`, `Suplantación`, `Uso no Autorizado de Recursos`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).

### IMPORTANCIA
- Qué significa: Nivel de gravedad o criticidad asignado al incidente reportado.
- Tipo: texto
- Unidad o formato: Categoría ordinal en español.
- Valores válidos: `Solicitud`, `Menor`, `Grave`, `Muy Grave`.
- Si está vacía, significa: No hay valores vacíos en la muestra (0 nulos).
