#!/bin/bash

export $(cat ~/scripts/.env | xargs) && /usr/bin/python3 ~/colouring-london/maintenance/extract_data/extract_data.py
