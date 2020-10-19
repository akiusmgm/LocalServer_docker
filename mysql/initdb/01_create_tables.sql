create table vulns_
(
    id serial primary key,
    vuln_name varchar(64) unique not null,
    report_text text not null,
    vuln_rank enum('Info','Low','Medium','High','Critical')
);
create table vulns
(
    id serial primary key,
    name_en varchar(64),
    name_jp varchar(64) unique not null,
    issue text,
    PoC text,
    severity tinyint,
    method tinyint
);
create table method
(
    id tinyint primary key,
    name varchar(64)
);
create table severity
(
    id tinyint primary key,
    name varchar(64)
);