####save_pwd_at_cdl

Stores the result of `pwd` call in a log file. It's execution is tied to the function `cd` (alias `cdl`), and at each time the current directory function is called, the script stores the current working directory path to a log file. 
