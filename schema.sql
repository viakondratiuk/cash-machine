create table if not exists cards (
    id integer primary key autoincrement,
    cc_number char(16) not null unique,
    pin char(32) not null,
    failed_attempts integer not null default 0,
    status text check(status in('active', 'blocked')) not null default 'active',
    balance integer not null default 0
);

create table if not exists operations (
    id integer primary key autoincrement,
    card_id integer not null,
    datetime datetime default (datetime('now', 'localtime')),
    operation_code text check(operation_code in ('balance', 'withdraw')) not null,
    total integer not null
);

insert or ignore into cards (cc_number, pin, balance) values ('0000000000000000', '4a7d1ed414474e4033ac29ccb8653d9b', 1000);
insert or ignore into cards (cc_number, pin, balance) values ('1111111111111111', 'b59c67bf196a4758191e42f76670ceba', 1000);
insert or ignore into cards (cc_number, pin, balance) values ('2222222222222222', '934b535800b1cba8f96a5d72f72f1611', 1000);
