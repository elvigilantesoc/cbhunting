#!/bin/bash -f
./generate_query_feed.py -f ../raw_parts/feedinfo-Dalerts.csv -c ../raw_parts/dalerts.csv -o ../feeds/DeloitteAlerts
./generate_query_feed.py -f ../raw_parts/feedinfo-Dwatch.csv -c ../raw_parts/dwatchlists.csv -o ../feeds/DeloitteWatchlists
./generate_query_feed.py -f ../raw_parts/feedinfo-Dexceptions.csv -c ../raw_parts/dexceptions.csv -o ../feeds/DeloitteExceptions

