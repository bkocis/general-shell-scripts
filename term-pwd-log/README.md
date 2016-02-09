#### Logging aids for the command line user. These small scripts were written to serve a purpose of making records of activity through the command line. The motivation behind it is that often, when working on multiple projects or at multitasking, it is easy to lost track where the code, or document is located in the file system. By making custom log files, with custom logging message ability will allow and at least help of keeping track of personal activity. 


#####save_pwd_at_cdl

Stores the result of `pwd` call in a log file. It's execution is tied to the function `cd` (alias `cdl`), and at each time the current directory function is called, the script stores the current working directory path to a log file. 

##### lllogme

Logs an instant message to a file; same as `echo "a custome message" >> to_a_custom.file` with added date and decorations.
