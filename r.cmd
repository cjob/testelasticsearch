del results
del json\pet*.json

delete indexes
curl -XDELETE http://localhost:9200/nocontent
curl -XDELETE http://localhost:9200/addcontent
curl -XPOST http://localhost:9200/nocontent -d @mapping.json

copy petstore.bak petstore.json
FOR /L %%N IN (1,1,500) do (
	call i.cmd  %%N
	)