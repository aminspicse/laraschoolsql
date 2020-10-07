create table lib_class(
	lib_cls_id varchar(2) not null unique key,
    class_name varchar(100),
    lib_cls_status int not null default 1,
    foreign key(lib_cls_status) references mst_status(status_id)
)
/*
insert into lib_class(lib_cls_id,class_name)
	values
    ('01','One'),
    ('02','Two'),
    ('03','Three'),
    ('04','Four'),
    ('05','Five'),
    ('06','Six'),
    ('07','Seven'),
    ('08','Eight'),
    ('09','Nine'),
    ('10','Ten'),
    ('11','HSC 1st Year');
    */