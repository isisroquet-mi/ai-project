# Fricciones de ejecución y desempeño de la inversión pública local

**Isis Milagros Roque Tinta · Modelamiento Económico · Vía B (modelo de tesis)**

## Pregunta

¿Cómo pueden las fricciones asociadas al contexto distrital afectar la velocidad de ejecución y la variación de costos de proyectos de inversión pública local del Perú? La tesis empírica de Christopher Antony Bolo Añorga e Isis Milagros Roque Tinta estudia la relación entre pobreza distrital y esas dos dimensiones, considerando proyecto, territorio, recursos fiscales y capacidad municipal. El modelo es una interpretación teórica condicional; no identifica causalidad.

## Modelo

La municipalidad elige la intensidad constante de un proyecto unitario, $e>0$, y la duración es $T=1/e$. Con costo directo $M\geq0$, costo por periodo $F>0$ y fricción de aceleración $\kappa>0$, resuelve

$$\min_{e>0}\;K(e;\kappa)=M+F/e+\kappa e/2.$$

El benchmark supone $\kappa=\bar\kappa$; la extensión permite $\kappa=\kappa(p,C)$, donde $p$ es pobreza predeterminada y $C$ capacidad municipal.

## Resultado propuesto y condiciones

Si $F>0$, $\kappa(p,C)>0$, $\kappa_p>0$ y $\kappa_C<0$, el óptimo único es $e^*=\sqrt{2F/\kappa}$; la duración es $T^*=\sqrt{\kappa/(2F)}$ y el costo actualizado teórico es $K^A=M+\sqrt{2F\kappa}$. Mayor $p$ reduce $e^*$ y aumenta $T^*$ y $K^A$ sólo bajo el supuesto $\kappa_p>0$. Manteniendo fijo el monto previsto $K^V=M+\sqrt{2F\kappa^V}$, el indicador $R=\log(K^A/K^V)$ es positivo exactamente cuando $\kappa>\kappa^V$. La correspondencia con el avance financiero anual y el costo registrado por el MEF requiere supuestos de medición.

## Estado al 14 de octubre de 2026

| Componente | Estado |
|---|---|
| [Documento del tema](proposal/proposal.pdf) y [diapositivas](slides/topic.pdf) | Preparados para la presentación de 20 minutos del 14/10 |
| Presentación final | Pendiente para noviembre; archivos de ejemplo de la plantilla aún sin adaptar |
| Artículo final, simulaciones, Lean y apéndice manuscrito | Pendientes; los ejemplos de la plantilla no son resultados de este proyecto |

Las fuentes LaTeX están junto a los PDF. Las interacciones relevantes con IA figuran en [prompts.md](prompts.md).
