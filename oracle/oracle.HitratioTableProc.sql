select trunc(gethitratio*100,0) "get_pct" FROM v$librarycache where namespace = 'TABLE/PROCEDURE';