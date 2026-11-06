# Fricciones de ejecución y desempeño de la inversión pública local

**Autora:** Isis Milagros Roque Tinta · **Vía B:** modelo económico de tesis.

## Pregunta y modelo

¿Cómo afectan las fricciones de implementación a la intensidad elegida por un gobierno local y cuándo se traducen en mayor duración y sobrecosto? Se considera un proyecto que se ejecutará, de alcance y calidad fijos. El municipio elige intensidad constante e > 0 para minimizar K(e;κ) = M + F/e + κe/2. La duración es T = 1/e.

## Resultado principal con condiciones

Con M ≥ 0, F > 0 y κ > 0, el óptimo interior único es e* = √(2F/κ), T* = √(κ/(2F)) y K* = M + √(2Fκ). Bajo la hipótesis estructural κp > 0 y manteniendo capacidad, M y F fijos, más pobreza reduce intensidad y aumenta duración y costo. No es un resultado empírico identificado.

Con igual alcance, calidad, M y F en viabilidad y ejecución, R = log(KA/KV) es positivo si y sólo si κA > κV. La extensión κV = λκA + (1−λ)κ̄, λ ∈ [0,1], κ̄ > 0, distingue dificultad realizada y anticipación. Mejor anticipación acerca R a cero sin alterar la ejecución cuando κA está fija. λ es exógeno.

## Estado del proyecto

| Componente | Estado |
| --- | --- |
| Propuesta y diapositivas del tema | PDFs y fuentes LaTeX revisados |
| Resultados analíticos | Proposiciones, condiciones, demostraciones y extensión expuestas en `slides/final.tex` |
| Figuras y verificaciones | SymPy y 3000 casos numéricos comprobados con `code/verify.py`; figuras reproducibles |
| Revisión de literatura | Diez PDF comparados; siete antecedentes centrales; seguimiento de contratos pendiente |
| Prueba escrita y verificación simbólica | Derivación manuscrita de $R_p$ en `hand/`; otras pruebas escritas y SymPy en las diapositivas; falta trasladarlas al paper |
| Diapositivas finales | `slides/final.tex` y `slides/final.pdf` (26 láminas) |
| Lean y paper final | Mínimo global único de la Proposición 1 comprobado en Lean; resto de la formalización y paper final pendientes |
| Actualización de la entrega | Archivos actualizados mediante rama y pull request |

## Reproducir

Desde la raíz del repositorio:

```bash
python -m pip install -r code/requirements.txt
python code/verify.py
cd proposal
pdflatex -interaction=nonstopmode -halt-on-error proposal.tex
pdflatex -interaction=nonstopmode -halt-on-error proposal.tex
cd ../slides
pdflatex -interaction=nonstopmode -halt-on-error topic.tex
pdflatex -interaction=nonstopmode -halt-on-error topic.tex
pdflatex -interaction=nonstopmode -halt-on-error final.tex
pdflatex -interaction=nonstopmode -halt-on-error final.tex
```

Se incluyen las figuras PDF para compilar las diapositivas incluso antes de reproducirlas. Las fuentes requieren una distribución LaTeX con Beamer, Latin Modern, Babel, microtype y titlesec.

**Archivos todavía en desarrollo:** `paper/` conserva un ejemplo. `hand/` ya incluye una derivación original de $R_p$ y necesita completarse con las demás pruebas. `lean/Proposition1.lean` contiene una prueba compilada, pero todavía no es la contribución integral del paper a AppliedModelingLib.
