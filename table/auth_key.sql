create table auth_key(
	auth_code varchar(6) not null unique key,
    inst_code int not null,
    inst_name varchar(100)
)