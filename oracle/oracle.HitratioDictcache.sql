SELECT Trunc(((1 - (SUM (getmisses) / SUM (gets))) * 100),0) "Hit Ratio" FROM v$rowcache;