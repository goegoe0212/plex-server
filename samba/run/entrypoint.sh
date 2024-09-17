#!/bin/sh
credential_ro=/run/secrets/credential
credential_rw=/run/credential
cp $credential_ro $credential_rw
pdbedit -i smbpasswd:$credential_rw

smbd --foreground --no-process-group