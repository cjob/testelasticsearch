
sed -e 's/pet/pet%1/g' petstore.json > pet%1store.json
for %%I IN (pet%1store.json) do @echo pet%1store.json %%~zI >> results
curl -XPUT "http://localhost:9200/api/json/%1" -d @pet%1store.json
curl -POST "http://localhost:9200/api/_flush"
call getsizes.cmd  ..\elasticsearch-1.4.2\data >> results