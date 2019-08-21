#!/bin/bash
usermod -u ${PUID} ${CONT_USER} > /dev/null 2>&1
groupmod -g ${PGID} ${CONT_USER} > /dev/null 2>&1
sed -i -E -e "s/\"AdminPassword\": \"(.+)\",/\"AdminPassword\": \"$ADMIN_PASSWORD\",/g" -e "s/\"StreamKey\": \"(.+)\",/\"StreamKey\": \"$STREAM_KEY\",/g" -e "s/\"RoomAccess\": \"(.+)\",/\"RoomAccess\": \"$ACCESS_MODE\",/g" -e "s/\"RoomAccessPin\": \"\",/\"RoomAccessPin\": \"$ACCESS_PIN\",/g" settings.json
su -s /bin/bash -c "${CONT_CMD}" ${CONT_USER}