
echo off
sed -e 's/pet/pet%1/g' petstore.json > json\pet%1store.json
echo adding with content
curl -XPUT "http://localhost:9200/addcontent/json/%1" -d @json\pet%1store.json
curl -POST "http://localhost:9200/addcontent/_flush"
echo adding without content
curl -XPUT "http://localhost:9200/nocontent/json/%1" -d @json\pet%1store.json
curl -POST "http://localhost:9200/nocontent/_flush"


>output.tmp call getsizes.cmd  .
>>output.tmp call getsizes.cmd  ..\elasticsearch-1.4.2\data\elasticsearch\nodes\0\indices\

<output.tmp (
  set /p line1=
  set /p line2=
  set /p line3=
)
echo %line1% %line2% %line3% >> results