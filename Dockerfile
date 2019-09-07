FROM hackebein/srcds

ENV \
	SIGNALS_ENABLE="false" \
	# App
	APPS="4020" \
	#
	# API
	# http://steamcommunity.com/dev/apikey
	AUTHKEY="0B972EBD9B0A4178430A6798F47FD6B6" \
	#
	# Public access
	# automatic via API
	GLSTAPP="4000" \
	# manual
	# APPID: 4000
	# http://steamcommunity.com/dev/managegameservers
	GLST="C53DFABBFFB09A83EC71658BDC276B85" \
	#
	# Workshop (require API)
	WORKSHOPCOLLECTIONID="1851312986" \
	#
	# Server config
	TICKRATE="66" \
	MAXPLAYERS="64" \
	GAMEMODE="sandbox" \
	GAMETYPE="0" \
	MAP="gm_flatgrass" \
	MAPGROUP="mg_active" \
	CONFIG="server.cfg" \
	#
	# Other
	CUSTOMPARAMETERS="" \
	#
	# Start parameters
	SRCDSPARAMS="\
		-game garrysmod \
		-tickrate \${TICKRATE} \
		-maxplayers \${MAXPLAYERS} \
		-authkey \${AUTHKEY} \
		+host_workshop_collection \${WORKSHOPCOLLECTIONID} \
		+gamemode \${GAMEMODE} \
		+map \${MAP} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"

COPY cfg $BASEDIR/garrysmod/cfg
