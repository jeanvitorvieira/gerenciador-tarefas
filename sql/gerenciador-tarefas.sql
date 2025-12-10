create database gerenciador_tarefas;

create table usuario(
	id varchar(36) not null primary key,
	nome varchar(150) not null,
	email varchar(100) unique not null,
	senha varchar(255) not null
)

create table tarefa(
	id varchar(36) not null primary key,
	titulo varchar(150) not null,
	descricao varchar(255),
	status ENUM('Pendente', 'Concluída') not null,
	data_criacao timestamp default current_timestamp,
	data_limite datetime not null,
	id_usuario varchar(36) not null,
	foreign key (id_usuario) references usuario(id)
);