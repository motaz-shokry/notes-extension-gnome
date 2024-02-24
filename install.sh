#!/bin/bash

glib-compile-schemas ./notes@maestroschan-motaz.fr/schemas

if (( $EUID == 0 )); then
	INSTALL_DIR="/usr/share/gnome-shell/extensions"
else
	INSTALL_DIR="$HOME/.local/share/gnome-shell/extensions"
fi
mkdir -p $INSTALL_DIR

echo "Installing extension files in $INSTALL_DIR/notes@maestroschan-motaz.fr"
cp -r notes@maestroschan-motaz.fr $INSTALL_DIR

echo "Done."
exit 0

