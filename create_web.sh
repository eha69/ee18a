#/bin/bash
#Some Varibles and such
filename="blaha.html"
#Function to print out help to user...
usage () {
	sleep 5
	clear
	echo "Usage: $0 [ -pP File Path ] [ -hH This Help ]" 1>&2
	exit 0
}
#Abnormal exit function
exit_abnormal () {
	clear
	echo "Usage: $0 [ -pP File Path ] [ -hH Print Help ]" 1>&2
	exit 1
}
#This is our function to create the web-file
create_file() {
namepath="$path$filename"
{
echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "</head>"
echo "<body>"
echo "<h1>RUN ME!</h1>"
echo "<br></br>"
echo "<br></br>"
echo "<br></br>"
echo "<tt>Run me next!</tt>"
echo "<p>Hej</p>"
echo "<p>Hellow</p>"
echo "</body>"
echo "</html>"
} > "$namepath"
sleep 5
clear
exit 0
}
#Always clear screen!
 clear;
 #This is what we'll do if no arguments is passed att command line or an unknown argument is passed!
 no_opts() {
 while true; do
 read -p "Vill du köra filen?" yn
case $yn in
[Yy/Yesyes]* ) break;;
[Nn/Nono]* ) echo "Inga ändringar har skett";  exit;;
 esac
done
read -p "Vart vill du lägga filen?" read path
create_file
}
while getopts :p:P:h:H: option
do
	case "${option}"
		in
	p)
	path=${OPTARG}
	echo "Creating web file $path$filename"
	create_file
	;;
	#Catch user inputing captial P
	P)
	path=${OPTARG}
	echo "Creating web file $path$filename"
	create_file
	;;
	h)	usage
	;;
	#Cetch user inputing capital H
	H) usage
	;;
	*) exit_abnormal
	       echo $option	
		;;
esac
done
if [ $option == "?" ]
then
	echo "No arguments found, running in interactive mode..."
	sleep 5 
	clear
	no_opts
else
echo "Unknown argument $option"
exit_abnormal
fi
