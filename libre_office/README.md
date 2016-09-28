###LibreOffice related 


#### saving a backup of the recently opened files. 

read out the file and stores the list of recently opened files into a logfile

bash script: 
`libreoffice_recently_used.sh`

#### creating page breaks and page styles 

1. 'Style and Formatting' -> page style settings -> make new based on 'Default Style' 'df'
2. insert "Manual break" -> assign for the new section the page style 'df'
3. change footer -> now each section will have it's own footer

#### formatting image captions and caption frames 

1. insert image
1.1 resize if needed
2. add caption 
3. edit frame properties, by selecting size width to 100% relative 
4. resize the image again

as a result the caption text will be as long and the page, and not only under the figure 
