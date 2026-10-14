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
| Resultados analíticos | Caracterización preliminar y comparativas derivadas |
| Figuras y verificaciones numéricas | Reproducidas por `code/verify.py` |
| Revisión de literatura | Diez PDF comparados; siete antecedentes centrales; seguimiento de contratos pendiente |
| Prueba manuscrita y verificación simbólica | Pendientes |
| Lean, paper final y diapositivas finales | Pendientes |
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
```

Se incluyen las figuras PDF para compilar las diapositivas incluso antes de reproducirlas. Las fuentes requieren una distribución LaTeX con Beamer, Latin Modern, Babel, microtype y titlesec.

**Archivos de la plantilla:** `paper/`, `slides/final.*`, `lean/` y `hand/` conservan ejemplos o instrucciones para el trabajo final. No representan resultados concluidos de este proyecto.
