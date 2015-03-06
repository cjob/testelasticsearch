For /L %%G in (1,1,1000) DO (
 	sed -e 's/i/%%G/g' Opportunities.json > json\Opportunities%%G.json
 )