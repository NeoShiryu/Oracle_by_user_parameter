SELECT CASE WHEN RTrim(xmlagg(xmlelement(e,message_text, Chr(10)).extract('//text()')),';') <> Chr(10) THEN RTrim(xmlagg(xmlelement(e,message_text, Chr(10)).extract('//text()')),';') ELSE 'none' END erros FROM v$alert_log WHERE ORIGINATING_TIMESTAMP > systimestamp - INTERVAL '30' MINUTE AND message_text LIKE '%ORA-%';