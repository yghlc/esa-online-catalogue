#!/bin/bash

# download database of SAR imagery (ERS, ENVISat) and save to CSV
python retrieve_catalog.py

# convert to sqlite
python to_sqlite.py

# move to  ~/.local/share/asarapi
db_dir=~/.local/share/asarapi
mkdir -p ${db_dir}
mv data/catalog.db  ${db_dir}


