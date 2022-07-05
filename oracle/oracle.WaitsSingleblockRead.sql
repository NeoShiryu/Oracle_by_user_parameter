SELECT sum(decode(event,'db file sequential read',average_wait,0))/100 SingleBlockRead FROM GV$system_event WHERE event not in ('SQL*Net message from client','SQL*Net more data from client','pmon timer', 'rdbms ipc message','rdbms ipc reply', 'smon timer');