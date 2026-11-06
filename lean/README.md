# Lean: primer resultado verificado

`Proposition1.lean` formaliza una parte de la Proposición 1 de
`slides/final.tex`. Para el costo `K(e) = M + F/e + κe/2`, con `M ≥ 0`,
`F > 0` y `κ > 0`, Lean comprueba que `q = √(2F/κ)` es positivo y, para
**todo** `e > 0`, `K(q) ≤ K(e)` con igualdad si y solo si `e = q`.

La prueba utiliza la identidad exacta
`K(e) - K(q) = κ(e-q)²/(2e)`. La condición `M ≥ 0` figura en el enunciado
para reflejar el modelo, aunque la minimización no la necesita porque `M`
se cancela en la diferencia.

## Comprobación

Se compiló con Lean `v4.30.0-rc2` y la versión de Mathlib fijada por
AppliedModelingLib:

```bash
# En un clon de AppliedModelingLib con sus dependencias instaladas:
cp /ruta/al/ai-project/lean/Proposition1.lean ./Proposition1.lean
lake exe cache get Mathlib.Data.Real.Sqrt Mathlib.Tactic.FieldSimp \
  Mathlib.Tactic.Ring Mathlib.Tactic.Positivity Mathlib.Tactic.Linarith
lake env lean Proposition1.lean
```

El archivo no contiene `sorry` ni axiomas añadidos. El alcance verificado
es el mínimo global único: faltan la duración y el costo óptimos, las
comparativas estáticas, la Proposición 2 y la extensión. La carpeta aún
no es la contribución completa que se generará con el flujo de
AppliedModelingLib a partir del documento final.
