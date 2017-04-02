#!/bin/bash
# @file To start nodejs program
# @author guillain SANCHEZ <guillain@gmail.com>
# @license LGPL-3.0
# @settings:
# @@ dev
# @@ prod
#

#curl -k -X POST https://login.microsoftonline.com/botframework.com/oauth2/v2.0/token -d "grant_type=client_credentials&client_id=${APP_ID}&client_secret=${APP_PASSWORD}&scope=${APP_URL}.default"

APP='teamsbot.js'
APP_DIR='/var/www/teamsBot'
LOG_DIR="${APP_DIR}/log"

# For the manual mode and the tunneling
# ngrok http 80
# lt -s mytest -p 80

cd "${APP_DIR}"

case $1 in
  start)
    pm2 start "${APP}" \
    --log    "${LOG_DIR}/all.log" \
    --output "${LOG_DIR}/app.log" \
    --error  "${LOG_DIR}/err.log" \
    --merge-logs \
    --log-date-format="YYYY-MM-DD HH:mm Z"
  ;;
  stop)
    pm2 stop "${APP}";;
  restart)
    $0 stop
    $0 start
    ;;
  show)
    pm2 show "${APP}";;
  status)
    pm2 status "${APP}";;
  log)
    pm2 log "${APP}";;
  manual)
    DEBUG=* node "${APP}";;
  *) echo "command not found";;
esac

