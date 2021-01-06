#!/bin/bash

echo "Seting folder upload..."
find upload -type d -exec chmod 770 {} \;
find upload -type d -exec chmod g+s {} \;
find upload -type f -exec chmod 660 {} \; 2>&1 | grep -v "Operation not permitted"