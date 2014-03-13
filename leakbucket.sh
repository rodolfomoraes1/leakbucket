#!/bin/bash
#
# Contributors:
#     Jeanderson Candido - http://jeandersonbc.github.io
#
MAX_ARGC=2
RUNNING="started"
STOPPED="stopped"
STATUS=$STOPPED

displayHelp() {
    printf "Usage: ./leakbucket.sh [start [dirname]| stop | status]\n\n"
	printf "  ./leakbucket.sh start [dirname]\n"
	printf "    Starts the file monitoring on the given \"dirname\".\n"
	printf "    If none provided, current directory is used.\n\n"

    printf "  ./leakbucket.sh stop\n"
    printf "    Stops the file monitoring\n\n"

    printf "  ./leakbucket.sh status\n"
    printf "    Returns \"started\" if running, \"stopped\" otherwise.\n\n"
}

executeStartCommand() {
	[ ! -d $1 ] && echo "Fatal error: Directory not found!" && exit 1
    echo "Command not implemented yet"
}

executeStopCommand() {
    echo "Command not implemented yet"
}

case $1 in
   start)
       [ $# -gt $MAX_ARGC ] && displayHelp && exit 1

	   # Assume current directory
	   dir="."
	   if [[ $# -eq $MAX_ARGC ]]; then
	       dir=$2
       fi
	   executeStartCommand $dir
	   ;;
   stop)
       [ $# -gt 1 ] && displayHelp && exit 1
	   executeStopCommand
	   ;;
   status)
       [ $# -gt 1 ] && displayHelp && exit 1
	   echo $STATUS
	   ;;
   *)
	   # Unknown command
	   displayHelp
	   ;;
esac
