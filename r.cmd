del results
del json\pet*.json

rem delete indexes
rem curl -XDELETE 'http://localhost:9200/nocontent
rem curl -XPOST 'http://localhost:9200/nocontent' -d 
rem '{
rem    "mappings" : {
rem        "json": {
rem            "_source": {"enabled": false} }
rem        }
rem    }
rem}''

copy petstore.bak petstore.json
FOR /L %%N IN (1,1,1000) do (
	call i.cmd  %%N
	)