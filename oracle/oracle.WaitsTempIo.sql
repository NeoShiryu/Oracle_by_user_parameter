SELECT sum(decode(event,'direct path read temp',average_wait, 'direct path write temp',average_wait,0))/100 temp_io FROM GV$system_event WHERE event not in ('SQL*Net message from client','SQL*Net more data from client','pmon timer', 'rdbms ipc message','rdbms ipc reply', 'smon timer');