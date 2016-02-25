#!/bin/bash -f
./generate_query_feed.py -f feedinfo-Dalerts.csv -c dalerts.csv -o ../feeds/DeloitteAlerts
./generate_query_feed.py -f feedinfo-Dwatch.csv -c dwatchlists.csv -o ../feeds/DeloitteWatchlists
./generate_query_feed.py -f feedinfo-Dexceptions.csv -c dexceptions.csv -o ../feeds/DeloitteExceptions

