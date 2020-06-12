{-# LANGUAGE TemplateHaskell #-}
module MyLib.TH (template) where
import Language.Haskell.TH

myId :: a -> a
myId = id

template :: DecsQ
template = [d| x = myId |]
