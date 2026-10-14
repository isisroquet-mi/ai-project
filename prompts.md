# Registro de consultas relevantes a IA — presentación del tema

Las siguientes citas literales se conservaron de la conversación. La derivación se revisó aparte; las predicciones empíricas aún no están verificadas.

## 1. Usar la tesis (conversación previa)

**Prompt literal de la estudiante**

> voy a hacer la exposición del tema, guiate del silabo porfaa. usare mi tesis como base, podrías decirme si es factible o lo vez muy dificil o que recomeidas? ten en cuenta que tengo sustentació aca de 2 semanas sobre mi tesis que es justo lo que subi hasta ese punto, pero no q me recomiendas

**Respuesta literal relevante de IA**

> Imagina que la municipalidad o el responsable del proyecto decide una intensidad de ejecución $e$: cuánto esfuerzo administrativo, coordinación, supervisión, personal, etc. dedica a mover el proyecto.
>
> Normalizamos el tamaño del proyecto a 1. Si se ejecuta con intensidad $e$, su duración es $T(e)=1/e$.
>
> $K(e;p,C)=\frac{F}{e}+\frac{\kappa(p,C)}{2}e$.
>
> $e^*(p,C)=\sqrt{\frac{2F}{\kappa(p,C)}}$.

**Evaluación:** Se usó como punto de partida, sin asumir que reproduce literalmente la tesis. Se añadió $M$ y una fricción prevista $\kappa^V$ para formular la condición de sobrecosto. Se revisaron la FOC, la segunda derivada y los límites; $\kappa_p>0$ es supuesto y $R>0$ requiere $\kappa>\kappa^V$.

## 2. Alcance teórico (conversación previa)

**Prompt literal de la estudiante**

> O sea, o sea, una consulta. Como tal, el sinagogo lo que me piden es hacer el modelo teórico de la tesis. es así, ¿no? Entonces eso, o sea, cuando tú haces el modelo teórico, tú sabes que un modelo teórico debe tener supuestos. Entonces, como tal no es como hacer tal cual lo que se hace en la tesis, ¿no?

**Respuesta literal relevante de IA**

> puedes tomar el mecanismo económico central, también podrías llamarlo canal económico o mecanismo causal/teórico que quieres formalizar.

**Evaluación:** Se cotejó con el sílabo y las indicaciones: la Vía B pide formular el modelo económico que sustenta la tesis y escribir formalmente el problema del agente. La regresión de la tesis queda separada de la teoría.

## 3. Entrega del 14/10/2026

**Prompt literal de la estudiante**

> quiero que realices la entrega 1 SOLO LO QUE SE PRESENTA MAÑANA porfa, considerando lo que piden en las indicaciones y en el silabo, mi tema es mi tesis, usa lo que me propusiste el modelo. Además, se cuidadoso con las fórmulas matemáticas usa latex y que los slides se sean formales acaddemicos usa tonos azules porfa beamer y te abri perfil de github

**Aclaración literal**

> esa es mi tesis

**Respuesta pertinente (resumen de trabajo, no transcripción literal):** Se prepararon el documento y las diapositivas con modelo de intensidad, benchmark, supuesto distrital, FOC, conjetura, literatura revisada y plan/riesgos; también se actualizó README. Se contrastó con la tesis del 27/09/2026. La búsqueda de antecedentes es acotada y no demuestra originalidad exhaustiva.



---

# Registro adicional: revisión de propuesta, diapositivas y literatura

# Registro de interacción con IA (parcial)

Sesión: 13 de octubre de 2026, hora de Lima. Herramienta: ChatGPT / Codex.

Este archivo conserva material realmente disponible en esta sesión. No reconstruye conversaciones ausentes. Al incorporarlo al repositorio, añadirlo al registro previo; no sustituir el historial anterior.

## Solicitud actual: fragmentos literales

> haz que tenga sentido y que la redaccion de la propuesta se entienda, acepto tud sugerencias para mejorar mi trabajo y/o detallarlo mas.

> Considerando eso vuelve a realizar el proposal y el topic slide con las recomendaciones

> desarrolla un poco más lo de literatura que se vea completo e interesante porfa no floro, pero informacion clara y de valor agreagado al trabajo

La solicitud incluyó además las indicaciones del curso y revisiones anteriores. A continuación se conserva íntegro el texto adjunto suministrado por la usuaria, sin atribuirlo a una conversación nueva.

## Respuesta previa suministrada por la usuaria (en bruto)

Sí. Este `proposal.pdf` está **bastante más sólido que una propuesta promedio** porque ya no es solo una idea: tienes agente, timing, problema de optimización, benchmark, supuesto que relajas, FOC, solución, comparativas estáticas, vínculo con las variables empíricas, búsqueda de antecedentes y plan de verificación/Lean. Además, cumple prácticamente punto por punto lo que ahora exige el profesor. proposal proposal

Para que pase de “bien armado” a **un trabajo realmente fuerte**, yo mejoraría sobre todo la lógica económica, no agregaría matemática por agregar. Hay unas 5 mejoras importantes.

### 1. Formaliza tus supuestos: ahora están, pero escondidos en el texto

Esta es probablemente la mejora más rentable. Actualmente todos los supuestos están en los párrafos de la sección 2: proyecto unitario, intensidad constante, \(F>0\), \(M\geq0\), \(\kappa>0\), \(\kappa_p>0\), \(\kappa_C<0\), mismo \(M,F\) entre viabilidad y ejecución, etc. proposal

Yo los convertiría explícitamente en algo como:

\[
\textbf{A1.}\quad \text{El proyecto ya es viable, tiene alcance fijo y debe ejecutarse.}
\]

\[
\textbf{A2.}\quad e>0,\qquad T(e)=\frac1e.
\]

\[
\textbf{A3.}\quad M\ge0,\quad F>0,\quad \kappa>0.
\]

\[
\textbf{A4.}\quad
\kappa=\kappa(p,C),\qquad
\kappa_p>0,\qquad
\kappa_C<0.
\]

\[
\textbf{A5.}\quad
M,F \text{ permanecen constantes entre viabilidad y ejecución.}
\]

Esto te ayuda por dos razones. Primero, el trabajo final exige supuestos numerados. Segundo, cuando presentes una proposición puedes decir con precisión: “Bajo A1–A5...”.

---

## 2. Te falta justificar formalmente por qué el agente minimiza costos

Este punto sí lo añadiría.

Tu problema es:

\[
\min_{e>0}K(e;\kappa).
\]

Está perfectamente construido, pero falta explicar **por qué no aparece el beneficio social del proyecto**.

Lo solucionas con una sola oración:

> “El proyecto ya fue declarado viable y su ejecución está dada. Condicional a realizarlo y manteniendo fijo su alcance, el gobierno local elige la intensidad de ejecución que minimiza el costo total de implementación.”

Eso hace que tu problema deje de parecer una función elegida por conveniencia matemática y tenga una microfundamentación económica clara.

Incluso puedes pensar que existe un beneficio \(B\) fijo:

\[
\max_e \{B-K(e;\kappa)\}.
\]

Como \(B\) no depende de \(e\),

\[
\arg\max_e[B-K(e;\kappa)]
=
\arg\min_e K(e;\kappa).
\]

No necesitas poner todo esto en el proposal, pero **sí deberías saberlo para responder si te preguntan**.

---

## 3. Hay una sutileza importante con \(\kappa^V\) que conviene corregir

Esta es la pregunta más peligrosa que podría hacerte el profesor.

Tú dices que en viabilidad se usa una fricción prevista \(\kappa^V\), y luego, en ejecución, se conoce

\[
\kappa(p,C).
\]

La brecha genera el sobrecosto. proposal

Pero podrían preguntarte:

> “Si pobreza y capacidad municipal son observables antes de ejecutar el proyecto, ¿por qué no fueron incorporadas ya en \(\kappa^V\)?”

Ese punto merece una respuesta.

Yo cambiaría ligeramente la interpretación. No diría que en viabilidad “no conocen \(p,C\)”. Diría:

> **En viabilidad existe información incompleta sobre cómo las condiciones del distrito se traducirán efectivamente en fricciones de ejecución.**

Entonces:

\[
\kappa^V
=
\text{fricción anticipada con la información disponible en viabilidad}
\]

mientras que

\[
\kappa^A=\kappa(p,C)
\]

es la fricción efectivamente enfrentada durante la ejecución.

Mucho mejor todavía sería escribir:

\[
\kappa^V=E[\kappa^A\mid\mathcal I_V],
\]

al menos como una posible extensión.

No necesariamente lo metas mañana porque agrega incertidumbre al modelo. Pero en el trabajo final esta sería una **extensión muy natural y potente**.

Y por ahora yo cambiaría tu frase:

> “La brecha entre \(\kappa^V\) y la fricción realizada representa información o restricciones no incorporadas plenamente…”

por:

> “La brecha entre \(\kappa^V\) y la fricción realizada recoge restricciones cuya magnitud no fue anticipada completamente al momento de la viabilidad.”

Es más defendible.

---

## 4. Convierte tus resultados en una proposición/conjetura formal

Actualmente tienes todos los ingredientes, pero están dispersos. proposal

Yo pondría:

### Conjetura 1 — Fricciones de ejecución

Bajo A1–A4, existe un único óptimo interior

\[
e^*(p,C)
=
\sqrt{\frac{2F}{\kappa(p,C)}}.
\]

Además,

\[
\frac{\partial e^*}{\partial p}<0,
\qquad
\frac{\partial T^*}{\partial p}>0,
\qquad
\frac{\partial K^A}{\partial p}>0,
\]

y, si \(\kappa_C<0\),

\[
\frac{\partial e^*}{\partial C}>0,
\qquad
\frac{\partial T^*}{\partial C}<0,
\qquad
\frac{\partial K^A}{\partial C}<0.
\]

### Conjetura 2 — Sobrecosto

Manteniendo \(M,F\) constantes,

\[
R=\log\left(\frac{K^A}{K^V}\right)>0
\iff
\kappa^A>\kappa^V.
\]

Eso ya parece mucho más un **paper teórico**.

Además tienes una distinción muy bonita que conviene verbalizar:

\[
p\uparrow\Rightarrow\kappa\uparrow
\]

es **supuesto**.

Mientras que

\[
\kappa\uparrow
\Rightarrow
e^*\downarrow,\;
T^*\uparrow,\;
K^A\uparrow
\]

es **resultado**.

Y

\[
\kappa^A>\kappa^V
\Rightarrow R>0
\]

es otro **resultado**.

Esa separación es crucial.

---

## 5. Ojo con decir que \(\kappa_p>0\) “no es causal”

Tu texto actualmente dice que son “supuestos condicionales [...] no hechos identificados ni una relación causal estimada”. proposal

La idea es correcta, pero ajustaría la frase.

Dentro de **tu modelo estructural**, asumir

\[
\kappa_p>0
\]

sí establece una relación causal teórica: manteniendo todo lo demás constante, aumentar \(p\) eleva \(\kappa\).

Lo que **no estás diciendo** es que esa relación haya sido identificada causalmente en el mundo real.

Yo escribiría:

> “Estos signos constituyen supuestos estructurales del mecanismo propuesto; no son resultados empíricos ni implican que la tesis haya identificado causalmente el efecto de la pobreza sobre las fricciones.”

Eso es más preciso.

---

## 6. Define también \(e^V\): te ordena muchísimo la historia del sobrecosto

Ahora introduces \(\kappa^V\) y luego directamente

\[
K^V=M+\sqrt{2F\kappa^V}.
\]

proposal

Yo haría simétricos los dos momentos.

### Viabilidad

\[
e^V=\sqrt{\frac{2F}{\kappa^V}},
\]

\[
K^V=M+\sqrt{2F\kappa^V}.
\]

### Ejecución

\[
e^A=\sqrt{\frac{2F}{\kappa^A}},
\]

\[
K^A=M+\sqrt{2F\kappa^A}.
\]

Y entonces:

\[
R=
\log\left(
\frac{M+\sqrt{2F\kappa^A}}
{M+\sqrt{2F\kappa^V}}
\right).
\]

La lógica queda preciosa:

\[
\boxed{
\kappa^V
\rightarrow e^V
\rightarrow K^V
}
\]

frente a

\[
\boxed{
\kappa^A
\rightarrow e^A
\rightarrow K^A.
}
\]

Y de ahí:

\[
R>0
\iff
\kappa^A>\kappa^V.
\]

---

# La mejora que realmente podría volver interesante el trabajo final

Tu modelo actual es un **muy buen benchmark**, pero te diría algo importante: para el trabajo final de 8–20 páginas, probablemente necesitarás **un paso conceptual adicional**. No porque el actual esté mal, sino porque la parte matemática central se resuelve muy rápido.

La extensión que yo escogería no sería meter veinte variables. Sería profundizar **una sola cosa: la previsión de las fricciones**.

Por ejemplo, introduce un parámetro

\[
\lambda\in[0,1]
\]

que mida cuánto de la fricción distrital se incorpora en el presupuesto de viabilidad:

\[
\kappa^V
=
\lambda\kappa(p,C)
+
(1-\lambda)\bar\kappa.
\]

Interpretación:

- \(\lambda=1\): las condiciones locales se anticipan perfectamente;
- \(\lambda=0\): el presupuesto usa una fricción genérica;
- \(0<\lambda<1\): incorporación parcial.

Entonces puedes estudiar:

\[
R(p,C,\lambda)
=
\log
\frac{M+\sqrt{2F\kappa(p,C)}}
{M+\sqrt{2F[\lambda\kappa(p,C)+(1-\lambda)\bar\kappa]}}.
\]

Y aparece una pregunta mucho más interesante:

> **¿La pobreza está asociada con sobrecostos porque eleva las fricciones o porque esas fricciones además son subestimadas en la etapa de viabilidad?**

Ese sí me parece un excelente puente hacia tu tesis.

Podrías incluso encontrar que si

\[
\lambda=1,
\]

entonces

\[
\kappa^V=\kappa^A
\quad\Rightarrow\quad
R=0.
\]

Es decir:

\[
\boxed{
\text{una fricción alta por sí sola no genera sobrecosto si fue anticipada correctamente.}
}
\]

Eso ya lo intuyes en tu proposal cuando dices que una fricción mayor solo produce sobrecosto positivo si excede la prevista. proposal

Pero convertirlo en una variable de **capacidad de anticipación** \(\lambda\) podría ser el resultado fuerte del paper.

Ahí tendrías una historia mucho más rica:

\[
\text{pobreza/contexto}
\rightarrow
\text{fricción de ejecución}
\rightarrow
\text{velocidad}
\]

pero para el sobrecosto:

\[
\text{fricción realizada}
-
\text{fricción anticipada}
\rightarrow
\text{sobrecosto}.
\]

Eso separa dos fenómenos que tu tesis mide:

- **baja velocidad** puede surgir simplemente porque ejecutar es difícil;
- **sobrecosto** requiere además que esa dificultad no haya sido completamente incorporada en el costo inicial.

Ese es, para mí, el insight teórico más interesante que está escondido dentro de tu modelo actual.

---

## Tu sección de literatura sí necesita fortalecerse

La sección 4 cumple el requisito, pero todavía es la parte menos potente del proposal. proposal

Yo mejoraría dos cosas.

Primero, no diría:

> “La investigación sobre optimización tiempo-costo sí estudia…”

porque tienes citado un trabajo.

Mejor:

> “Mohammadi Atashgah et al. (2022) formalizan un trade-off tiempo–costo en proyectos…”

Segundo, deja explícita **tu brecha en una sola oración**:

> **La literatura revisada contiene por separado la heterogeneidad municipal y el trade-off tiempo–costo, pero la búsqueda preliminar no identificó un modelo que conecte fricciones distritales, una decisión óptima de intensidad y la diferencia entre costo previsto y realizado.**

Eso es muchísimo más fuerte.

Además, como tu tesis ya contiene antecedentes sobre capacidad municipal, retrasos y costos, puedes usar esa literatura para respaldar por qué \(\kappa\) no es un parámetro inventado al azar: tu marco muestra que geografía, capacidad municipal y características del proyecto son relevantes para implementación. TRABAJO-FINAL_27_09_26 2

Para mañana no necesitas convertir la revisión en un survey. Pero para el trabajo final sí ampliaría esa sección.

---

## Un detalle matemático que está muy bien y deberías explotar

Has hecho algo correcto que quizá no estás valorando: no te limitas a la FOC.

Tienes

\[
K_{ee}=\frac{2F}{e^3}>0
\]

y además

\[
K(e)\rightarrow\infty
\]

cuando \(e\downarrow0\) y \(e\rightarrow\infty\). proposal

Eso te permite decir con seguridad:

1. existe un minimizador;
2. es interior;
3. es único;
4. la FOC lo caracteriza globalmente.

Eso es mejor que simplemente resolver una ecuación.

En la exposición explícalo.

---

## Algo que no cambiaría

Mantendría sí o sí el párrafo donde reconoces que

\[
e^*=\frac1{T^*}
\]

no es literalmente el “avance financiero acumulado por año” de tu tesis. proposal

Ese caveat hace que el modelo sea **más serio, no más débil**.

No intentes ocultarlo.

Incluso diría:

> “El modelo pretende explicar la dirección del mecanismo, no imponer una equivalencia exacta entre una intensidad física teórica y el indicador financiero observado.”

Muy defendible.

---

## Y una cosa de presentación/formato

Hay pequeños artefactos visibles en el PDF extraído, como `modica`, `nanciero`, `ComopK(e)` y algunos guiones extraños. Puede ser solo un problema de extracción de fuentes del PDF, pero **revisa el PDF renderizado real** antes de entregar. Si efectivamente se visualizan así, corrígelo.

También pondría el nombre completo de las variables una vez:

\[
p\in[0,1]:\text{ incidencia de pobreza},
\]

\[
C>0:\text{ índice de capacidad municipal},
\]

\[
\kappa>0:\text{ parámetro de fricción}.
\]

Eso reduce preguntas de notación.

---

### Si tuvieras poco tiempo esta noche

No intentaría reescribir el proposal entero. Haría estas cinco correcciones:

1. **Numerar A1–A5.**
2. Añadir la frase de **proyecto viable/obligatorio**, justificando la minimización.
3. Presentar **Conjetura 1 y Conjetura 2**.
4. Definir \(e^V\) junto con \(K^V\).
5. Cerrar antecedentes con una oración explícita de **brecha teórica**.

Y dejaría la extensión con \(\lambda\) como:

> “Posible extensión del trabajo final: endogeneizar el grado en que las fricciones locales son incorporadas durante la viabilidad.”

Eso te permite presentar mañana un modelo **simple, completo y demostrable**, pero a la vez mostrar que sabes hacia dónde puede crecer.

Mi evaluación sería: **la base actual ya es buena para la entrega de mañana; el salto a un gran trabajo final está en distinguir cuidadosamente “fricción alta” de “fricción no anticipada”.** Esa distinción es donde veo la contribución teórica más interesante de tu propuesta.

## Salidas de esta sesión: propuesta (LaTeX en bruto)

```latex
\documentclass[11pt,a4paper]{article}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{babel}
\babelprovide[main,import]{spanish}
\usepackage{lmodern,amsmath,amssymb,booktabs,enumitem,microtype}
\usepackage[margin=1in]{geometry}
\usepackage{xcolor,hyperref}
\definecolor{navy}{HTML}{17324D}
\hypersetup{colorlinks=true,urlcolor=navy,linkcolor=navy,citecolor=navy}
\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt}
\setlist{nosep,leftmargin=*,topsep=3pt}
\usepackage{titlesec}
\titleformat{\section}{\large\bfseries\color{navy}}{\thesection.}{.5em}{}
\titlespacing*{\section}{0pt}{9pt}{4pt}
\newcommand{\repo}{\url{https://github.com/isisroquet-mi/ai-project}}
\begin{document}
\begin{center}
{\Large\bfseries\color{navy} Fricciones de ejecución y desempeño\\de la inversión pública local}\par
\vspace{3pt}
Isis Milagros Roque Tinta\quad$\cdot$\quad Vía B: modelo económico de tesis\\
Universidad del Pacífico\quad$\cdot$\quad Modelamiento Económico\\
Presentación del tema: 14 de octubre de 2026\\[-2pt]
{\small\repo}
\end{center}
\section{Pregunta y vía}
La tesis de Bolo Añorga y Roque Tinta (2026) estudia cómo se relaciona la pobreza distrital con la velocidad de ejecución y la variación de costos de proyectos de inversión pública local en el Perú. Su estrategia empírica considera características del proyecto, condiciones territoriales, recursos fiscales y capacidad municipal. Este proyecto sigue la \textbf{Vía B}: construir un modelo teórico estilizado que sustente un mecanismo económico de esa relación.

La pregunta teórica es: \textbf{¿cómo afectan las fricciones de implementación a la intensidad elegida por un gobierno local y cuándo se traducen en mayor duración y sobrecosto?} La distinción central es que una fricción alta puede elevar el costo de ejecutar, mientras que un sobrecosto requiere una diferencia respecto de lo anticipado. Las predicciones son condicionales al mecanismo propuesto y no identifican causalmente el efecto empírico de la pobreza.

\section{Línea base y supuesto que se modifica}
\textbf{A1. Agente y objetivo.} Se considera un gobierno local que ejecutará un proyecto viable, de alcance y calidad fijos. Condicional a realizarlo, elige la intensidad que minimiza su costo de implementación. Se abstrae de la decisión de aprobar el proyecto y de los beneficios sociales de entregarlo antes. La viabilidad por sí sola no obliga a ejecutar: la ejecución dada es un supuesto del modelo.

\textbf{A2. Tecnología.} El trabajo total se normaliza a una unidad. El municipio elige una intensidad constante $e>0$ y completa el proyecto en $T(e)=1/e$. No hay suspensiones ni una cota superior de intensidad en esta versión.

\textbf{A3. Costos.} $M\geq0$ es el costo base independiente de $e$ y $F>0$ el gasto de permanencia por unidad de tiempo, como administración y supervisión de una obra abierta. Acelerar exige coordinación y recursos adicionales con costo por periodo $\kappa e^2/2$, donde $\kappa>0$. Por tanto,
\begin{equation}
\min_{e>0} K(e;\kappa)
=M+\int_0^{1/e}\left(F+\frac{\kappa}{2}e^2\right)dt
=M+\underbrace{\frac{F}{e}}_{\text{permanencia}}+
\underbrace{\frac{\kappa}{2}e}_{\text{aceleración acumulada}}.
\label{eq:problem}
\end{equation}
Una mayor intensidad ahorra permanencia, pero encarece la aceleración. La forma cuadrática representa costos marginales crecientes de acelerar, no una estimación de costos municipales.

\textbf{A4. Heterogeneidad.} La línea base supone $\kappa=\bar\kappa>0$, común a todos los distritos. Se modifica esta homogeneidad permitiendo $\kappa^A=\kappa(p,C)>0$, diferenciable en el interior de $p\in[0,1]$, $C>0$, con $\kappa_p>0$ y $\kappa_C<0$. $p$ es pobreza distrital predeterminada y $C$ capacidad municipal. Estos signos son supuestos estructurales del canal: el contexto asociado a $p$ dificulta acelerar y la capacidad facilita hacerlo. La literatura motiva estudiar fricciones, pero no demuestra necesariamente estos signos.

\textbf{A5. Previsión y secuencia.} En viabilidad se usa $\kappa^V>0$ para registrar un costo previsto. Antes de elegir $e$, el municipio conoce $\kappa^A$ y puede ajustar su intensidad. Luego se realiza el proyecto. Se mantienen $M,F$, alcance y calidad entre etapas. La brecha $\kappa^A-\kappa^V$ recoge restricciones cuya magnitud no se anticipó completamente, aunque $p$ y $C$ fueran observables.
\newpage
\section{Resultados esperados y condición de primer orden}
\textbf{Conjetura 1. Intensidad, duración y costo.} Bajo A1--A4, para cada fricción positiva existe un único óptimo interior. Su caracterización y los resultados esperados son
\begin{align}
K_e(e;\kappa)&=-\frac{F}{e^2}+\frac{\kappa}{2}=0,
&K_{ee}(e;\kappa)&=\frac{2F}{e^3}>0,\label{eq:foc}\\
e^*(p,C)&=\sqrt{\frac{2F}{\kappa(p,C)}},
&T^*(p,C)&=\sqrt{\frac{\kappa(p,C)}{2F}},\label{eq:optimal}\\
K^A(p,C)&=M+\sqrt{2F\kappa(p,C)}.&&\label{eq:cost}
\end{align}
La convexidad estricta y $K(e)\to\infty$ cuando $e\downarrow0$ y $e\to\infty$ sustentan existencia, interioridad y unicidad. En la línea base, $e_0=\sqrt{2F/\bar\kappa}$ es común. Con heterogeneidad, las decisiones difieren entre distritos. Para $x\in\{p,C\}$, las comparativas estáticas propuestas son
\begin{equation}
e_x^*=-\frac{\sqrt{2F}}{2\kappa^{3/2}}\kappa_x,
\qquad T_x^*=\frac{\kappa_x}{2\sqrt{2F\kappa}},
\qquad K_x^A=\frac{F\kappa_x}{\sqrt{2F\kappa}}.
\label{eq:derivatives}
\end{equation}
Así, $e_p^*<0$, $T_p^*>0$, $K_p^A>0$ y los signos se invierten para $C$. El vínculo $p\mapsto\kappa$ se supone; el vínculo $\kappa\mapsto(e^*,T^*,K^A)$ se deriva. Se comparan proyectos con los mismos $M,F$ y, al variar $p$, se mantiene $C$ fijo.

\textbf{Conjetura 2. Sobrecosto respecto de viabilidad.} Bajo A1--A5, el presupuesto representa el costo optimizado bajo la fricción anticipada:
\begin{equation}
e^V=\sqrt{\frac{2F}{\kappa^V}},\qquad
K^V=M+\sqrt{2F\kappa^V},\qquad
R=\log\!\left(\frac{K^A}{K^V}\right).
\end{equation}
Como el costo optimizado aumenta estrictamente con la fricción,
\begin{equation}
\boxed{R>0\ \Longleftrightarrow\ \kappa^A>\kappa^V.}
\label{eq:overrun}
\end{equation}
Si $\kappa^V$ permanece fija, $R_p=K_p^A/K^A>0$. Si la previsión también cambia con $p$, debe considerarse
$R_p=K_p^A/K^A-K_p^V/K^V$; su signo requiere supuestos adicionales. Por ello, una mayor fricción no implica automáticamente un sobrecosto positivo.

\textbf{Extensión acotada: incorporación de condiciones locales.} Se propone estudiar
\begin{equation}
\kappa^V(\lambda)=\lambda\kappa^A+(1-\lambda)\bar\kappa,
\qquad \lambda\in[0,1],\quad\bar\kappa>0.
\label{eq:lambda}
\end{equation}
$\lambda$ es exógeno: cero corresponde a una referencia genérica y uno a anticipación completa. Es una regla determinista de escenarios, no una expectativa racional ni una decisión óptima de información. Manteniendo $\kappa^A$ fija, se espera
\begin{equation}
R_\lambda=-\frac{F(\kappa^A-\bar\kappa)}{K^V\sqrt{2F\kappa^V}}.
\end{equation}
Si $\kappa^A>\bar\kappa$, aumentar $\lambda$ reduce $R$; si $\kappa^A<\bar\kappa$, la variación negativa converge a cero desde abajo. En ambos casos, $\lambda=1$ implica $R=0$, manteniendo $e^*$ y $T^*$ sin cambios. La demostración debe cubrir ambos signos de la brecha.

\textbf{Puente con la tesis.} El anexo 3 mide velocidad como avance financiero acumulado (devengado sobre costo actualizado) dividido por años desde el primer devengado. La variación de costos es el logaritmo del costo actualizado sobre monto viable. $e^*=1/T^*$ coincide con la primera medida únicamente al completar el proyecto y si el gasto es proporcional al progreso, sin desfases entre inicio físico y financiero. El costo actualizado es un registro, no necesariamente un costo final. Las predicciones deben interpretarse considerando censura y cambios de alcance.
\newpage
\section{Literatura relacionada y espacio de la propuesta}
La revisión conecta capacidad local, costos de acelerar y discrepancias entre presupuesto y ejecución.

\textbf{Capacidad local y absorción de recursos.} Loayza, Rigolini y Calvo-González (2014) combinan cuentas fiscales y características municipales del Perú. La adecuación del presupuesto a la capacidad local es el principal determinante de la capacidad de gasto, lo que motiva incorporar $C$. Su versión de trabajo de 2011 también encuentra una asociación positiva entre pobreza y proporción ejecutada en categorías de gasto, bajo controles (pp. 13--14 de su numeración interna). Por tanto, no demuestra $\kappa_p>0$: gastar una mayor proporción del presupuesto y completar un proyecto más rápido son resultados distintos. Esta diferencia justifica estudiar el desempeño por proyecto sin dar por probado un efecto adverso de la pobreza.

Gurara, Kpodar, Presbitero y Tessema (2021) encuentran una relación en U entre inversión pública y costos unitarios de carreteras en países en desarrollo. El umbral a partir del cual los costos aumentan es menor donde la eficiencia es baja. Este resultado motiva estudiar restricciones de absorción que encarecen ejecutar a mayor escala. Aquí se adapta esa intuición a la intensidad de un proyecto; no se usa esa relación macroeconómica para calibrar nuestra función cuadrática.

\textbf{Tiempo, preparación y costo.} Espinoza y Presbitero (2022) estudian más de 4000 proyectos del Banco Mundial en 135 economías emergentes y en desarrollo. Cerca del 60\% registra al menos un año de retraso. La preparación ex ante y la calidad institucional se relacionan con una ejecución más oportuna. El estudio motiva separar implementación y previsión inicial, pero no deriva nuestra decisión de intensidad local. Además, $T^*$ es duración total; sólo equivale a retraso al compararlo con un plazo previsto.

Mohammadi Atashgah et al. (2022) optimizan tiempo y costo bajo incertidumbre con Monte Carlo, un algoritmo de búsqueda y análisis de sobregiro. El intercambio tiempo--costo ya está formalizado. Aquí se elige una intensidad continua para obtener una solución analítica y comparativas estáticas, prescindiendo de redes de actividades y restricciones financieras.

\textbf{Explicaciones alternativas de la brecha.} Flyvbjerg, Holm y Buhl (2002) documentan subestimación sistemática del costo inicial en 258 proyectos de transporte y argumentan que la explicación más consistente es la presentación estratégica de cifras. Esto impide interpretar toda brecha como sorpresa técnica. Nuestro modelo considera restricciones insuficientemente anticipadas y excluye incentivos políticos de subestimación; el contraste delimita su alcance.

\textbf{Búsqueda realizada.} El 13/10/2026 se consultaron la tesis, fichas editoriales, la versión de Loayza et al. del Banco Mundial, el texto de JISE, resúmenes en la página de Presbitero, la ficha del FMI y el resumen y registro de Flyvbjerg et al. en arXiv. Se buscaron \emph{municipal spending capacity}, \emph{public investment delays}, \emph{absorptive capacity}, \emph{time--cost trade-off} y \emph{cost underestimation}. El registro adjunto precisa materiales y enlaces.

\textbf{Brecha delimitada.} En la búsqueda preliminar no se identificó una integración explícita de fricción distrital, intensidad óptima y previsión de viabilidad que genere conjuntamente duración y variación de costos. Se propone esa integración y la distinción entre costo alto y fricción no anticipada. Antes de afirmar originalidad fuerte se revisarán textos completos pendientes, apéndices y trabajos citantes. La búsqueda no descarta un modelo equivalente.
\newpage
\section{Plan de demostración, simulación y riesgos}
\textbf{Demostrar.} Completar la prueba de existencia y unicidad de la Conjetura 1, derivar las comparativas estáticas y demostrar la equivalencia de la Conjetura 2 con todas sus condiciones. Para la extensión, demostrar $R_\lambda<0$ si $\kappa^A>\bar\kappa$, $R_\lambda>0$ si $\kappa^A<\bar\kappa$ y $R(1)=0$. No se promete endogenizar $\lambda$ en esta entrega.

\textbf{Simular y verificar.} Variar $\kappa^A/\bar\kappa\in[0.5,1.5]$ y $\lambda\in\{0,0.5,1\}$. Graficar el costo según $e$, las razones $e^*/e_0$, $T^*/T_0$ y $R$. Verificar FOC, mínimo global, derivadas por diferencias finitas y casos de costo menor, igual y mayor que el previsto. El script adjunto reproduce los gráficos con $M=10$, $F=2$, $\bar\kappa=1$ y comprueba identidades numéricas. Son unidades arbitrarias sin calibración al Perú. Se añadirá verificación simbólica con SymPy; las simulaciones no son evidencia empírica.

\textbf{Formalizar en Lean.} Primero, la positividad de $e^*$ y el mínimo global: para $q=e^*>0$ y $e>0$,
\begin{equation}
K(e;\kappa)-K(q;\kappa)=\frac{\kappa}{2e}(e-q)^2\geq0,
\qquad q^2=\frac{2F}{\kappa}.
\end{equation}
La igualdad exige $e=q$. Luego se formalizarán las comparaciones para $\kappa_2>\kappa_1>0$, la equivalencia de sobrecosto y la extensión. El orden de parámetros permite evitar inicialmente las derivadas. Se seguirá el flujo de AppliedModelingLib del curso, registrando resultados probados, hipótesis adicionales y obstáculos. Lean está pendiente.

\textbf{Riesgos y respuesta.} El principal riesgo es de medición: avance financiero y físico pueden diferir, y el costo actualizado puede incorporar cambios de alcance. Se documentarán esos límites. Si $\kappa_p>0$ no describe los datos o $p$ sólo representa restricciones absorbidas por controles, el modelo no respaldará la hipótesis empírica sobre pobreza. El riesgo técnico es formalizar raíces y logaritmos con sus dominios; la identidad anterior permite empezar sin suponer la conclusión.

\textbf{Estado.} Caracterización analítica preliminar y gráficos numéricos listos. Quedan pendientes la prueba manuscrita completa, SymPy, Lean y ampliar literatura. Se mantendrá un agente y un canal: reducir fricciones mejora la ejecución; anticiparlas mejor reduce la discrepancia presupuestaria sin acelerar por sí mismo la obra.

\vspace{2pt}
{\small\textbf{Referencias consultadas}\par}
\begingroup\small\setlength{\parskip}{3pt}
Bolo Añorga, C. A. y Roque Tinta, I. M. (2026). \emph{Pobreza y desempeño en la inversión pública en el Perú}. Plan de tesis, 27/09, introducción y anexo 3.

Espinoza, R. y Presbitero, A. F. (2022). Delays in public investment projects. \emph{International Economics, 172}, 297--310. \href{https://doi.org/10.1016/j.inteco.2021.10.002}{doi:10.1016/j.inteco.2021.10.002}.

Flyvbjerg, B., Holm, M. K. S. y Buhl, S. L. (2002). Underestimating costs in public works projects: Error or lie? \emph{Journal of the American Planning Association, 68}(3), 279--295. \href{https://doi.org/10.1080/01944360208976273}{doi:10.1080/01944360208976273}. Copia del autor: \href{https://arxiv.org/abs/1303.6604}{arXiv:1303.6604}, depositada en 2013.

Gurara, D., Kpodar, K., Presbitero, A. F. y Tessema, D. (2021). On the capacity to absorb public investment: How much is too much? \emph{World Development, 145}, 105525. \href{https://doi.org/10.1016/j.worlddev.2021.105525}{doi:10.1016/j.worlddev.2021.105525}. Versión previa: FMI WP/20/48 (2020).

Loayza, N. V., Rigolini, J. y Calvo-González, O. (2014). More than you can handle: Decentralization and spending ability of Peruvian municipalities. \emph{Economics \& Politics, 26}(1), 56--78. \href{https://doi.org/10.1111/ecpo.12026}{doi:10.1111/ecpo.12026}. Versión previa: Banco Mundial WPS5763 (2011).

Mohammadi Atashgah, K., Ghousi, R., Monir Abbasi, A. y Tayefi Nasrabadi, A. (2022). Developing a model for time-cost trade-off optimization problem considering overdraft issue in uncertain environments. \emph{Journal of Industrial and Systems Engineering, 14}(3), 259--279. \href{https://www.jise.ir/article_154961.html}{Texto y ficha editorial}.
\endgroup
\end{document}

```

## Salidas de esta sesión: diapositivas (LaTeX en bruto)

```latex
\documentclass[11pt,aspectratio=169]{beamer}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{babel}
\babelprovide[main,import]{spanish}
\usepackage{lmodern,amsmath,amssymb,booktabs,array,tikz}
\definecolor{navy}{HTML}{17324D}
\definecolor{teal}{HTML}{168F8A}
\definecolor{pale}{HTML}{EDF5F7}
\setbeamercolor{normal text}{fg=navy,bg=white}
\setbeamercolor{structure}{fg=teal}
\setbeamercolor{frametitle}{fg=navy}
\setbeamercolor{title}{fg=navy}
\setbeamercolor{block title}{fg=navy,bg=pale}
\setbeamercolor{block body}{fg=navy,bg=pale}
\setbeamerfont{frametitle}{size=\Large,series=\bfseries}
\setbeamerfont{title}{size=\LARGE,series=\bfseries}
\setbeamerfont{block title}{series=\bfseries}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{itemize item}{\color{teal}\small$\bullet$}
\setbeamertemplate{footline}{\hfill\color{navy}\scriptsize\insertframenumber\,/\,\inserttotalframenumber\hspace{6mm}\par\vspace{3mm}}
\setbeamersize{text margin left=9mm,text margin right=9mm}
\hypersetup{colorlinks=true,urlcolor=teal}
\newcommand{\notefoot}[1]{\vfill{\scriptsize\color{navy!75}#1}}
\newcommand{\lead}[1]{\begin{block}{}#1\end{block}}
\title{Fricciones de ejecución y desempeño\\de la inversión pública local}
\subtitle{Modelo económico de tesis - Vía B}
\author{Isis Milagros Roque Tinta}
\institute{Universidad del Pacífico - Modelamiento Económico}
\date{14 de octubre de 2026\\[6pt]\small\url{https://github.com/isisroquet-mi/ai-project}}
\begin{document}
\begin{frame}\titlepage\end{frame}

\begin{frame}{1. Pregunta de la tesis y pregunta teórica}
\textbf{Tesis:} ¿cómo se relaciona la pobreza distrital con la velocidad de ejecución y la variación de costos de proyectos de inversión pública local en el Perú?
\par\vspace{5mm}
\textbf{Vía B:} formular un mecanismo económico que sustente esa pregunta.
\lead{¿Cómo cambia la intensidad elegida cuando ejecutar es más difícil y cuándo aparece un sobrecosto respecto de lo previsto?}
\begin{itemize}
\item La tesis compara proyectos con controles territoriales, fiscales y de capacidad.
\item El modelo estudia una decisión y sus predicciones bajo supuestos explícitos.
\end{itemize}
\notefoot{Fuente: Bolo Añorga y Roque Tinta (2026), introducción y anexo 3.}
\end{frame}

\begin{frame}{2. El municipio elige cómo ejecutar el proyecto}
\begin{itemize}\setlength{\itemsep}{4mm}
\item \textbf{A1.} Proyecto viable que se ejecutará, de alcance y calidad fijos. El municipio minimiza su costo de implementación.
\item \textbf{A2.} Trabajo total normalizado a una unidad. Intensidad constante $e>0$ y duración $T(e)=1/e$.
\item \textbf{A3.} Costo base $M\geq0$, gasto de permanencia $F>0$ por periodo y fricción $\kappa>0$.
\end{itemize}
\lead{La decisión es la intensidad de ejecución. La aprobación del proyecto y el valor social de entregarlo antes quedan fuera de este problema.}
\notefoot{La ejecución dada es un supuesto analítico. La viabilidad, por sí sola, no implica ejecución obligatoria.}
\end{frame}

\begin{frame}{2. Acelerar ahorra tiempo, pero requiere recursos}
\[
K(e;\kappa)=M+\int_0^{1/e}\left(F+\frac{\kappa e^2}{2}\right)dt
\]
\par\vspace{2mm}
\[
\boxed{\min_{e>0}K(e;\kappa)=M+\underbrace{\frac{F}{e}}_{\text{permanencia}}+
\underbrace{\frac{\kappa e}{2}}_{\text{aceleración acumulada}}}
\]
\begin{columns}[T,onlytextwidth]
\begin{column}{.46\textwidth}
\textbf{Al aumentar $e$}\\[2mm]
La obra permanece abierta menos tiempo y se ahorra administración y supervisión.
\end{column}
\begin{column}{.46\textwidth}
\textbf{Al aumentar $\kappa$}\\[2mm]
La coordinación y los recursos necesarios para acelerar resultan más costosos.
\end{column}
\end{columns}
\notefoot{La forma cuadrática por periodo representa costos marginales crecientes de acelerar.}
\end{frame}

\begin{frame}{2. El supuesto que cambia: fricción común a fricción local}
\textbf{Línea base homogénea}\qquad $\kappa=\bar\kappa>0$.
\par\vspace{4mm}
\textbf{A4. Heterogeneidad distrital}
\[
\kappa^A=\kappa(p,C)>0,\qquad\kappa_p>0,\quad\kappa_C<0.
\]
\begin{itemize}\setlength{\itemsep}{2mm}
\item $p\in[0,1]$: pobreza distrital predeterminada.
\item $C>0$: capacidad municipal.
\item Más capacidad permite acelerar con menor costo de coordinación.
\end{itemize}
\lead{\textbf{Se supone:} cómo el contexto altera $\kappa$.\\
\textbf{Se deriva:} cómo $\kappa$ altera intensidad, duración y costo.}
\notefoot{Diferenciabilidad en el interior. Al variar $p$, se mantienen $C,M,F$ fijos. El signo $\kappa_p>0$ requiere contraste empírico.}
\end{frame}

\begin{frame}{2. Viabilidad y ejecución usan fricciones distintas}
\begin{columns}[T,onlytextwidth]
\begin{column}{.47\textwidth}
\textbf{Viabilidad: previsión}\\[3mm]
Se usa $\kappa^V>0$ para presupuestar.
\[
e^V=\sqrt{\frac{2F}{\kappa^V}},\qquad
K^V=M+\sqrt{2F\kappa^V}.
\]
\end{column}
\begin{column}{.47\textwidth}
\textbf{Ejecución: ajuste}\\[3mm]
Se conoce $\kappa^A$ antes de elegir $e$.
\[
e^*=\sqrt{\frac{2F}{\kappa^A}},\qquad
K^A=M+\sqrt{2F\kappa^A}.
\]
\end{column}
\end{columns}
\par\vspace{4mm}
\lead{\textbf{A5.} Mismo alcance, calidad, $M$ y $F$ entre etapas. La diferencia recoge fricciones cuya magnitud no se anticipó completamente.}
\notefoot{La pobreza puede ser observable antes del proyecto sin que todas sus condiciones de implementación estén bien presupuestadas.}
\end{frame}

\begin{frame}{3. La condición de primer orden caracteriza el óptimo}
\begin{columns}[c,onlytextwidth]
\begin{column}{.44\textwidth}
\[
K_e=-\frac{F}{e^2}+\frac{\kappa}{2}=0
\]
\[
\boxed{e^*=\sqrt{\frac{2F}{\kappa}}}
\]
\textbf{Óptimo único:}\\[2mm]
$K_{ee}=2F/e^3>0$.\\[2mm]
$K(e)\to\infty$ en ambos extremos de $e>0$.
\end{column}
\begin{column}{.54\textwidth}
\includegraphics[width=\linewidth]{figures/cost_intensity.pdf}
\end{column}
\end{columns}
\notefoot{Escenario ilustrativo: $F=2$. Puntos: mínimos de cada curva. El costo mostrado excluye el componente fijo $M$.}
\end{frame}

\begin{frame}{3. Conjetura 1: intensidad, duración y costo}
\textbf{Bajo A1--A4, para $F>0$, $M\geq0$, $\kappa(p,C)>0$:}
\[
e^*=\sqrt{\frac{2F}{\kappa}},\quad
T^*=\sqrt{\frac{\kappa}{2F}},\quad
K^A=M+\sqrt{2F\kappa}.
\]
\par\vspace{2mm}
\centering
\renewcommand{\arraystretch}{1.45}
\begin{tabular}{lccc}
\toprule
Cambio supuesto & Intensidad & Duración & Costo\\
\midrule
$p$ aumenta, $\kappa_p>0$ & Disminuye & Aumenta & Aumenta\\
$C$ aumenta, $\kappa_C<0$ & Aumenta & Disminuye & Disminuye\\
\bottomrule
\end{tabular}
\par\vspace{3mm}
\[
\frac{\partial e^*}{\partial p}
=-\frac{\sqrt{2F}}{2\kappa^{3/2}}\kappa_p<0.
\]
\notefoot{Las comparaciones mantienen constantes los otros parámetros. Los signos sobre pobreza son condicionales a A4.}
\end{frame}

\begin{frame}{3. Mayor fricción reduce intensidad y prolonga duración}
\centering
\includegraphics[width=.84\textwidth,height=5.3cm,keepaspectratio]{figures/speed_duration.pdf}
\lead{Si la fricción es 1.5 veces la referencia, $e^*/e_0\approx0.816$ y $T^*/T_0\approx1.225$.}
\notefoot{Escenarios teóricos, sin datos ni calibración al Perú. Las razones son $(\kappa^A/\bar\kappa)^{-1/2}$ y $(\kappa^A/\bar\kappa)^{1/2}$.}
\end{frame}

\begin{frame}{3. Conjetura 2: la condición exacta de sobrecosto}
\textbf{Bajo A1--A5, con $M,F$ iguales en ambas etapas:}
\[
R=\log\left(\frac{M+\sqrt{2F\kappa^A}}
{M+\sqrt{2F\kappa^V}}\right),\qquad
\boxed{R>0\iff\kappa^A>\kappa^V.}
\]
\lead{Una obra puede ser lenta y costosa, pero ajustarse a su presupuesto si sus dificultades fueron anticipadas.}
\begin{itemize}\setlength{\itemsep}{3mm}
\item Si $\kappa^V$ está fija, aumentar $p$ eleva $R$ bajo A4.
\item Si el presupuesto también incorpora el cambio de $p$, hay que estudiar ambos costos.
\end{itemize}
\notefoot{La duración total se convierte en retraso sólo al compararla con un plazo previsto.}
\end{frame}

\begin{frame}{3. Extensión: cuánto se incorpora en la previsión}
\[
\kappa^V(\lambda)=\lambda\kappa^A+(1-\lambda)\bar\kappa,
\qquad\lambda\in[0,1].
\]
\begin{itemize}\setlength{\itemsep}{3mm}
\item $\lambda=0$: presupuesto basado en una fricción genérica.
\item $0<\lambda<1$: incorporación parcial de condiciones locales.
\item $\lambda=1$: anticipación completa y $R=0$.
\end{itemize}
\lead{Si $\kappa^A>\bar\kappa$, una mayor incorporación reduce $R$.\\
La intensidad y la duración realizadas siguen dependiendo de $\kappa^A$.}
\notefoot{$\lambda$ es exógeno. Esta regla determinista permite comparar escenarios, no representa una expectativa racional ni una elección de información.}
\end{frame}

\begin{frame}{3. Anticipar mejor reduce la diferencia presupuestaria}
\centering
\includegraphics[width=.82\textwidth,height=4.9cm,keepaspectratio]{figures/overrun.pdf}
\lead{Con fricción superior a la referencia, $R$ baja al aumentar $\lambda$. Por debajo de la referencia, la variación negativa se acerca a cero.}
\notefoot{Escenario: $M=10$, $F=2$, $\bar\kappa=1$, unidades arbitrarias. $R$ se mide en logaritmos y no directamente en porcentajes.}
\end{frame}

\begin{frame}{3. El modelo y las medidas de la tesis}
\vspace{2mm}
\renewcommand{\arraystretch}{1.35}
\begin{tabular}{p{.37\textwidth}p{.55\textwidth}}
\toprule
\textbf{Modelo} & \textbf{Tesis: anexo 3}\\
\midrule
$e^*=1/T^*$ & (Devengado / costo actualizado) dividido por años desde el primer devengado.\\
$R=\log(K^A/K^V)$ & Logaritmo del costo actualizado sobre monto viable.\\
\bottomrule
\end{tabular}
\par\vspace{4mm}
\lead{La velocidad coincide sólo con gasto proporcional al progreso, proyecto completado y fechas físicas y financieras alineadas.}
\begin{itemize}
\item El costo actualizado puede incorporar cambios de alcance y no ser final.
\item Los proyectos en ejecución requieren tratar la censura.
\end{itemize}
\notefoot{Predicciones cualitativas: la equivalencia con registros administrativos requiere validación.}
\end{frame}

\begin{frame}{4. Literatura: capacidad de gasto y costo de ejecutar}
\textbf{Loayza, Rigolini y Calvo-González (2014), Perú}
\begin{itemize}
\item La adecuación del presupuesto a la capacidad local explica capacidad de gasto.
\item Su versión de trabajo encuentra mayor proporción ejecutada con más pobreza en categorías de gasto, bajo controles.
\end{itemize}
\par\vspace{3mm}
\textbf{Gurara et al. (2021), carreteras en países en desarrollo}
\begin{itemize}
\item Relación en U entre inversión pública y costos unitarios.
\item La baja eficiencia reduce el umbral a partir del cual los costos aumentan.
\end{itemize}
\lead{Estos trabajos motivan estudiar capacidad y fricciones. Su evidencia no establece el signo $\kappa_p>0$ de nuestro modelo.}
\notefoot{Loayza: publicación de 2014 y Banco Mundial WPS5763 (2011), pp. 13--14. Gurara: publicación de 2021 y FMI WP/20/48 (2020).}
\end{frame}

\begin{frame}{4. Literatura: duración y previsión presupuestaria}
\textbf{Espinoza y Presbitero (2022)}\\[1mm]
Más de 4000 proyectos en 135 países. Cerca del 60\% tiene al menos un año de retraso. La preparación inicial y las instituciones importan para los plazos.
\par\vspace{4mm}
\textbf{Mohammadi Atashgah et al. (2022)}\\[1mm]
Optimización tiempo--costo bajo incertidumbre, simulación y restricciones de sobregiro. El intercambio básico ya existe en esta literatura.
\par\vspace{4mm}
\textbf{Flyvbjerg, Holm y Buhl (2002)}\\[1mm]
Subestimación sistemática en 258 proyectos de transporte. Los autores favorecen una explicación de presentación estratégica de costos.
\lead{Nuestro mecanismo separa dificultades de ejecutar y previsión incompleta. La subestimación estratégica es una explicación alternativa que queda fuera del modelo.}
\end{frame}

\begin{frame}{4. Búsqueda realizada y contribución delimitada}
\textbf{Materiales consultados el 13/10/2026}
\begin{itemize}\setlength{\itemsep}{2mm}
\item Tesis, fichas editoriales y versión previa del Banco Mundial.
\item Texto de JISE, resúmenes en la página de Presbitero y ficha del FMI.
\item Registro y resumen de Flyvbjerg et al. en arXiv, copia de un artículo publicado.
\end{itemize}
\lead{Integrar una fricción distrital, una decisión óptima de intensidad y una previsión de viabilidad para explicar conjuntamente duración y variación de costos.}
\textbf{Antes de afirmar originalidad fuerte:} ampliar textos completos pendientes, apéndices y trabajos citantes.
\notefoot{Se buscaron capacidad de gasto municipal, retrasos de inversión pública, capacidad de absorción, intercambio tiempo--costo y subestimación de costos.}
\end{frame}

\begin{frame}{5. Plan de demostración, simulación y Lean}
\begin{itemize}\setlength{\itemsep}{4mm}
\item \textbf{Demostrar:} óptimo único, comparativas estáticas, condición exacta $R>0$ y efecto de $\lambda$ para ambas direcciones de la brecha.
\item \textbf{Simular:} $\kappa^A/\bar\kappa\in[0.5,1.5]$ y $\lambda\in\{0,0.5,1\}$. El script adjunto reproduce los gráficos y verifica resultados numéricos. SymPy es el siguiente paso.
\item \textbf{Lean:} caracterización del mínimo, orden de resultados y condición de sobrecosto, con dominios explícitos.
\end{itemize}
\[
K(e;\kappa)-K(q;\kappa)=\frac{\kappa}{2e}(e-q)^2\geq0,
\qquad q=\sqrt{2F/\kappa}.
\]
\notefoot{La identidad ofrece una ruta de prueba algebraica. Lean y la demostración manuscrita completa están pendientes.}
\end{frame}

\begin{frame}{5. Riesgos y alcance de la interpretación}
\textbf{Riesgo principal: medición}\\[1mm]
El avance financiero puede separarse del físico. El costo actualizado puede incluir cambios de alcance.
\par\vspace{4mm}
\textbf{Riesgo del mecanismo}\\[1mm]
El signo $\kappa_p>0$ puede no describir los datos o desaparecer al considerar otros controles.
\par\vspace{4mm}
\textbf{Respuesta prevista}\\[1mm]
Documentar límites y mantener las conclusiones condicionales. Formalizar raíces y logaritmos con todos sus dominios.
\lead{Reducir la fricción puede mejorar la ejecución. Anticiparla mejor puede reducir la diferencia presupuestaria sin modificar la duración realizada.}
\end{frame}

\appendix
\begin{frame}{Referencias consultadas (1/2)}
\small
\begin{itemize}\setlength{\itemsep}{4mm}
\item Bolo Añorga, C. A. y Roque Tinta, I. M. (2026). \emph{Pobreza y desempeño en la inversión pública en el Perú}. Plan de tesis, 27/09.
\item Loayza, N. V., Rigolini, J. y Calvo-González, O. (2014). More than you can handle: Decentralization and spending ability of Peruvian municipalities. \emph{Economics \& Politics, 26}(1), 56--78.\\\href{https://doi.org/10.1111/ecpo.12026}{doi:10.1111/ecpo.12026}. Versión previa: WPS5763 (2011).
\item Gurara, D., Kpodar, K., Presbitero, A. F. y Tessema, D. (2021). On the capacity to absorb public investment: How much is too much? \emph{World Development, 145}, 105525.\\\href{https://doi.org/10.1016/j.worlddev.2021.105525}{doi:10.1016/j.worlddev.2021.105525}. Versión previa: FMI WP/20/48 (2020).
\end{itemize}
\end{frame}

\begin{frame}{Referencias consultadas (2/2)}
\small
\begin{itemize}\setlength{\itemsep}{4mm}
\item Espinoza, R. y Presbitero, A. F. (2022). Delays in public investment projects. \emph{International Economics, 172}, 297--310.\\\href{https://doi.org/10.1016/j.inteco.2021.10.002}{doi:10.1016/j.inteco.2021.10.002}. Versión previa: SSRN (2021).
\item Mohammadi Atashgah, K., Ghousi, R., Monir Abbasi, A. y Tayefi Nasrabadi, A. (2022). Developing a model for time-cost trade-off optimization problem considering overdraft issue in uncertain environments. \emph{Journal of Industrial and Systems Engineering, 14}(3), 259--279.\\\href{https://www.jise.ir/article_154961.html}{Ficha y texto completo}.
\item Flyvbjerg, B., Holm, M. K. S. y Buhl, S. L. (2002). Underestimating costs in public works projects: Error or lie? \emph{Journal of the American Planning Association, 68}(3), 279--295.\\\href{https://doi.org/10.1080/01944360208976273}{doi:10.1080/01944360208976273}. Copia depositada en \href{https://arxiv.org/abs/1303.6604}{arXiv} en 2013.
\end{itemize}
\end{frame}
\end{document}

```

## Evaluación y comprobaciones de esta sesión

- Se aceptó la minimización condicionada a ejecución y se aclaró que viabilidad no significa ejecución obligatoria.
- Se aceptó la separación entre fricción realizada y anticipada. La mejora de previsión se mantiene exógena, no se describe como endogenización de información.
- Se corrigió la lectura de Loayza: su versión de trabajo encuentra más proporción ejecutada en categorías de gasto con más pobreza, bajo controles. No se usa para afirmar que κp > 0 esté demostrado.
- Se distinguieron duración total y retraso, y costo actualizado y costo final.
- Se verificaron numéricamente FOC, identidad del mínimo global, orden de resultados, derivadas y ambas direcciones del efecto de λ. El script y las figuras están en el paquete.
- Se compilaron los PDF y se revisaron sus páginas renderizadas. SymPy, Lean y manuscrito están pendientes.
- El registro de literatura identifica qué se leyó y qué requiere acceso o revisión adicional. La búsqueda no establece originalidad exhaustiva.


## Actualización de literatura — 13/10/2026

Solicitud literal de la usuaria:

mejora el 4. Búsqueda realizada y contribución delimitada, te subi papers por si te sirven para mejorar el punto 4 de la diapo topic y/o del porposal

Comentario del asistente durante la revisión:

Encontré un antecedente más cercano de lo que indicaba la versión anterior: Gurara y sus coautores incluyen un modelo teórico de capacidad de absorción y costos. Ajustaré la contribución para reconocerlo y precisar qué añade tu propuesta al estudiar la intensidad de un proyecto y la diferencia entre fricción prevista y realizada.

Redacción final incorporada en la propuesta:

```latex
\section{Búsqueda realizada y contribución delimitada}
\textbf{Búsqueda y criterio de comparación.} A la búsqueda inicial en Banco Mundial, FMI, JISE, arXiv y páginas editoriales se añadió, el 13/10/2026, la revisión de los diez PDF proporcionados. Se examinaron planteamientos, especificaciones y resultados pertinentes; siete son antecedentes centrales. Se comparó unidad de análisis, decisión del agente, costos, duración y tratamiento de la previsión. El registro adjunto documenta versiones, páginas y los tres trabajos complementarios. Esta revisión permite delimitar un aporte respecto del conjunto examinado, sin acreditar originalidad exhaustiva.

\textbf{Capacidad municipal y desempeño.} Loayza, Rigolini y Calvo-González (2014) estudian la proporción del presupuesto ejecutada por municipios peruanos. La publicación completa confirma que personal profesional y educación se asocian con mayor ejecución; la pobreza tiene asociación positiva significativa en gasto corriente y de capital, pero no en el agregado (p.\ 64). Esto motiva incorporar capacidad municipal, pero no prueba $\kappa_p>0$: ejecución presupuestal municipal y velocidad por proyecto son variables distintas.

Presbitero (2016) encuentra que proyectos iniciados durante expansiones de inversión pública tienen menor probabilidad de una evaluación satisfactoria; el efecto es relativamente pequeño y menor en países pobres y con escasez de capital. Su resultado respalda estudiar límites de absorción, sin establecer que pobreza implique peor desempeño. Gambina y Mazzola (2025) analizan duración de proyectos europeos mediante regresiones y modelos de supervivencia. Calidad institucional y densidad poblacional se asocian con ejecución más rápida, mientras que mayor PIB por habitante se asocia con mayor duración. El contexto importa, pero no admite un único signo por nivel de desarrollo.

\textbf{Antecedente teórico próximo: fricciones y costos.} Gurara et al. (2020, sección 2, pp.\ 4--6) ya formalizan la minimización de costos de un contratista bajo incertidumbre de producción. La capacidad de absorción depende del tamaño del programa de inversión y genera costos adicionales; su análisis empírico encuentra una relación en U entre inversión y costos unitarios. Nuestra propuesta se diferencia en el agente y la decisión: un municipio elige $e$ para un proyecto de alcance fijo, con permanencia $F/e$ y aceleración acumulada $\kappa e/2$. Se derivan duración y costo optimizado y se compara la fricción prevista con la realizada. No se atribuye novedad a introducir fricciones en una función de costos.

\textbf{Tiempo, costo y presupuesto inicial.} Mohammadi Atashgah et al. (2022, pp.\ 262--264) ya presentan objetivos de tiempo y costo, modos de ejecución, precedencias y costos directos e indirectos; incorporan incertidumbre y análisis de sobregiro. Aquí se simplifica esa estructura a una intensidad continua para obtener comparativas analíticas. Espinoza y Presbitero (2022) relacionan retrasos con preparación inicial e instituciones; su especificación empírica no determina nuestra intensidad óptima. Flyvbjerg, Holm y Buhl (2002) documentan subestimación sistemática y favorecen una explicación estratégica. Esa alternativa queda fuera del mecanismo de anticipación incompleta: una brecha observada no identifica por sí sola su causa.

\textbf{Contribución propuesta.} En los planteamientos examinados no se identificó exactamente la combinación de $\kappa(p,C)$, intensidad óptima y comparación $\kappa^A$--$\kappa^V$ de este modelo. El aporte propuesto es integrarlos en un mecanismo transparente: una fricción alta eleva duración y costo; el sobrecosto exige que supere la anticipada. La regla exógena $\lambda$ permite separar mejora de ejecución y mejora de previsión. Se trata de una síntesis y adaptación por evaluar, no de un primer modelo general de tiempo--costo. La revisión tampoco identifica causalmente $\kappa_p>0$ ni calibra la función cuadrática. Como continuación, se contrastará esta formulación con modelos de contratos y cambios de diseño citados por Gurara et al.
```
