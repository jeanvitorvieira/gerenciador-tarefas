drop table if exists tarefa;
drop table if exists usuario;

create database if not exists `gerenciador_tarefas`;
use `gerenciador_tarefas`;

create table usuario
(
    id int auto_increment primary key,
    nome varchar(150) not null,
    email varchar(100) not null,
    senha varchar(255) not null,
    constraint email unique (email)
);

create table tarefa
(
    id int auto_increment primary key,
    titulo varchar(150) not null,
    descricao varchar(255) null,
    status enum('Pendente', 'Concluída') not null,
    data_criacao timestamp default current_timestamp() null,
    data_limite datetime not null,
    id_usuario int not null,
    constraint `fk_tarefa_usuario` foreign key (id_usuario) references usuario (id)
);

create index id_usuario on tarefa (id_usuario);