# Ontology of Relations and Proportions

## Fundamental Principles

### 1. Primacy of Substance
- **Definition**: Substances are the fundamental constituents of reality that exist in themselves (in se) and not in another (per se).
- **Implication**: While we observe and understand substances through their relations, the substances themselves are ontologically prior to these relations.

### 2. Reality of Relations
- **Definition**: Relations are real but secondary modes of being that depend on their substantial termini.
- **Analogy**: Like the event horizon of a black hole, relations are how substances manifest and interact, but the substance itself is the primary reality.

## The Substance-Relation Distinction

### 1. The Nature of Substance
- **Independent Existence**: Substances exist in themselves (in se) and not in another (per se)
- **Primary Instance of Being**: The fundamental subject of existence and predication
- **Example**: A tree, a human being, a stone - each is a substance in its own right

### 2. The Nature of Relations
- **Dependent Existence**: Relations exist in substances and between them
- **Secondary Mode of Being**: Always presuppose their substantial termini
- **Example**: The relation "taller than" between two people depends on both people existing first

### 3. Types of Relations
- **Intrinsic**: Grounded in the nature of the substance (e.g., form-matter composition)
- **Extrinsic**: Not essential to the substance's being (e.g., spatial relations)
- **Transcendental**: Relations of being as such (e.g., identity, difference)

## Dimensions of Proportion

### 1. Qualitative Dimensions
- **Ordinal Relations**: Can only establish more/less/equal (e.g., preference, hardness)
- **Nominal Relations**: Only equality/inequality (e.g., categories, types)

### 2. Quantitative Dimensions
- **Interval Relations**: Differences are meaningful (e.g., temperature in °C)
- **Ratio Relations**: Ratios are meaningful (e.g., length, mass, time)

## The Act of Comparison

### 1. The Fundamental Triad
Every comparison involves:
1. **Comparator**: The agent performing the comparison
2. **Dimension**: The quality being compared
3. **Terms**: The entities being compared

### 2. Possible Outcomes
- **Trichotomy**: For any comparison (A, B) in dimension D, exactly one holds:
  - A <ᴅ B (A is less than B in dimension D)
  - A =ᴅ B (A is equal to B in dimension D)
  - A >ᴅ B (A is greater than B in dimension D)

## The Epistemic Role of Relations

While substances exist independently of being known, our knowledge of them is always mediated through their relations and operations:

### 1. Mediation of Knowledge
- **Sensible Signs**: We know substances through their perceptible qualities
- **Operational Signs**: We understand natures through what things do
- **Relational Context**: Meaning emerges from how things relate to other things and to us

### 2. The Semiotic Triad
Every act of knowing involves three elements:
- **Sign Vehicle**: The perceptible aspect (e.g., smoke as a sign of fire)
- **Object**: What is signified (e.g., the fire itself)
- **Interpretant**: The understanding that connects sign and object in the knower

### 3. The Epistemic Gap
- **Ontological Independence**: Substances can exist without being known
- **Epistemic Dependence**: But cannot be known except through their relations
- **Analogous Understanding**: Our knowledge is always partial and analogous

### 4. Implications for Human Knowledge
- **Mediated Access**: All human knowledge is mediated by signs and relations
- **Progressive Understanding**: We come to know substances more fully through multiple relations
- **Essential Mystery**: The substance itself always exceeds our complete comprehension

## Economic Implications

### 1. Value Grounded in Substances
- Economic value inheres in actual goods and services (substances)
- Exchange relations reveal but do not create value
- The value relation presupposes valuable things as its termini

### 2. Prices as Secondary Phenomena
- Prices emerge from exchange relations between economic agents
- But these relations depend on the prior existence of the goods and agents involved
- The substantial nature of goods constrains possible price relations

## Formal Representation

### 1. Basic Types
```haskell
data RelationType = Intrinsic | Extrinsic
data ProportionType = Ordinal | Nominal | Interval | Ratio

data Dimension = Dimension
  { dimensionName :: String
  , proportionType :: ProportionType
  , comparer :: forall a. a -> a -> Ordering3
  }

data Ordering3 = LessThan | EqualTo | GreaterThan
```

### 2. Economic Relations
```haskell
data EconomicValue = EconomicValue
  { good :: Good
  , valueDimensions :: Map String Dimension
  , preferences :: [PreferenceOrdering]
  }

data PreferenceOrdering = PreferenceOrdering
  { subject :: EconomicAgent
  , preferred :: Good
  , dispreferred :: Good
  , strength :: PreferenceStrength
  }
```

## Foundational Theses

1. **Ontological Primacy of Substance**: Substances are the primary mode of being; relations depend on them.  Relations originate and terminate in them.

2. **Reality of Relations**: While secondary, relations are real features of reality, not mere mental constructs.

3. **Epistemic Role of Relations**: We come to know substances through their relations and operations.

4. **Value as Grounded in Substance**: Economic value inheres in goods themselves, though it is revealed through exchange relations.

5. **Hierarchy of Being**: Some relations are more fundamental than others, corresponding to the natures of the substances involved.

## Metaphysical Synthesis

Reality is the space within which matter manifests its potentiality in the actuality of forms. Forms, through relations, condition, influence, or shape the forms of other matter. This shaping is necessarily structured, proportional, and differentiable—subject to the constraints of information theory. The informing or influence of forms is the basis for the intelligibility of the world: it is through such structured relationality that knowledge becomes possible.

Because all informing is structured and proportional:
- Knowledge is possible (the world is intelligible).
- Knowledge is truthful to the extent that it apprehends real relations and forms.
- Knowledge is fallible, since apprehension is finite and mediated.
- Knowledge is always finite in grip (apprehension), but infinite in scope (application), since the world’s relationality is inexhaustible.

## Epistemic Implications: Proportion, Perception, and Error

Knowledge is the outcome of relations and their proportional nature. Even the most basic intelligible distinction—such as light vs. no light (on/off)—is a relation of form.

Consider an object with three parts and two internal relations, with intrinsic proportions of 2:1 and 3:1. For me to know these relations, the object must enter into a relation with me (e.g., sensory information transfer). However, my apprehension of these proportions may be distorted: I might perceive the 2:1 relation as 3:1, and the 3:1 as 10:1, due to limitations in my sampling frequency or resolution.

Any dependent effects or deductions I make will be conditioned by these mistaken apprehensions. If my understanding of the relations is off, my predictions and conclusions will also be erroneous. This is a general model for how errors in perception and intellection propagate through systems of thought.

**Framework for Diagnosing Error:**
- The model of relation, proportion, and harmony—extended to beauty, truth, and goodness—gives us both the means and mechanisms for improving our understanding and properly diagnosing error in our cognitive and conceptual systems.
- By clarifying the proportional structure of relations and identifying where our apprehension diverges from reality, we can systematically improve our knowledge and its applications.

## Distinct Dimensions of Experience and Sensation

Different dimensions or modes of sensation—such as color, sound, and size—constitute fundamentally distinct ways of identifying and apprehending distinctions in reality.

- **Distinct Modes**: Each sensory dimension (e.g., color, sound, size) is a unique and irreducible mode of experience. While color and sound may both be described in terms of wave phenomena, their experiential qualities are fundamentally different.
- **Phenomenal Grounding**: The distinctions we make in these dimensions are grounded in extramental (objective) features of reality—such as wavelengths of light (color) or sound waves (auditory pitch)—but the human apprehension of them is always and only through the experience of color as such, or sound as such.
- **Irreducibility**: No amount of physical analogy or mathematical correspondence can substitute for the direct, qualitative experience of a given dimension. Color cannot be reduced to sound, nor vice versa, even if they share structural features.
- **Epistemic Consequence**: Human understanding of these dimensions is always mediated by the mode of experience, and thus our knowledge is conditioned by the limits and structures of our sensory modalities.

## Evolution as the Construction of Resonators

If forms interact through relations, and those relations act as channels of information, then evolution can be understood as the ongoing process of constructing "resonators": entities with the capacity to conform maximally to the relevant patterns and proportions in their environment.

- **Resonator Defined**: A resonator is a form (or system of forms) that is structured to receive, process, and respond to information from its environment with maximal conformity—i.e., with high fidelity, integrity, and resonance.
- **Evolutionary Process**: Evolution, in this light, is the iterative refinement of forms to increase their resonance with the informational structure of their niche. Organisms are selected for their ability to detect, interpret, and respond to relational information.
- **Biological Implications**: Sensory organs, nervous systems, and behavioral repertoires are all evolutionary resonators—specialized to maximize the organism's fit to the relational structure of its environment.
- **General Principle**: The evolutionary process thus builds ever more sophisticated resonators, increasing the capacity for harmony (proportionality and conformity) between organism and world.
- **The Mind as Ultimate Resonator**: The capacity to be informed is like an antenna being tuned to the frequencies of reality. The human mind is the ultimate antenna—evolved to maximize the reception, discrimination, and integration of information from the world.
- **Creative Resonance and Stewardship**: The human mind, as the ultimate resonator, can not only come to resonate with real things as they are, but also with the forms behind appearances. We can imagine the trajectory of a form across time, infer the existence and aim of a final cause, and envision how to facilitate or midwife the realization of potentialities. By imagining the harmonious conditions under which certain forms would appear and operate, we become creative actors and stewards—participating in the ongoing unfolding of creation.

## Example: The Fish Trap and Resonant Distribution

Consider a simple fish trap made from a plastic bottle: the top is cut off and inverted to create a funnel into the bottle’s interior. Placed in a pool with guppies, over time, the concentration of fish inside the bottle increases relative to the outside. Eventually, a stable distribution is reached, as the rate of fish entering equals the rate of fish exiting.

- **Resonance with Form**: This stable distribution is not arbitrary—it is resonant with the form of the bottle. The funnel shape makes entry easier than exit, selectively shaping the flow and accumulation of fish.
- **Proportional Operation**: The form of the bottle, as a relation, produces a proportional change in the context (the fish distribution). The resulting equilibrium is a direct expression of the proportional structure of the form in relation to the environment and the behaviors of the fish.
- **General Principle**: This example illustrates a fundamental feature of reality: form is itself proportional, and its operation through relations always produces proportional disruption or change within its context.

## Future Directions

1. Formalize the hierarchy of relations from most to least fundamental.
2. Develop a calculus of proportions for different types of relations.
3. Explore the implications for economic calculation and value theory.
4. Investigate the relationship between these ontological categories and information theory.

---

*This document represents our current understanding and is subject to revision as our exploration continues.*
