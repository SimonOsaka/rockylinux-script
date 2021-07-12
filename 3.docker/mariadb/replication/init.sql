create user monitor@'%' identified by 'monitor';
grant replication client on *.* to monitor@'%';

flush privileges;
