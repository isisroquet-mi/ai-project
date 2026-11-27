# Fricciones de ejecución y desempeño de la inversión pública local

**Autora:** Isis Milagros Roque Tinta. **Vía B:** modelo económico motivado por una propuesta anterior de tesis.

## Pregunta y modelo

¿Cómo cambia la intensidad de ejecución si ejecutar un proyecto municipal resulta más difícil y cuándo aparece un sobrecosto con respecto a la previsión? El municipio ejecutará una obra de alcance fijo y elige una intensidad constante e > 0 para minimizar K(e;κ) = M + F/e + κe/2. La duración es T = 1/e.

## Resultados y condiciones

Con M ≥ 0, F > 0 y κ > 0, la intensidad óptima global única es e* = √(2F/κ); su duración es T* = √(κ/(2F)) y el costo óptimo es K* = M + √(2Fκ). Los signos respecto de pobreza y capacidad dependen de los supuestos κp > 0 y κC < 0, manteniendo M, F y la otra característica constantes; no son estimaciones causales.

Para el mismo proyecto, con alcance, calidad, M y F iguales antes y después, R = log(KA/KV) es positivo si y solo si la fricción realizada κA supera la prevista κV. La extensión κV = λκA + (1−λ)κ̄, con λ entre cero y uno, distingue dificultad de ejecución y anticipación. λ es exógeno y no modifica la decisión realizada cuando κA permanece fija.

## Estado para el trabajo final

| Componente | Estado |
| --- | --- |
| Propuesta y diapositivas | Fuentes LaTeX y PDF conservados |
| Artículo | Fuente LaTeX y PDF redactados, nueve páginas de cuerpo y bibliografía aparte |
| Literatura | Ocho antecedentes citados, con estado de documento de trabajo señalado para Gurara et al. |
| Pruebas | Dos proposiciones con demostraciones completas; extensión y derivada Rp explicadas |
| Código | SymPy y 3000 configuraciones numéricas, tres figuras reproducibles mediante python code/verify.py |
| Manuscrito | Cinco hojas originales: Rp y cuatro hojas con las demás derivaciones; Apéndice A con imágenes, títulos, reglas y condiciones |
| Lean | Véase Apéndice B y `lean/README.md` para el estado exacto por resultado y la comprobación disponible |
| Registro de IA | Interacciones pertinentes en `prompts.md`; Apéndice C con afirmaciones, veredictos y verificaciones |

El apéndice conserva las imágenes manuscritas sin modificarlas y aclara una notación ambigua en la condición de primer orden del costo óptimo. La formalización Lean debe leerse con el alcance exacto que se declara para cada resultado; la verificación matemática escrita no equivale por sí sola a una prueba Lean.

## Reproducción

Desde la raíz del repositorio: ejecutar python code/verify.py y compilar paper/paper.tex con latexmk -pdf desde la carpeta paper. Los PDF de propuesta y diapositivas se compilan desde sus carpetas. Las dependencias de Python están enumeradas en code/requirements.txt.
