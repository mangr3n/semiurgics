# Set Theory Overview for Category Theory

This document summarizes the essential concepts from set theory that will be used repeatedly when learning category theory.  It is **not** a comprehensive treatment, but it should serve as a quick reference and a guide for further study when a concept here feels unfamiliar.

## 1. Sets and Elements
- **Set**: An unordered collection of distinct objects, called *elements*.
- Notation: $x \in A$ means *x is an element of A*; $x \notin A$ means *x is not an element of A*.
- **Subset**: $A \subseteq B$ iff every element of $A$ is also in $B$.
- **Proper subset**: $A \subset B$ and $A \neq B$.
- **Empty set** $\varnothing$: contains no elements.

## 2. Basic Constructions
- **Union** $A \cup B$ and **Intersection** $A \cap B$.
- **Set difference** $A \setminus B$; **complement** $\overline{A}$ (relative to a universe $U$).
- **Cartesian product** $A \times B = \{(a,b) \mid a \in A,\, b \in B\}$.
- **Power set** $\mathcal{P}(A)$: the set of all subsets of $A$.

## 3. Functions (Maps)
- A **function** $f\colon A \to B$ assigns each $a \in A$ exactly one element $f(a) \in B$.
- **Image** $f[A] = \{f(a) \mid a \in A\}$; **preimage** $f^{-1}[S]$ for $S \subseteq B$.
- **Injective** (one-to-one), **surjective** (onto), **bijective** (both).
- Composition $g \circ f$ and identity functions $\operatorname{id}_A$ are the prototype examples of categorical morphisms.

## 4. Relations
- A **relation** $R$ on sets $A_1,\dots A_n$ is a subset of the Cartesian product $A_1 \times \dots \times A_n$.
- Special cases: equivalence relations, partial orders.  Both are important sources of categories (e.g., posets as categories).

## 5. Indexed Families and Unions
- Families $(A_i)_{i \in I}$ indexed by a set $I$ help formalize constructions like coproducts and products in arbitrary collections.

## 6. Infinite Sets & Cardinality
- **Cardinality** $|A|$ measures "size" of a set; compare via injections/surjections.
- **Finite**, **countable**, **uncountable** distinctions are occasionally needed when discussing small vs. large categories.

## 7. Axiomatics and Size Issues
- Category theory often assumes some background axioms (e.g., ZFC) to avoid paradoxes.
- **Classes** vs **sets**: Large collections like the class of all sets are *not* sets.  Many textbooks restrict to *small categories* whose objects form a set.

## 8. Recommended Follow-up
If any of the above notions are unfamiliar, consider reviewing:
- *Naive Set Theory* by Paul R. Halmos
- *Elements of Set Theory* by Herbert B. Enderton

---
*Last updated: 2025-08-06*