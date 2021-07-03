#!/bin/bash
echo "[ \
		{ \
        		\"url\" : \"jdbc:postgresql://$DB_HOST:$DB_PORT/X\", \
	                \"username\" : \"$DB_USER\", \
        	        \"password\" : \"$DB_PASSWORD\", \
               		\"includes\": [], \
	                \"excludes\": [], \
        	        \"enable\" : true \
	        } \
      ]" > /opt/o2server/config/externalDataSources.json

/opt/o2server/start_linux.sh
