# Ensayos para Jot Down (jjtales/JD)

Ensayos del autor (Juan José Gómez Cadenas) sobre IA y ciencia para *Jot Down*: `IAilusion.tex`, `IAEspejoDG.tex`, `neutrinos_teoremas.tex`. Leer los anteriores de la serie antes de revisar uno nuevo, para detectar autorrepeticiones.

## Regla de oro: el texto es suyo

- **Sin consultar:** solo arreglos mecánicos: marcado LaTeX, ortografía, tildes (también en nombres: Gómez, Ítaca), puntuación, concordancias, erratas de nombres y datos, sustituciones de tres o cuatro palabras como mucho. Hacerlos y listarlos.
- **Con consulta:** cualquier texto nuevo más largo, reformulación, reordenación o añadido. Dar el texto actual y la propuesta completa (antes/después) y esperar el «sí» explícito. Motivo: evitar watermarks; la obra publicada debe ser íntegramente suya.
- Al proponer texto: frases llanas ancladas en datos; nada de adorno ni «IA lingo». Mejor aún, señalar el problema y dejar que él escriba su versión: suele hacerlo, y la suya es la buena.
- Los coloquialismos en pasajes eruditos son ironía deliberada: no elevarlos de registro.
- No hacer cambios innecesarios (p. ej. «post-docs» se queda así).
- Nunca cuadros de diálogo ni menús de opciones: dudas en texto llano, numeradas, mostrando el pasaje.

## Formato LaTeX

- Artículo pdflatex con el mismo preámbulo que `neutrinos_teoremas.tex`: `T1`, `utf8`, `babel` spanish, `geometry` 2.8 cm, `microtype`, `xurl`, `hyperref` con `hidelinks`; `pdftitle` y `pdfauthor` coherentes con `\title`/`\author`.
- Título con subtítulo: `\title{Título\\[0.4em]\large Subtítulo}`; `\author{Juan José Gómez Cadenas}`; `\date{}`.
- Comillas siempre «» literales en el fuente (nunca `<<>>`: pandoc las deja a pelo en el docx). Comillas internas “ ”.
- Rayas `---`. URLs siempre en `\footnote{\url{…}}`.
- Citas largas en `quotation`; versos en `verse` con `\\`.
- Griego en UTF-8 con `\usepackage{textalpha}` (pandoc se come `\ensuregreek{}`).
- Citas en inglés: traducirlas al español, salvo las literarias (Joyce queda en inglés y en cursiva).

## Protocolo de revisión

1. Dejar el LaTeX compilando.
2. Corregir erratas, ortografía y puntuación (mecánico, sin consultar).
3. Informe: erratas agrupadas por tipo; dudas de contenido numeradas (datos, afirmaciones sobre-rotundas, expresiones sensibles); evaluación con puntos fuertes y débiles concretos, señalando el pasaje.
4. Propuestas **una a una**, con antes/después y una línea sobre qué se pierde. Aplicar solo tras el «sí» y recompilar.
5. El autor retoca el texto entre vueltas: antes de revisar, hacer un diff contra la última versión mía y revisar sus cambios.

Qué valora en la crítica:

- **Artículos-río:** varios temas con estructura circular. El río funciona cuando cada afluente pasa por una misma *lente* (Tamariz en *Ilusión*, el tocayo en *Dorian Gray*, los desconocidos desconocidos y Ítaca en *Neutrinos*). Buscar el afluente que no pasa por la lente y proponer cortarlo o conectarlo.
- Recortar bloques que repiten lo que una cita posterior dice mejor; fundir párrafos de una línea que compiten con los golpes de efecto; quitar adjetivos repetidos.
- Señalar las afirmaciones demasiado rotundas: él las quita sin discutir («no quiero líos»).
- Verificar los datos con fuentes primarias (cifras, fechas, física). Separar los argumentos de las preferencias de estilo, y defender su voz frente a podas genéricas.
- Títulos: paráfrasis con guiño (Soderbergh) más un subtítulo-lente; después, anclar cada palabra del título con un eco en el texto.
- La extensión no es un criterio: JD no tiene límite real.

## Cierre

Compilar con `pdflatex` (dos pasadas) y borrar `.aux`, `.log` y `.out`. Después `pandoc x.tex -o x.docx` y comprobar que el docx conserva título, subtítulo, autor, «» y versos. Commit del tex, el pdf y el docx (mensaje «Título: qué cambió»), y push a `origin/main`. No tocar archivos ajenos sin seguimiento (p. ej. `fermat*`).
