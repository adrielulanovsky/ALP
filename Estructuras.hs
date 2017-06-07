type Deck = [Card]

data Card = Card {  cardName :: String,
--                       cardType :: CardType,
                    cardCost :: Int,
                    cardContent :: CardContent
                    }

card1 :: Card
card1 = Card "Minotauro"
             3
             cardContent1

data CardContent =  Creature {  creatureLife :: Int,
                                creatureAttack :: Int,
                                creatureHabilityList :: [Hability]
                                } 
                    | Spell {   spellActionList :: [Action]}

cardContent1 :: CardContent
cardContent1

data Hability = Hability {   habilityCost :: Int,
                             habilityActionList :: [Action]}
                            
data Action = AddStrength {  actionAddStrengthType :: Strength,
                             actionAddStrengthQuantity :: Int,
                             actionAddStrengthTargets :: Targets
                        }                  
              | Destroy {    actionDestroyTargets :: Targets}

data Targets = SomeTargets { targetQuantity :: Int,
                             someTargetFunction :: CardContent -> Bool}
               | AllTargets {   allTargetFunction :: CardContent -> Bool}
                             
                             

data Strength = Life | Attack

