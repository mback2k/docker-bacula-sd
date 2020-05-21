#!/bin/bash -e

echo "
Autochanger {
  Name = VirtualDiskDrive
  Device = VirtualDiskDev1, VirtualDiskDev2
  Changer Command = \"\"
  Changer Device = \"/dev/null\"
}

Device {
  Name = VirtualDiskDev1
  Media Type = VirtualDisk
  Archive Device = \"/var/backups\"
  LabelMedia = yes
  Random Access = yes
  AutomaticMount = yes
  RemovableMedia = no
  AlwaysOpen = no
  Maximum Concurrent Jobs = 5
}

Device {
  Name = VirtualDiskDev2
  Media Type = VirtualDisk
  Archive Device = \"/var/backups\"
  LabelMedia = yes
  Random Access = yes
  AutomaticMount = yes
  RemovableMedia = no
  AlwaysOpen = no
  Maximum Concurrent Jobs = 5
}
" >> /etc/bacula/bacula-sd.conf

exit 0
