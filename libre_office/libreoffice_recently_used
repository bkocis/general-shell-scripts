#! /bin/bash

<< C1

To save the Recently opened documents of the LibreOffice, this little code retrieves the lines as stores them 

C1

xcu="/home/mnost/.config/libreoffice/4/user/registrymodifications.xcu"


echo "#    " >> /home/mnost/.libre_recently_opened
echo "#    " >> /home/mnost/.libre_recently_opened
`date >> /home/mnost/.libre_recently_opened`
echo "#    " >> /home/mnost/.libre_recently_opened
`grep "PickList.*>file:///home/mnost/" $xcu | grep ">file://" | awk -F'file:///' '{print $2}' | awk -F'</value>' '{print $1}' | sort >> /home/mnost/.libre_recently_opened`


