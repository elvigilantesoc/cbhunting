# Lazerbearsharkpig
Test repository.  For testing.

To use the feed creation stuff, you also need https://github.com/carbonblack/cbfeeds installed, and you need a link to it in the buildcode directory.  i.e. ln -s ~/cbfeeds/cbfeeds/ .

The basics are this:

buildcode -  Scripts, API, etc needed to make the feeds

--makefeeds.sh - a quick script I made to auto-generate all three of my feeds.  It also shows the cmdline needed to make any generic feed.
  
--clearfeeds.sh - Eventually, when you test intel feeds, you end up with crap in the DB.  This will clear that crap.  However, it has to run on the CB server itself.  I don't use a cloud server.  Looking at it will show you the basic process to use for your own feeds, when they fill up your database with (no joke) 23 duplicates of the same thing.

feeds - These are the feeds themselves.  Add them to Carbon Black under "Intelligence Feeds" by direct url to the RAW github link.
				ie https://raw.githubusercontent.com/boingomw/Lazerbearsharkpig/master/feeds/DeloitteAlerts

forager-feeds - Testing I'm doing with making the forager data one big feed

raw_parts - The meat of the matter.  The parts that make up a JSON formatted intel feed

--*.png - small and large icons for the intel feed page.  NOTE: Sizing is EXACT for the small icon.  It has to be 50x50, no bigger, no smaller.  Things will fail silently if its the wrong size.

--feedinfo-* - CSV formatted metadata about the feed to be.

--other .csv files - The searches for the intel feed.  "title,index_type,link,score,query"

----title - The title of this qery

----index_type - events or modules   ---- I've only ever used events

----link - a URL to any metadata or other helpful info concerning this particular query

----score - how likely it is to be bad, between 1 and 100

----query - the actual query.  This is the exact format you would put the into the search query box on Carbon Black.
  


