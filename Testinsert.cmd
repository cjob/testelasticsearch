
echo deleting index
curl -XDELETE http://localhost:9200/nocontent
curl -XDELETE http://localhost:9200/addcontent
echo deleting results
del TestInsert.results

echo adding without content
echo off
ECHO | TIME /T
setlocal EnableDelayedExpansion
For /L %%G in (1,1,1000) DO (
	
	echo %%G !TIME! >> TestInsert.results
	
	curl --silent -XPUT "http://localhost:9200/nocontent/json/%%G" -d @Opportunities.json 
)

