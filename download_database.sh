#!/bin/bash

# download database of SAR imagery (ERS, ENVISat) and save to CSV
echo "$(date): staring retrieve_catalog.py"
python retrieve_catalog.py
echo "$(date): Done"


# convert to sqlite
echo "$(date): staring to_sqlite.py"
python to_sqlite.py
echo "$(date): Done"

# move to  ~/.local/share/asarapi
db_dir=~/.local/share/asarapi
mkdir -p ${db_dir}
echo "$(date): moving catalog.db to ${db_dir}"
mv data/catalog.db  ${db_dir}
echo "$(date): Done"


