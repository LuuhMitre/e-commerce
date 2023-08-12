-- drop database ecommerce;

-- Criação do banco de dados para o cenário de E-Commerce
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criação da tabela Cliente
CREATE TABLE customer(
	idCustomer INT AUTO_INCREMENT PRIMARY KEY,
	Fname VARCHAR(10),
	Minit VARCHAR(3),
	Lname VARCHAR(20),
	CPF CHAR(11) NOT NULL,
	address VARCHAR(255),
    CONSTRAINT unique_cpf_customer UNIQUE (CPF)
    );
ALTER TABLE customer AUTO_INCREMENT=1;

-- Criação da tabela Produto
    -- Size: Dimensões do produto 
CREATE TABLE product(
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(45) NOT NULL,
	classification_kids BOOL DEFAULT FALSE,
	category ENUM('Eletrônico','Vestuário','Brinquedos','Alimentos', 'Móveis', 'Eletrodomésticos') NOT NULL,
    size VARCHAR(10),
	reviews FLOAT DEFAULT 0
    );
ALTER TABLE product AUTO_INCREMENT=1;

-- Criação da tabela Pedidos
CREATE TABLE orders(
	idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idOrderCustomer INT,
    orderStatus ENUM('Cancelado', 'Em processamento', 'Enviado', 'Entregue', 'Pagamento confirmado') DEFAULT 'Em processamento',
    orderDescription VARCHAR(255),
    shipping FLOAT DEFAULT 10,
    paymentCash BOOL DEFAULT FALSE,
    CONSTRAINT fk_order_customer FOREIGN KEY(idOrderCustomer) REFERENCES customer(idCustomer)
		ON UPDATE CASCADE
        ON DELETE SET NULL
    );
ALTER TABLE orders AUTO_INCREMENT=1;
    
-- Criação da tabela Estoque
CREATE TABLE productStorage(
	idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    storageLocation VARCHAR(255),
    quantity INT DEFAULT 0
);
ALTER TABLE productStorage AUTO_INCREMENT=1;

-- Criação da tabela Fornecedor
CREATE TABLE supplier(
	idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    corporateName VARCHAR(255) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE(CNPJ)
);
ALTER TABLE supplier AUTO_INCREMENT=1;

-- Criação da tabela Vendedor
CREATE TABLE seller(
	idSeller INT AUTO_INCREMENT PRIMARY KEY,
    corporateName VARCHAR(255) NOT NULL,
    commercialName VARCHAR(255),
    CNPJ CHAR(15),
    CPF CHAR (9),
    location VARCHAR(255),
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE(CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE(CPF)
    );
ALTER TABLE seller AUTO_INCREMENT=1;

-- Criação da tabela Produto/Vendedor
CREATE TABLE productSeller(
	idPsSeller INT,
    idPsProduct INT,
    quantity INT DEFAULT 1,
    PRIMARY KEY (idPsSeller, idPsProduct),
    CONSTRAINT fk_product_seller FOREIGN KEY(idPsSeller) REFERENCES seller(idSeller),
    CONSTRAINT fk_product_product FOREIGN KEY(idPsProduct) REFERENCES product(idProduct)    
);

-- Criação da tabela Produto/Pedido
CREATE TABLE productOrder(
	idPoOrder INT,
    idPoProduct INT,
    poQuantity INT DEFAULT 1,
	poStatus ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idPoOrder, idPoProduct),
    CONSTRAINT fk_product_order_order FOREIGN KEY (idPoOrder) REFERENCES orders(idOrder),
    CONSTRAINT fk_product_order_product FOREIGN KEY (idPoProduct) REFERENCES product(idProduct)    
);

-- Criação da tabela Localização do Estoque
CREATE TABLE storageLocation(
	idSlStorage INT,
    idSlProduct INT,
    location VARCHAR (255) NOT NULL,
    PRIMARY KEY (idSlStorage, idSlProduct),
    CONSTRAINT fk_storage_location_storage FOREIGN KEY (idSlStorage) REFERENCES productStorage(idProdStorage),
    CONSTRAINT fk_storage_location_product FOREIGN KEY (idSlProduct) REFERENCES product(idProduct)    
);

-- Criação da tabela Produto/Vendedor
CREATE TABLE productSupplier(
	idPsSupplier INT,
    idPsProduct INT,
    psQuantity INT NOT NULL,
    PRIMARY KEY (idPsSupplier, idPsProduct),
    CONSTRAINT fk_product_supplier_supplier FOREIGN KEY (idPsSupplier) REFERENCES supplier(idSupplier),
    CONSTRAINT fk_product_supplier_product FOREIGN KEY (idPsProduct) REFERENCES product(idProduct)    
);
