del results
del pet*.json
copy petstore.bak petstore.json
FOR /L %%N IN (1,1,1000) do (
	call i.cmd  %%N
	)