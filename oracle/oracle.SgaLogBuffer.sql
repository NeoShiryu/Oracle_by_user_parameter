SELECT TO_CHAR(ROUND(SUM(decode(pool,NULL,decode(name,'log_buffer',(bytes),0),0)),2)) sga_lbuffer FROM V$SGASTAT;