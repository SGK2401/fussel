#!/usr/bin/env bash
set -e

SCRIPT_PATH="${BASH_SOURCE[0]}"

CURRENT_PATH=$(dirname $SCRIPT_PATH)
cd $CURRENT_PATH/fussel

python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

cd web
yarn install

cd $CURRENT_PATH/fussel

./fussel.py
