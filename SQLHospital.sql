-- Active: 1687368827307@@localhost@3306@hospital
CREATE DATABASE Hospital;

USE Hospital;

CREATE TABLE Medico(
    CRM int NOT NULL,
    Especialidade VARCHAR(50),
    DataFormado DATE,
    PRIMARY KEY(CRM)
);

ALTER TABLE Medico ADD COLUMN CH_Matricula int NOT NULL;
ALTER TABLE Medico ADD FOREIGN KEY(CH_Matricula) REFERENCES CorpoHospitalar(Matricula);
CREATE TABLE CorpoHospitalar(
    Matricula int NOT NULL,
    Nome VARCHAR(50),
    Endereco VARCHAR(50),
    CPF int UNIQUE,
    Identidade int UNIQUE,
    DataNasc DATE,
    Origem VARCHAR(100),
    Hos_CNPJ int NOT NULL,
    PRIMARY KEY(Matricula),
    FOREIGN KEY(Hos_CNPJ)
        REFERENCES Hospital(CNPJ)
);
CREATE TABLE Hospital(
    CNPJ int NOT NULL,
    Nome VARCHAR(50),
    Endereco VARCHAR(50),
    Med_CRM int NOT NULL,
    PRIMARY KEY(CNPJ),
    FOREIGN KEY(Med_CRM)
        REFERENCES Medico(CRM)
);
CREATE TABLE Enfermeiro(
    CRE int NOT NULL,
    Categoria VARCHAR(50),
    DataFormado DATE,
    CH_Matricula int NOT NULL,
    PRIMARY KEY(CRE),
    FOREIGN KEY(CH_Matricula)
        REFERENCES CorpoHospitalar(Matricula)
);
CREATE TABLE CorpoAdministrativo(
    CH_Matricula int NOT NULL,
    Categoria VARCHAR(50),
    Nivel int,
    PRIMARY KEY(CH_Matricula),
    FOREIGN KEY(CH_Matricula)
        REFERENCES CorpoHospitalar(Matricula)
);
CREATE TABLE Exame(
    Numero int NOT NULL,
    Nome VARCHAR(50),
    Descricao VARCHAR(50),
    Requisitos VARCHAR(50),
    PRIMARY KEY(Numero)
);
CREATE TABLE Paciente(
    NumProntuario int NOT NULL,
    Nome VARCHAR(50),
    Endereco VARCHAR(50),
    Identidade int UNIQUE,
    FichaMedica VARCHAR(100),
    Hos_CNPJ int NOT NULL,
    PRIMARY KEY(NumProntuario),
    FOREIGN KEY(Hos_CNPJ)
        REFERENCES Hospital(CNPJ)
);
CREATE TABLE Externo(
    Pac_NumProntuario int NOT NULL,
    PRIMARY KEY(Pac_NumProntuario),
    FOREIGN KEY(Pac_NumProntuario)
        REFERENCES Paciente(NumProntuario)
);
CREATE TABLE Interno(
    Pac_NumProntuario int NOT NULL,
    Tratamento VARCHAR(100),
    Diagnostico VARCHAR(100),
    DataSaida DATE,
    DataEntrada DATE,
    PRIMARY KEY(Pac_NumProntuario),
    FOREIGN KEY(Pac_NumProntuario)
        REFERENCES Paciente(NumProntuario)
);
CREATE TABLE Consulta(
    Data DATE NOT NULL,
    Pac_NumProntuario int NOT NULL,
    Med_CRM int NOT NULL,
    Exa_Numero int NOT NULL,
    PRIMARY KEY(Data),
    FOREIGN KEY(Pac_NumProntuario)
        REFERENCES Paciente(NumProntuario),
    FOREIGN KEY(Med_CRM)
        REFERENCES Medico(CRM),
    FOREIGN KEY(Exa_Numero)
        REFERENCES Exame(Numero)
);
CREATE TABLE Requisita(
    Con_Data DATE NOT NULL,
    Exa_Numero int NOT NULL,
    PRIMARY KEY(Con_Data, Exa_Numero),
    FOREIGN KEY(Con_Data)
        REFERENCES Consulta(Data),
    FOREIGN KEY(Exa_Numero)
        REFERENCES Exame(Numero)
);
CREATE TABLE Clinico(
    Med_CRM int NOT NULL,
    PRIMARY KEY(Med_CRM),
    FOREIGN KEY(Med_CRM)
        REFERENCES Medico(CRM)
);
CREATE TABLE Cirurgiao(
    Med_CRM int NOT NULL,
    PRIMARY KEY(Med_CRM),
    FOREIGN KEY(Med_CRM)
        REFERENCES Medico(CRM)
);

CREATE TABLE RealizaCirurgia(
    Data DATE NOT NULL,
    Historico DATE,
    Med_CRM int NOT NULL,
    Pac_NumProntuario int NOT NULL,
    Cir_Num int NOT NULL,
    PRIMARY KEY(Data),
    FOREIGN KEY(Med_CRM)
        REFERENCES Medico(CRM),
    FOREIGN KEY(Pac_NumProntuario)
        REFERENCES Paciente(NumProntuario),
    FOREIGN KEY(Cir_Num)
        REFERENCES Cirurgia(Num)
);

CREATE TABLE Cirurgia(
    Num int NOT NULL,
    Nome VARCHAR(50),
    Descricao VARCHAR(50),
    CuidadosPosOperatorios VARCHAR(50),
    PRIMARY KEY(Num)
);