CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE endereco_aluno (
    id_endereco INTEGER PRIMARY KEY,
    logradouro CHAR(100),
    bairro CHAR(50),
    cidade CHAR(50),
    cep CHAR(10)
);

CREATE TABLE aluno (
    id_aluno INTEGER PRIMARY KEY,
    nome CHAR(100),
    cpf CHAR(14),
    email CHAR(100),
    data_de_nascimento CHAR(10),
    id_endereco INTEGER,
    FOREIGN KEY (id_endereco) REFERENCES endereco_aluno(id_endereco)
);

CREATE TABLE endereco_professor (
    id_endereco INTEGER PRIMARY KEY,
    logradouro CHAR(100),
    bairro CHAR(50),
    cidade CHAR(50),
    cep CHAR(10)
);

CREATE TABLE professor (
    id_professor INTEGER PRIMARY KEY,
    nome CHAR(100),
    telefone CHAR(15),
    cpf CHAR(14),
    id_endereco INTEGER,
    FOREIGN KEY (id_endereco) REFERENCES endereco_professor(id_endereco)
);

CREATE TABLE cursos (
    id_cursos INTEGER PRIMARY KEY,
    nome CHAR(100),
    descricao CHAR(200),
    id_aluno INTEGER,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
);

CREATE TABLE disciplina (
    id_disciplina INTEGER PRIMARY KEY,
    nome CHAR(100),
    carga_horaria CHAR(10),
    id_cursos INTEGER,
    id_professor INTEGER,
    FOREIGN KEY (id_cursos) REFERENCES cursos(id_cursos),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);
