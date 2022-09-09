#!/bin/bash

sudo mkdir -p /etc/dconf/profile

cat <<EOF | sudo tee /etc/dconf/profile/user
user-db:user
system-db:local
EOF

sudo mkdir -p /etc/dconf/db/local.d

cat <<EOF | sudo tee /etc/dconf/db/local.d/00-cubic
[org/cinnamon/theme]
name='Bill'

[org/cinnamon/desktop/interface]
gtk-theme='Bill'

[org/cinnamon/desktop/interface]
icon-theme='Monday'

EOF

sudo dconf update
