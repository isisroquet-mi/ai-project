<!-- BEGIN GENERATED PAPER FOLDER README -->
# Fricciones de ejecución, intensidad óptima y condición de sobrecosto en proyectos municipales

| Field | Value |
|---|---|
| Final status | Partially formalized |
| Paper reference | Fricciones de ejecución, intensidad óptima y condición de sobrecosto en proyectos municipales by Isis Milagros Roque Tinta; Publication details not listed. |
| Lines of Code | 327 |

## Key Links

- Final validation report: not tracked in this folder.
- Dependency DAG: not tracked in this folder.
- Compact Lean interface: [PaperInterface.lean](PaperInterface.lean)
- Source/status JSON: [status.json](status.json).
- Additional documentation: [FORMALIZATION_NOTES.md](docs/FORMALIZATION_NOTES.md)
<!-- END GENERATED PAPER FOLDER README -->

El mínimo global único de la Proposición 1 y las tres equivalencias de signo
de la Proposición 2 tienen pruebas sin `sorry` en `Proposition1.lean` y
`Proposition2.lean`. `PaperInterface.lean` presenta los dos enunciados y
`ProofInterface.lean` conecta cada uno con su prueba. También se comprobaron
la identidad de fricciones y `R(1)=0` de la extensión. Están abiertos en Lean
las expresiones óptimas de duración y costo, las derivadas, los signos
distritales, el signo de `R_λ` y su convergencia. La revisión semántica integral
de los enunciados frente a la fuente fijada no se ha completado.

`check Roque26Municipal --fast` compiló la interfaz y pasó `git diff --check`;
el resultado se conserva en `check-fast.txt`. Ese chequeo no equivale a la
auditoría integral descrita en `status.json`.
