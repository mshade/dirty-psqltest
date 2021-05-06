CREATE TABLE IF NOT EXISTS films (
    code        char(5),
    title       varchar(40) NOT NULL,
    date_prod   date,
    kind        varchar(10),
    len         interval hour to minute
);

INSERT INTO films (code, title)
VALUES ('abcde', 'this is a film.');

