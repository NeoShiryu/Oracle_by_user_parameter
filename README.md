this template was tested with oracle 11c and zabbix 5.0.24

here what you need to do:

1. Create an Oracle DB user for monitoring:

		CREATE USER zabbix_mon IDENTIFIED BY <PASSWORD>;

		-- Grant access to the zabbix_mon user.

		GRANT CONNECT, CREATE SESSION TO zabbix_mon;
		GRANT SELECT ON v$instance TO zabbix_mon;
		GRANT SELECT ON v$database TO zabbix_mon;
		GRANT SELECT ON v$sysmetric TO zabbix_mon;
		GRANT SELECT ON v$system_parameter TO zabbix_mon;
		GRANT SELECT ON v$session TO zabbix_mon;
		GRANT SELECT ON v$recovery_file_dest TO zabbix_mon;
		GRANT SELECT ON v$active_session_history TO zabbix_mon;
		GRANT SELECT ON v$osstat TO zabbix_mon;
		GRANT SELECT ON v$restore_point TO zabbix_mon;
		GRANT SELECT ON v$process TO zabbix_mon;
		GRANT SELECT ON v$datafile TO zabbix_mon;
		GRANT SELECT ON v$pgastat TO zabbix_mon;
		GRANT SELECT ON v$sgastat TO zabbix_mon;
		GRANT SELECT ON v$log TO zabbix_mon;
		GRANT SELECT ON v$archive_dest TO zabbix_mon;
		GRANT SELECT ON v$asm_diskgroup TO zabbix_mon;
		GRANT SELECT ON sys.dba_data_files TO zabbix_mon;
		GRANT SELECT ON DBA_TABLESPACES TO zabbix_mon;
		GRANT SELECT ON DBA_TABLESPACE_USAGE_METRICS TO zabbix_mon;
		GRANT SELECT ON DBA_USERS TO zabbix_mon;

2. Copy oracle/ to Zabbix agent home directory /var/lib/zabbix/. The oracle/ directory contains the files needed to obtain metrics from OracleDB.

3. Set environment variables ORACLE_BASE, ORACLE_HOME, NLS_LANG, PATH (with bin of oracle) to zabbix user, it's need permission to execute sqlplus

4. Copy template_db_oracle_user_parameter.conf to Zabbix agent configuration directory /etc/zabbix/zabbix_agentd.d/ and restart Zabbix agent service.

5. Import template file to Zabbix and link it to the target host

6. Set {$ORA_USER}, {$ORA_PASS},and {$ORA_SERVER} macros values.

