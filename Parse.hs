{-# LANGUAGE DeriveGeneric #-}
module Parse
( LayerParseDefinition(..)
, NetworkParseDefinition(..)
, TrainingParseDefinition(..)
, InputParseDefinition(..)
                        ) where
import Data.Aeson
import GHC.Generics
import Linear

data LayerParseDefinition = LayerParseDefinition { ntype :: String 
                                         , ncount :: Int
                                         , connectivity :: String
                                         , id :: String
                                         } deriving (Generic, Show)

instance FromJSON LayerParseDefinition
instance ToJSON LayerParseDefinition

data NetworkParseDefinition = NetworkParseDefinition { layers :: [LayerParseDefinition]
                                                     , init :: String
                                         } deriving (Generic, Show)

instance FromJSON NetworkParseDefinition
instance ToJSON NetworkParseDefinition

data TrainingParseDefinition = TrainingParseDefinition { trainingdata :: [(Matrix Int, Matrix Int)]
                                         } deriving (Generic, Show)

instance FromJSON TrainingParseDefinition
instance ToJSON TrainingParseDefinition

data InputParseDefinition = InputParseDefinition { inputs :: [Int]
                                         } deriving (Generic, Show)

instance FromJSON InputParseDefinition
instance ToJSON InputParseDefinition