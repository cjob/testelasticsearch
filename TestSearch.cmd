echo off
del TestSearch.results
setlocal EnableDelayedExpansion
For /L %%G in (1,1,100) DO (
	For /L %%G in (1,1,10) DO (
		curl -XGET --silent http://localhost:9200/nocontent/json/_search/exists?q:name:BudgetedFlag
		)
	echo %%G !TIME! >> TestSearch.results
)