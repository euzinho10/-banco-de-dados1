CREATE TABLE Farmacia 
( 
    idFarmacia INT PRIMARY KEY, -- Adicionado um identificador único para a tabela Farmacia
    tel_farmacia VARCHAR(15),  -- Alterado para VARCHAR para suportar números de telefone
    nome_farmacia VARCHAR(100), -- Alterado para VARCHAR para nomes
    end_farmacia VARCHAR(200),  -- Alterado para VARCHAR para endereços
    CNPJ_farmacia VARCHAR(18) UNIQUE -- Alterado para VARCHAR e adicionado UNIQUE para CNPJ
);

CREATE TABLE Produto 
( 
    cod_produto INT PRIMARY KEY, -- Colocado em ordem para boa prática
    valor_produto DECIMAL(10, 2), -- Alterado para DECIMAL para valores monetários
    qtd_produto INT, 
    idFarmacia INT,
    FOREIGN KEY (idFarmacia) REFERENCES Farmacia (idFarmacia) -- Chave estrangeira corrigida
);

CREATE TABLE Farmaceutico 
( 
    RG_farmaceutico VARCHAR(15) PRIMARY KEY, -- Alterado para VARCHAR para RGs
    nome_farmaceutico VARCHAR(100), -- Alterado para VARCHAR para nomes
    idFarmacia INT,
    FOREIGN KEY (idFarmacia) REFERENCES Farmacia (idFarmacia) -- Chave estrangeira corrigida
);
