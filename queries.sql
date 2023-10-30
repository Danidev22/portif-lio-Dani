
table Funcionarios {
    Matricula INT [primary key]
    CPF VARCHAR(11) UNIQUE
    DataNascimento DATE
    Cargo VARCHAR(255)
};


table EPIs {
    ID INT [primary key]
    Nome VARCHAR(255)
    Descricao TEXT
};

table Funcionario_EPI {
    ID INT [primary key]
    Funcionario_Matricula INT
    EPI_ID INT
    FOREIGN KEY (Funcionario_Matricula) REFERENCES Funcionarios(Matricula),
    FOREIGN KEY (EPI_ID) REFERENCES EPIs(ID)
};
