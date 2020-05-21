#!/bin/bash -e

echo "
Director {
  Name = bacula-dir
  @/etc/bacula/bacula-sd-password
}

Storage {
  Name = bacula-sd
  WorkingDirectory = \"/var/lib/bacula\"
  PidDirectory = \"/run/bacula\"
  PluginDirectory = \"/usr/lib/bacula\"
  Maximum Concurrent Jobs = 10
  SD Address = 0.0.0.0
  SD Port = 9103
}

Messages {
  Name = Standard

  director = bacula-dir = all
}
" > /etc/bacula/bacula-sd.conf

exit 0
