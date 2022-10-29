module Test_fun
( test_main 
) where  

--import System.Console.ANSI
-- https://hackage.haskell.org/package/ansi-terminal-0.6.2.3/docs/System-Console-ANSI.html

loading_animation :: [String]
loading_animation = [
	"[        ]",
	"[=       ]",
	"[===     ]",
	"[====    ]",
	"[=====   ]",
	"[======  ]",
	"[======= ]",
	"[========]",
	"[ =======]",
	"[  ======]",
	"[   =====]",
	"[    ====]",
	"[     ===]",
	"[      ==]",
	"[       =]",
	"[        ]",
	"[        ]"]

loading_bar :: Int -> IO()
loading_bar frame = 
	do
		putStr (loading_animation!!frame ++ "\r")
		if frame+1 >= length loading_animation
		then loading_bar 0
		else loading_bar (frame+1)

{-test_main :: IO ()
test_main =
  	do
    	putStrLn "Hello World :)"
    	loading_bar 0-}

test_main =
  	do
	  putStrLn $ "\ESC[0mdefault"
	  putStrLn $ "\ESC[30mblack"
	  putStrLn $ "\ESC[31mred"
	  putStrLn $ "\ESC[32mgreen"
	  putStrLn $ "\ESC[33myellow"
	  putStrLn $ "\ESC[34mblue"
	  putStrLn $ "\ESC[35mmagenta"
	  putStrLn $ "\ESC[36mcyan"
	  putStrLn $ "\ESC[37mwhite"
	  putStrLn $ "\ESC[90mblack"
	  putStrLn $ "\ESC[91mred"
	  putStrLn $ "\ESC[92mgreen"
	  putStrLn $ "\ESC[93myellow"
	  putStrLn $ "\ESC[94mblue"
	  putStrLn $ "\ESC[95mmagenta"
	  putStrLn $ "\ESC[96mcyan"
	  putStrLn $ "\ESC[97mwhite"