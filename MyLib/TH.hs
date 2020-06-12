{-# LANGUAGE TemplateHaskell #-}
module MyLib.TH (template) where
import Language.Haskell.TH
import MyLib.Id (myId')

myId :: a -> a
myId = id

template :: DecsQ
template = [d|
  x =
    myId -- fails
    -- myId' -- OK
  |]
