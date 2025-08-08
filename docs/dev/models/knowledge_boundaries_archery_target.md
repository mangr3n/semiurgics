# TLDR: Knowledge Boundaries — The Archery Target Model

- Finite knowledge has a concentric geometry: nested rings encode constraints that delimit what is excluded, admissible, and (functionally) inevitable.
- Boundaries are thresholds with ambiguity: crossing a ring makes outcomes not just conceivable (P > 0) but decision‑inevitable given a policy threshold (P ≥ 1 − ε).
- Error vs. accuracy decomposes cleanly: bias = center shift; spread = ring thickness; accuracy = proximity to the bullseye; resolution = boundary width.
- Probabilistic certainty without metaphysical identity: thresholds yield action‑level certainty while preserving apophatic limits and avoiding claims of exhaustive knowledge.
- Realism without extremes: intersubjective invariants fix the ring structure up to isomorphism (anti‑solipsism); policy‑conditional inevitability avoids mechanical determinism.

---

# Knowledge Boundaries: The Archery Target Geometry

## Introduction

We seek a model of knowledge that:
- Makes error and accuracy formally tractable.
- Renders apophaticism and ineffability real (not rhetorical), as structurally necessary features of finite knowing.
- Avoids two traps: solipsistic idealism (mind‑only reality) and deterministic mechanical materialism (totalizing certainty).

We propose a geometric metaphor: a classical archery target. Concentric rings encode levels of discriminability under finite constraints. Boundaries carry intrinsic ambiguity (“on the line”). Crossing a boundary transforms an outcome from inconceivable/impossible to conceivable and, beyond a decision threshold, functionally inevitable. This functional inevitability yields resolvability, accuracy, and high‑probability action, without asserting perfect existential equivalence or complete knowledge.

## The Target Model

- Universe of discourse: Ω (possibilities).
- Rings: R0 ⊇ R1 ⊇ … ⊇ Rn, nested levels of constraint/discriminability, with center c (bullseye) as a regulative, apophatic ideal.
- Boundaries: ∂Rk carry non‑zero thickness τk representing resolution limits; membership near ∂Rk is three‑valued: outside / boundary / inside.
- Three statuses at level k:
  - Outside: precluded by current constraints (P = 0 relative to the model).
  - Boundary: ambiguous/indeterminate (measurement/model cannot decide).
  - Inside: admissible (P > 0), with an action threshold for inevitability.

Crossing a boundary is a transition in constraint: outcomes that were impossible/inconceivable become admissible, and with sufficient evidence, decision‑inevitable under a selected policy threshold.

---

# From Inconceivable to Inevitable (Thresholds and Policy)

- Conceivability: P(H | data, model) > 0; hypothesis H enters admissible space.
- Inevitability (functional): Act as if H is true when P(H | data, model) ≥ 1 − εk, where εk is a policy‑level tolerance bound at ring k.
- Key point: inevitability is decision‑theoretic, not ontological determinism. It licenses action under bounded risk, not metaphysical identity.

Examples
- Physics measurement: Below detector sensitivity, a signal is “outside.” Crossing sensitivity (SNR threshold) moves it to “inside.” With repeated trials and calibration, it becomes “inevitable” for the purposes of inference/action.
- Law: “Beyond a reasonable doubt” as a high‑confidence threshold; “preponderance of evidence” as a lower threshold. Different ε encode different rings of adjudicative certainty.
- Machine learning: Classifier decision boundaries; calibrated probabilities turn admissibility into action with thresholding (e.g., P ≥ 0.95). OOD data resides “outside,” miscalibration manifests as thick boundaries.

---

# Error, Accuracy, and Resolution

- Radial error: e(x) = ||x − c|| (distance from the bullseye).
- Accuracy: inverse of radial error; higher near the center.
- Resolution: boundary width τk; “on the line” reflects finite discriminability.
- Bias vs. spread:
  - Bias (systematic error): shift of estimated center ĉ away from c.
  - Spread (random error): variability of hits; manifests as ring thickness.
- Calibration shrinks τk (better instruments/models), relocates boundaries, and refines ĉ; yet c remains a regulative ideal (never exhaustively captured).

---

# Formalization (Sketch)

- A1. Nestedness: Rk+1 ⊆ Rk for all k.
- A2. Boundary ambiguity: each ∂Rk has non‑zero thickness τk > 0; define a three‑valued membership μk(x) ∈ {0, 1/2, 1} for outside/boundary/inside (or a partial membership μk: Ω → [0,1] with a designated ambiguity band).
- A3. Threshold action rule: for decision Dk tied to ring k, act as if H is true iff P(H | data, model) ≥ 1 − εk (policy‑dependent).
- A4. Calibration: observations update boundary location and width (τk) and center estimate ĉ via proper scoring/calibration procedures (e.g., Brier, log score; reliability diagrams).
- A5. Error decomposition: total error decomposes into bias (||ĉ − c||) and spread (expected radial variance). Resolution limits cap achievable accuracy at each k.
- A6. Intersubjective invariance: for competent observers/instruments satisfying shared constraints, the ring structure is invariant up to isomorphism (stable under lawful transformations).

Appendix (logic): Boundary cases can be modeled via three‑valued logics (e.g., Kleene K3, Łukasiewicz) to treat μ = 1/2 as designated “undetermined,” preserving reasoned inference without collapsing into bivalence.

---

# Apophaticism and Ineffability as Real

- The bullseye c is a regulative attractor: we asymptotically approach it via narrowing τk and improving ĉ, but never exhaustively capture it.
- Via negativa: progress by eliminating impossibilities (carving from outside‑in) and constraining admissible structure, rather than fully “saying” the essence.
- Ineffability is not anti‑realism; it is the structural remainder of finite resolution—what remains beyond current rings while guiding inquiry.

---

# Avoiding Solipsism and Mechanical Determinism

- Anti‑solipsism: intersubjective invariants. Independent lines of evidence and calibration converge on homologous ring structures; shared constraints yield stable isomorphisms across observers.
- Anti‑determinism: inevitability is policy‑conditional and model‑indexed. Thresholds, utilities, and costs shape εk. The world is law‑governed, but action‑certainty arises from thresholds, not metaphysical predestination.

---

# Relations to Existing Models

- Theory of Intelligibility: dimensional constraints that make reality stably knowable support the existence of nested, actionable rings. See: [theory_of_intelligibility.md](./theory_of_intelligibility.md)
- Ontology of Relations: boundaries are relations of admissibility; informing flows along constraints that define ring transitions. See: [ontology_of_relations.md](./ontology_of_relations.md)
- Enduring Realism: intersubjective invariants ground realism; convergence of rings across observers underwrites objectivity. See: [enduring_realism.md](./enduring_realism.md)
- General Framework: the target model instantiates finite‑agent epistemics with explicit thresholds and calibration. See: [general_framework.md](./general_framework.md)

---

# Examples and Applications

- Scientific inference: detection limits, confidence intervals as ring widths, preregistered decision thresholds.
- Engineering: specification tolerances as rings; pass/fail vs. margin zones (“boundary”) in QA.
- Policy: evidence thresholds for interventions; risk‑based εk selection.
- AI/ML: probability calibration, abstention/deferral in the boundary, OOD rejection as “outside.”

---

# Conclusion

The archery target model treats knowledge as finite, nested constraint regions with intrinsically ambiguous boundaries. Crossing a ring transforms outcomes from inconceivable to admissible, and—with thresholds—into functional inevitability. This yields resolvability and action‑level certainty without pretending to perfect resolution. Apophatic limits remain real, not as skepticism, but as the structural horizon that guides inquiry. Realism is preserved via intersubjective invariants; determinism is avoided by making inevitability explicitly policy‑conditional.

---

# Future Work

- Tighten formal measure/topology of rings and boundaries (τk) and their update dynamics.
- Standardize calibration protocols for εk selection by domain (science, law, safety‑critical systems).
- Integrate abstention/deferral policies for boundary cases in ML and decision systems.
- Map equivalences to alternative formalisms (belief functions, imprecise probabilities, rough sets).