#!/bin/bash

# Original
#nodejs server.js login & nodejs server.js zipline & nodejs server.js snow & nodejs server.js sleet & nodejs server.js marshmallow & nodejs server.js deepfreeze & nodejs server.js blizzard & nodejs server.js beanie & nodejs server.js ascent & nodejs server.js antarctic & nodejs server.js abominable & nodejs server.js redemption
#nodejs server.js login & nodejs server.js blizzard & nodejs server.js redemption

# Settings
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SERVER_PREFIX="cp-"
PRODUCTION=0
declare -a SERVERS=("login" "blizzard" "redemption")

# If you are in development mode
if [ "$PRODUCTION" -eq "0" ]; then
	echo -e "#### Starting servers in development mode ####"
fi

# Iterate through the ${SERVERS} array
for i in "${SERVERS[@]}"; do
	echo -e "$(tput sgr0)$(tput setaf 6)Launching ${i} ...$(tput sgr0)"

	# If you are in development mode
	if [ "$PRODUCTION" -eq "0" ]; then
		# Spawn the server as a job
		nodejs ${DIR}/server.js "${i}" &
	else
		# Spawn the server in a screen
		screen -S "${SERVER_PREFIX}${i}" -dmS nodejs ${DIR}/server.js "${i}"
	fi
done
