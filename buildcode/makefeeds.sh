#!/bin/bash -f
cd ../raw_parts
../buildcode/generate_query_feed.py -f ../raw_parts/feedinfo-Dalerts.csv -c ../raw_parts/dalerts.csv -o ../feeds/DeloitteAlerts
../buildcode/generate_query_feed.py -f ../raw_parts/feedinfo-Dwatch.csv -c ../raw_parts/dwatchlists.csv -o ../feeds/DeloitteWatchlists
../buildcode/generate_query_feed.py -f ../raw_parts/feedinfo-Dexceptions.csv -c ../raw_parts/dexceptions.csv -o ../feeds/DeloitteExceptions

