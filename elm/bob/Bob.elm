module Bob exposing (..)
import String
import Regex exposing (contains, regex)

-- not using anymore but keeping for reference 
-- isNotANumber : String -> Bool
-- isNotANumber question =
--   case String.toFloat question of
--     Err question -> True
--     Ok n -> False

containsLetters : String -> Bool
containsLetters question =
    contains (regex "([a-zA-Z])") question

isShouting : String -> Bool
isShouting question =
  containsLetters question && String.toUpper question == question


hey : String -> String
hey question =
  if isShouting question
    then "Whoa, chill out!" else
  if String.endsWith "?" question
    then "Sure." else
  if String.trim question == ""
    then "Fine. Be that way!" else
  "Whatever."
