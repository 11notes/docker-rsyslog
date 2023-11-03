#!/bin/ash
  if [ -z "${1}" ]; then
    set -- "rsyslogd" \
      -f /rsyslog/etc/rsyslog.conf \
      -n
  fi

  exec "$@"