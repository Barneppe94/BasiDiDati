create database if not exists universita;
use universita;

create table if not exists studente (
    matricola           numeric(6),
    corso_laurea        varchar(50),
    nome                varchar(30),
    cognome             varchar(30),
    data_nascita        date,
    codice_fiscale      char(16),
    foto                mediumblob
);

create table if not exists docente (
    matricola           numeric(6),
    dipartimento        varchar(50),
    nome                varchar(30),
    cognome             varchar(30),
    data_nascita        date,
    codice_fiscale      char(16),
    foto                mediumblob
);

create table if not exists modulo (
    codice              numeric(2),
    nome                varchar(30),
    descrizione         varchar(1000),
    CFU                 numeric(2)
);

create table if not exists esame (
    matricola_studente  numeric(6),
    codice_modulo       numeric(2),
    matricola_docente   numeric(6),
    data_esame          date,
    voto                numeric(2),
    note                varchar(1000)
);

insert into studente
    values (123456, 'Informatica e Comunicazione Digitale', 'Giuseppe', 'Barnaba', '1994-04-22', 'BRNGPP94D22XXXXX', null);

insert into docente
    values (224466, 'Dipartimento di Informatica', 'Mario', 'Bini', '1967-11-30', 'BNIMRI67P30XXXXX', null);

insert into modulo
    values (01, 'Programmazione', 'Corso di programmazione base', 9);

insert into esame
    values (123456, 01, 224466, '2020-02-10', 27, null);