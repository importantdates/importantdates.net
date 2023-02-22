#!/usr/bin/env bash

# This script is used to create a new conference in the database.

# The script firsts prompts for the name of the conference, then for
# the details of the conference, as per files in the _conference directory.
CONF_NAME=$1
CONF_DIR=_conferences/$CONF_NAME.md
# Check if the conference already exists.
if [ -e $CONF_DIR ]; then
    echo "Conference $CONF_NAME already exists."
    exit 1
fi

# Prompt for the conference details.
echo "Enter the conference details."
echo "Conference name: $CONF_NAME"
read -p "Conference title: " CONF_TITLE
read -p "Conference website: " CONF_WEBSITE
read -p "Conference category: " CONF_CATEGORY

# Get the current date in YYYY-MM-DD format.
DATE=$(date +%Y-%m-%d)

echo "Creating conference $CONF_NAME in $CONF_DIR."
echo "---" > $CONF_DIR
echo "title: $CONF_TITLE" >> $CONF_DIR
echo "website: $CONF_WEBSITE" >> $CONF_DIR
echo "category: $CONF_CATEGORY" >> $CONF_DIR
echo "timezone: AoE" >> $CONF_DIR
echo "date: $DATE" >> $CONF_DIR
echo "published: $DATE" >> $CONF_DIR
echo "updated: $DATE" >> $CONF_DIR
echo "important_dates: " >> $CONF_DIR
echo "---" >> $CONF_DIR

echo "Conference $CONF_NAME created."
