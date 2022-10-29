module Rendering
( meta_display 
) where  

import Ascii_values

n = 20
m = 10
x = [ [ fromIntegral j / fromIntegral n | j <- [0..n-1] ] | i <- [0..m-1] ]


--applyTwice :: (a -> a) -> a -> a  
--applyTwice f x = f (f x)  

print_matix :: [[Float]] -> Int -> IO ()
print_matix a index = 
	do	
		if index < length a
			then do 
				print_line (a!!index) 0
				print_matix a (index+1)
			else putStr "\n"

print_line :: [Float] -> Int -> IO ()
print_line a index = 
	do	
		if index < length a
			then do
				--putStr (float_to_val (a!!index) ) -- ++ " ")
				putStr (float_to_dotval (a!!index) )
				print_line a (index+1)
			else putStr "\n"



meta_display :: IO ()
meta_display =
  	do	
  		print_matix x 0
    	--putStrLn (show x)