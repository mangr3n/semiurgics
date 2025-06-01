{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards #-}

module Economics.Austrian.Types where

-- | A point in time. Could be extended to use a more sophisticated time type.
-- | It's technically NOT a point in time.  Every precise "point" is a probability of 
-- | happening at differ "points" within a range of time.  Notice the circularity of this
-- | definition.  
-- | The other way of 
type Time = Int

-- | A human being with a state that can change over time
data Human = Human
  { humanId :: Int  -- ^ Unique identifier for the human
  , stateAt :: Time -> HumanState  -- ^ Function giving the human's state at any time
  }

-- | The inner state of a human being at a particular time
data HumanState = HumanState
  { preferences :: [Preference]  -- ^ Ordered list of preferences (most preferred first)
  , knowledgeBase :: [Feature]   -- ^ Features the human is aware of
  }

-- | A preference relation between two world states
data Preference = Preference
  { preferredState :: WorldState
  , overState :: WorldState
  }

-- | The state of the world at a point in time
data WorldState = WorldState
  { worldFeatures :: [Feature]  -- ^ Features that are true in this world state
  , worldTime :: Time          -- ^ When this world state exists
  }

-- | A feature that can be true or false in a world state
type Feature = String

-- | A percept is a collection of features extracted from sensory input
type Percept = [Feature]

-- | The complete set of all possible world states (simplified for now)
allPossibleWorlds :: [WorldState]
allPossibleWorlds = undefined  -- In practice, this would be derived from our world model

-- | Extract features from a world state
featureExtract :: WorldState -> [Feature]
featureExtract = worldFeatures

-- | Get the features a human knows about at a given time
knowledge :: Human -> Time -> [Feature]
knowledge h t = knowledgeBase (stateAt h t)

-- | Perception function: extracts features from the world state to form a percept
perceive :: Human -> Time -> WorldState -> Percept
perceive h t w = filter (isKnownTo h t) (featureExtract w)
  where
    isKnownTo human time' f = f `elem` knowledge human time'

-- | Returns all world states consistent with a given percept
consistentWorlds :: Percept -> [WorldState]
consistentWorlds percept = 
  filter (\w -> all (\f -> f `elem` featureExtract w) percept) allPossibleWorlds

-- | A human's mental model is the set of world states consistent with their current percept
mentalModel :: Human -> Time -> WorldState -> [WorldState]
mentalModel h t w = consistentWorlds (perceive h t w)

-- | Check if two world states are indistinguishable to a human based on their knowledge
indistinguishable :: Human -> Time -> WorldState -> WorldState -> Bool
indistinguishable h t w1 w2 =
    let knownFeatures = knowledge h t
        f1 = filter (`elem` knownFeatures) (featureExtract w1)
        f2 = filter (`elem` knownFeatures) (featureExtract w2)
    in f1 == f2

-- | Action that can be taken by a human
data Action = Action
  { actor :: Human
  , timeOfAction :: Time
  , preconditions :: WorldState -> Bool
  , effect :: WorldState -> WorldState
  }

-- | Apply an action to a world state if its preconditions are met
applyAction :: Action -> WorldState -> Maybe WorldState
applyAction action@Action{..} world
  | preconditions world = Just (effect world)
  | otherwise = Nothing
