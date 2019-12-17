#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

to_preload() {
	awk 'NF' "$DIR/preload_list" | sed '/^#/d'
}

cat <<EOL
package loader

import (
EOL

to_preload | while read -r name path num; do
	echo "plugin$name \"$path\""
done | sort -u

cat <<EOL
)


// DO NOT EDIT THIS FILE
// This file is being generated as part of plugin build process
// To change it, modify the plugin/loader/preload.sh

func init() {
EOL

to_preload | while read -r name path num; do
	case "$num" in
		'*') echo "	Preload(plugin$name.Plugins...)" ;; # All plugins
		*) echo "	Preload(plugin$name.Plugins[$num])" ;; # A specific plugin
	esac
done

echo "}"