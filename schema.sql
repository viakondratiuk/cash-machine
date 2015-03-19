create table if not exists cards (
    id integer primary key autoincrement,
    card_number integer not null,
    pin_code char(100) not null,
    fail_attemps integer not null default 0,
    status integer not null default 0,
    balance decimal(10, 2) not null default 0.0 
);

create table if not exists operations (
    id integer primary key autoincrement,
    card_id integer not null,
    datetime date default (date('now', 'localtime')),
    operation_code integer check(operation_code in (0,1)) NOT NULL DEFAULT 0,
    total decimal(10, 2) not null default 0.0 
);

insert or ignore into cards (id, card_id, pin_code, fail_attemps, status, balance) values (1, 1111111111111111, '1111', 0, 0, 0.0);
insert or ignore into cards (id, card_id, pin_code, fail_attemps, status, balance) values (2, 2222222222222222, '2222', 0, 0, 0.0);
insert or ignore into cards (id, card_id, pin_code, fail_attemps, status, balance) values (3, 3333333333333333, '3333', 0, 0, 0.0);
insert or ignore into cards (id, card_id, pin_code, fail_attemps, status, balance) values (4, 4444444444444444, '4444', 0, 0, 0.0);
