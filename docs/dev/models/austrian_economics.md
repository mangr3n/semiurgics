
Human Action:

Formalize: 

We call contentment or satisfaction that state of a human being which does not and cannot result in any action. Acting man is eager to substitute a more satisfactory state of affairs for a less satisfactory. His mind imagines conditions which suit him better, and his action aims at bringing about this desired state. The incentive that impels a man to act is always some uneasiness1 . A man perfectly content with the state of his affairs would have no incentive to change things. He would have neither wishes nor desires; he would be perfectly [p. 14] happy. He would not act; he would simply live free from care.

* Claim 1: Contentment is the state of a human being which does not and cannot result in any action.

* Assumption 1: Human Beings as category, Human Being as instance.

```haskell
-- Haskell-style formal syntax:
data HumanBeing
type HumanBeings = [HumanBeing]
```

* Assumption 2: Inner state of human being as a set of all possible states.

```haskell
-- Haskell-style formal syntax:
data HumanState
type HumanStates = [HumanState]
```

** Assumption 3: The human being is in one of those possible states at any given time.

```haskell
-- Haskell-style formal syntax:
type Time = ... -- to be defined as needed
data Human = Human { stateAt :: Time -> HumanState }
-- For all h :: Human, t :: Time, stateAt h t ∈ HumanStates
```


* Assumption 4: Action is an ATTEMPT to change the inner state of the human being to a state preferred by the human being.

```haskell
-- Each Human has a preference function for comparing two HumanStates
-- This is exactly the type of a standard sort function
prefers :: Human -> HumanState -> HumanState -> Ordering
-- Ordering: LT = less preferred, GT = more preferred, EQ = indifferent
```

* Assumption 5: Action is observable by another human being as an attempt to change the outer world through an action of the body of the human being.

```haskell
data World

data WorldState

type WorldStates = [WorldState]  -- all possible world states

type WorldHistory = [(WorldState, Time)]  -- actual history as a sequence of (state, time) pairs

-- Each action is an attempt to change the world
applyAction :: Action -> WorldState -> WorldState

-- Each Human can observe the actions of others
observe :: Human -> Human -> Time -> Maybe Action
-- observe observer actor t = Just a if observer sees actor do a at t, Nothing if not observable

-- Revealed preference: The action taken by a human at a time reveals their preference
revealedPreference :: Human -> Time -> Action -> HumanState -> HumanState -> Bool
revealedPreference h t a s1 s2 = prefers h s2 s1 == GT

-- Logical Necessity of Eating for Living Humans
-- Axiom: For any Human h, being alive requires periodic intake of food (eating).
alive :: Human -> Time -> Bool
eats  :: Human -> Time -> Bool

-- For all h :: Human, for all t :: Time:
-- If alive h t == True, then there exists t' >= t such that eats h t' == True
-- (Otherwise, there exists t'' > t such that alive h t'' == False)

-- In words: Every living human must eat at some point, or else they will die.
-- The timing of death is uncertain, but the necessity is not.
```

{-
Boxed Note: Empirical Knowledge and Material Logic

Empirical knowledge is not merely the accumulation of observations; it is the probabilistic application of material logic to a world of incomplete information. What we call "empirical" is, in fact, our best inference about the world, given the data available and the logical necessities imposed by the structure of matter, energy, biology, and life. Thus, empirical regularities are not arbitrary—they are constrained by logical and material necessity, filtered through the lens of incomplete knowledge.

Boxed Note: The Foundation of Science

The stable regularity of constraint in the world is the entire foundation upon which Science rests its method. Science presupposes that the world is governed by lawful, stable, and discoverable constraints—regularities that persist across time and space. The scientific method is, at its core, the systematic exploration and mapping of these constraints, using observation, inference, and experiment to uncover the lawful order of reality. Without such stability and regularity, prediction, explanation, and understanding would be impossible, and science itself could not function.

```haskell
-- Stability and Invariance of World Evolution
-- The world evolves according to a stable, time-invariant function
change :: WorldState -> WorldState
-- For all t :: Time, WorldState(t+1) = change (WorldState t)

-- More generally, including all possible influences (Logos):
change :: WorldState -> Logos -> WorldState

data Logos = Logos -- (the sum of all actual constraint, lawful order, and possible phenomena in Reality)

-- Logos is itself a constant: for any function f, f(Logos) = Logos
-- This expresses the metaphysical property that Logos is invariant under all transformation; it is the absolute, unchanging constraint and order of Reality.

-- The function 'change' is stable and constant across time:
-- For all t, change is the same function; only its input arguments (WorldState, Logos) vary.

-- Assumption 6: The human being has a capacity to model some portion of reality
-- such that they can perceive the world as having a specific set of conditions.

-- Feature space representing aspects of reality
type Feature = String  -- Simplified for now; could be expanded
type FeatureSpace = [Feature]

type Percept = FeatureSpace  -- A percept is a collection of features extracted from sensory input

-- Perception function: extracts features from the world state to form a percept
perceive :: Human -> Time -> WorldState -> Percept
perceive h t w = filter (isKnownTo h t) (featureExtract w)
  where
    isKnownTo h' t' f = f `elem` knowledge h' t'

-- Belief-consistent world states: returns all world states consistent with a given percept
consistentWorlds :: Percept -> [WorldState]
consistentWorlds percept = filter (\w -> all (\f -> f `elem` featureExtract w) percept) allPossibleWorlds

-- Mental model: represents a human's belief about possible world states based on perception
type MentalModel = Human -> Time -> [WorldState]

-- A human's mental model is the set of world states consistent with their current percept
mentalModel :: Human -> Time -> WorldState -> [WorldState]
mentalModel h t w = consistentWorlds (perceive h t w)

-- Feature extraction function: extracts relevant features from a world state
featureExtract :: WorldState -> FeatureSpace
featureExtract = undefined  -- Implementation depends on specific features

-- Knowledge function: represents what features a human has knowledge of
knowledge :: Human -> Time -> FeatureSpace
knowledge = undefined  -- Implementation depends on human's knowledge

-- Partial knowledge constraint: humans can only distinguish world states based on known features
constrainByKnowledge :: Knowledge -> Human -> Time -> WorldState -> WorldState -> Bool
constrainByKnowledge knowledge h t w1 w2 =
    let knownFeatures = knowledge h t
        f1 = filter (`elem` knownFeatures) (featureExtract w1)
        f2 = filter (`elem` knownFeatures) (featureExtract w2)
    in f1 == f2  -- w1 and w2 are indistinguishable to h at time t if their known features match

-- Free Will and Novelty:
-- Free will suggests that Human will is part of WorldState, and is a source of novelty.
-- From the outside view, this novelty is simply part of Reality, folded into Logos.
-- The only way to produce the successive world states is to run the simulation (Creation/Reality) itself.

-- This stability and invariance is what we experience as the lawful, orderly constraint of reality.

{-
Boxed Note: Logos as Constant

Logos is not merely a parameter to the world-evolution function; it is metaphysically constant. For any function f, f(Logos) = Logos. This expresses that the sum total of lawful order and constraint in Reality is absolutely invariant—unchanged by any operation, transformation, or perspective. Logos is the unchanging ground of possibility and actuality.
-}
```

{-
Summary: The function that produces the next instance of reality (WorldState) from the previous is stable and constant across time. This function operates with a "constant input"—the integrated sum of all actual constraint and all possible phenomena within Reality. This constancy is experienced as the lawful, orderly constraint of reality, and is the foundation for the reliability of scientific inference and prediction.
-}


---
## Methodological Note: Semiurgic Modeling Language

This document develops a language for modeling reality semiurgically—that is, as an explicit, creative act of meaning-making and abstraction. The process includes:

- Defining formal placeholders for phenomena, to clarify what is being modeled and what is being abstracted away.
- Iteratively checking models for both validity (internal logic) and soundness (correspondence to reality).
- Using the language to make explicit the boundaries and assumptions of interpretation.

This approach supports both scientific rigor and philosophical reflection, enabling ongoing refinement and deeper understanding.
---

* Assumption 6: The human being has a capacity to model some portion of reality such that they can perceive the world as having a specific set of conditions.

**Formal Representation**:

1. **Perception Function Formalization**:
   - Define a perception function $\pi : H \times T \times W \to \mathcal{P}(W)$
   - $\pi(h, t, w)$ represents the set of world states that human $h$ at time $t$ perceives as possible when the actual world state is $w$
   - Ideally: $w \in \pi(h, t, w)$ (the actual world state is among those perceived as possible)
   - However: $\pi(h, t, w) \neq \{w\}$ generally (perception is imperfect/incomplete)

2. **Mental Model Formalization**:
   - Define a mental model function $\mu : H \times T \to \mathcal{P}(W)$
   - $\mu(h, t)$ represents human $h$'s model of the possible world states at time $t$
   - Relation to perception: $\mu(h, t) = \pi(h, t, w)$ where $w$ is the actual world state at time $t$

3. **Partial Knowledge Formalization**:
   - Define a feature space $F$ representing aspects of reality
   - Define a feature extraction function $\xi : W \to F$
   - Define a partial knowledge function $\kappa : H \times T \to \mathcal{P}(F)$
   - $\kappa(h, t)$ represents the features of reality that human $h$ has knowledge of at time $t$
   - Formally: $\forall h \in H, \forall t \in T, \forall w_1, w_2 \in W: \text{if } \xi(w_1) \cap \kappa(h, t) = \xi(w_2) \cap \kappa(h, t) \text{ then } w_1 \text{ and } w_2 \text{ are indistinguishable to } h \text{ at time } t$

  * Assumption 7: The human being has a capacity to imagine the world in a different set of conditions, and to act in order to change the world to arrive at that imagined condition.

**Formal Representation**:

1. **Imagination Function Formalization**:
   - Define an imagination function $\iota : H \times T \times W \to \mathcal{P}(W)$
   - $\iota(h, t, w)$ represents the set of world states that human $h$ at time $t$ can imagine as alternatives to the perceived world state $w$
   - Note: $\iota(h, t, w)$ may include world states that are not actually achievable

2. **Desire Relation Formalization**:
   - Define a world state preference relation $\succ^W_h$ for each human $h$
   - For world states $w_1, w_2 \in W$, $w_2 \succ^W_h w_1$ means "human $h$ prefers world state $w_2$ over world state $w_1$"
   - Connection to inner states: If $w_2 \succ^W_h w_1$, then the inner state associated with perceiving $w_2$ is preferred to the inner state associated with perceiving $w_1$

3. **Goal-Directed Action Formalization**:
   - Define a goal function $\gamma : H \times T \to \mathcal{P}(W)$
   - $\gamma(h, t)$ represents the set of world states that human $h$ is trying to achieve at time $t$
   - Formally: $\gamma(h, t) \subseteq \iota(h, t, w)$ where $w$ is the perceived world state at time $t$
   - Action selection principle: $\forall h \in H, \forall t \in T, \text{if } \alpha(h, t) = a \text{ then } \exists w_g \in \gamma(h, t) \text{ such that } \exists (w_c, w_f) \in \phi(a) \text{ where } w_c \text{ is the current world state and } w_f \text{ is closer to } w_g \text{ than } w_c$
     (This states that a human selects actions that move the world closer to their imagined goals)

  * Assumption 8: The human being has a capacity to act in order to change the world to arrive at that imagined condition.


