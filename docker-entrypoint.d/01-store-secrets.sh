#!/bin/bash -e

if [ -f "${BACULA_STORAGE_PASS_FILE}" ]; then
    BACULA_STORAGE_PASS="$(< "${BACULA_STORAGE_PASS_FILE}")"
fi

echo "
Password = \"${BACULA_STORAGE_PASS}\"
" > /etc/bacula/bacula-sd-password

chmod 600 /etc/bacula/bacula-sd-password

exit 0
