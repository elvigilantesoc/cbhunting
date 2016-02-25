flist='DeloitteAlerts DeloitteWatchlists DeloitteExceptions'
for name in $flist
	do  
		id=`psql cb -p 5002 -c "select id from alliance_feeds where name  = '$name';" -t`
		if [ "$id" != "" ]
			then
			 psql cb -p 5002 -c "delete from alliance_feeds where manually_added = TRUE and name = '$name';"
			 curl "http://127.0.0.1:8080/solr/cbfeeds/update/?commit=true" -H "Content-Type: text/xml" -d "<delete><query>(feed_id:$id)</query></delete>"
			 /usr/share/cb/cbfeed_scrubber $name -u -v
		fi
	done
