module Ascii_values
( values,
	float_to_val,
	float_to_dotval
) where  

import Data.Function

values :: [String]
values = [".", "^", ";", "i", "?", "X", "Q", "#", "M", "%", "@"]

dotted_values = ["░", "▒", "▓", "█"]

min_value = " "
max_value = "█"


toInt :: Float -> Int
toInt = round


float_to_val :: Float -> String
float_to_val f = if f <= 0 
	then min_value
	else if f >= 1
		then max_value
	else values!!(toInt ((fromIntegral (length values)-1) * f))

float_to_dotval :: Float -> String
float_to_dotval f = if f <= 0 
	then min_value
	else if f >= 1
		then max_value
	else dotted_values!!(toInt ((fromIntegral (length dotted_values)-1) * f))

