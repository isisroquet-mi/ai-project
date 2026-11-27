# Formalización del modelo municipal

La versión fuente del artículo se fija en `0f48940cb420e2da538a497120f80aadd1224acf`. La tabla completa y las condiciones matemáticas están en el apéndice B de `paper/paper.pdf`.

| Resultado | Declaración | Estado |
| --- | --- | --- |
| Proposición 1: mínimo global único | `MunicipalProject.unique_global_minimum`, `Proposition1.lean` | Compilado sin `sorry`; aún faltan en Lean las expresiones de duración y costo óptimos, las derivadas y los signos distritales. |
| Proposición 2: tres signos de `R` | `MunicipalProject.three_signs_of_cost_variation`, `Proposition2.lean` | Compilado sin `sorry` bajo `M ≥ 0`, `F > 0`, `κᴬ > 0` y `κⱽ > 0`. Incluye la diferencia de costos. |
| Anticipación parcial | `MunicipalProject.actual_minus_forecast` y `MunicipalProject.exact_anticipation_zero`, `Proposition2.lean` | Compiladas la identidad de fricciones y `R(1)=0`; la derivada `R_λ` y la convergencia no están aún formalizadas. |

Para repetir las pruebas en el clon de AppliedModelingLib, con la versión de Lean y Mathlib fijadas allí:

```bash
lake env lean /ruta/al/ai-project/lean/Proposition1.lean
lake env lean /ruta/al/ai-project/lean/Proposition2.lean
```

Esta compilación comprueba los enunciados Lean concretos, no valida empíricamente los supuestos distritales. La carpeta de contribución generada por AppliedModelingLib y el resultado de su validador específico se conservan junto a estos archivos; el estado de auditoría integral se distingue de la compilación de las dos pruebas.
