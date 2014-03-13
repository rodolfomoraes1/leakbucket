#!/bin/bash
#
# Contributors:
#     Jeanderson Candido - http://jeandersonbc.github.io
#
ARGCOUNTER=1

displayHelp() {
    printf "\nUsage: ./leakbucket.sh [start [dirname]| stop | status]\n\n"
	printf "  ./leakbucket.sh start [dirname]\n"
	printf "    Starts the file monitoring on the given \"dirname\".\n"
	printf "    If none provided, current directory is used.\n\n"

    printf "  ./leakbucket.sh stop\n"
    printf "    Stops the file monitoring\n\n"

    printf "  ./leakbucket.sh status\n"
    printf "    Returns \"started\" if running, \"stopped\" otherwise.\n\n"
}

# Input validation
if [[ $ARGCOUNTER -ne $# ]]; then
   displayHelp
fi
