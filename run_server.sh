#!/bin/bash -x

unset DISPLAY
YAML_FILE="Ratchet and Clank 3.yaml"
if [[ ! -e "./Players/$YAML_FILE" ]]; then
    python3 Launcher.py "Generate Template Options"
    cp "Players/Templates/${YAML_FILE}" ./Players
fi

rm -rf output/*
python3 Generate.py

OUTPUT=$(ls output/*zip)
python3 MultiServer.py $OUTPUT

