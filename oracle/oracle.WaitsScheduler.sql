Select Nvl(sum(time_waited/100)/sum(total_waits),0) avg_secunds From v$system_wait_class where wait_class = 'Scheduler';