-- drop database ecommerce;

-- Criação do banco de dados para o cenário de E-Commerce
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- Criar tabela Cliente
CREATE TABLE IF NOT EXISTS customer(
	idCustomer INT AUTO_INCREMENT PRIMARY KEY,
	Fname VARCHAR(15) NOT NULL,
	Minit VARCHAR(3),
	Lname VARCHAR(25) NOT NULL,
    Bdate DATE,
	email VARCHAR(45) NOT NULL,
	CPF CHAR(11),
    CNPJ CHAR(15),
    customerType ENUM('PF', 'PJ') NOT NULL,
	address VARCHAR(100) NOT NULL,
    phone CHAR(11),
    CONSTRAINT unique_cpf_customer UNIQUE (CPF),
    CONSTRAINT unique_cnpj_customer UNIQUE (CNPJ)
    );

-- Criar tabela Produto
    -- Size: Dimensões do produto 
CREATE TABLE IF NOT EXISTS product(
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(45) NOT NULL,
	classification_kids BOOL DEFAULT FALSE,
	category ENUM('Eletrônico','Vestuário','Brinquedos','Alimentos', 'Móveis', 'Eletrodomésticos') NOT NULL,
    size VARCHAR(10),
	reviews FLOAT DEFAULT 0
    );

-- Criar tabela Cartões
CREATE TABLE IF NOT EXISTS cards(
	idCard INT AUTO_INCREMENT,
    idCustomer INT NOT NULL,
    Cname VARCHAR(50) NOT NULL,
    Cnum CHAR(16) NOT NULL,
    expDate DATE NOT NULL,
    cvv CHAR(3) NOT NULL,
    cardType ENUM('Crédito', 'Débito') NOT NULL,
    PRIMARY KEY(idCard, idCustomer),
    CONSTRAINT fk_card_customer FOREIGN KEY(idCustomer) REFERENCES customer(idCustomer)
);

-- Criar tabela Pedidos
CREATE TABLE IF NOT EXISTS orders(
	idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idCustomer INT NOT NULL,
    orderStatus ENUM('Cancelado', 'Em processamento', 'Pagamento confirmado') DEFAULT 'Em processamento',
    orderDescription VARCHAR(255),
    shipping FLOAT DEFAULT 10,
    orderDate DATE,
    CONSTRAINT fk_order_customer FOREIGN KEY(idCustomer) REFERENCES customer(idCustomer)
    );
    
-- Criar tabela Pagamento
CREATE TABLE IF NOT EXISTS payments(
	idPayment INT AUTO_INCREMENT,
    idOrder INT,
    idCustomer INT,
    paymentType ENUM('Boleto', 'Cartão'),
    idCard INT,
    PRIMARY KEY(idPayment, idOrder, idCustomer),
    CONSTRAINT fk_payments_order FOREIGN KEY(idOrder) REFERENCES orders(idOrder),
    CONSTRAINT fk_payments_card FOREIGN KEY(idCard) REFERENCES cards(idCard)
);


-- Criar tabela Entrega
CREATE TABLE IF NOT EXISTS delivery(
	idOrder INT PRIMARY KEY,
    Dstatus ENUM('Pedido em separação', 'Recolhido pela transportadora', 'Em transporte', 'Pedido saiu para entrega', 'Entregue') DEFAULT 'Pedido em separação',
    tracking CHAR(10),
	CONSTRAINT fk_delivery_order FOREIGN KEY(idOrder) REFERENCES orders(idOrder)
);
    
-- Criar tabela Estoque
CREATE TABLE IF NOT EXISTS productStorage(
	idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    storageLocation VARCHAR(255),
    quantity INT DEFAULT 0
);

-- Criar tabela Fornecedor
CREATE TABLE IF NOT EXISTS supplier(
	idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    corporateName VARCHAR(255) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE(CNPJ)
);

-- Criar tabela Vendedor
CREATE TABLE IF NOT EXISTS seller(
	idSeller INT AUTO_INCREMENT PRIMARY KEY,
    corporateName VARCHAR(255) NOT NULL,
    commercialName VARCHAR(255),
    CNPJ CHAR(15),
    CPF CHAR (11),
    location VARCHAR(255),
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE(CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE(CPF)
    );



-- Criar tabela Produto/Vendedor
CREATE TABLE IF NOT EXISTS productSeller(
	idPsSeller INT,
    idPsProduct INT,
    quantity INT DEFAULT 1,
    PRIMARY KEY (idPsSeller, idPsProduct),
    CONSTRAINT fk_product_seller FOREIGN KEY(idPsSeller) REFERENCES seller(idSeller),
    CONSTRAINT fk_product_product FOREIGN KEY(idPsProduct) REFERENCES product(idProduct)    
);

-- Criar tabela Produto/Pedido
CREATE TABLE IF NOT EXISTS productOrder(
	idPoOrder INT,
    idPoProduct INT,
    poQuantity INT DEFAULT 1,
	poStatus ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idPoOrder, idPoProduct),
    CONSTRAINT fk_product_order_order FOREIGN KEY (idPoOrder) REFERENCES orders(idOrder),
    CONSTRAINT fk_product_order_product FOREIGN KEY (idPoProduct) REFERENCES product(idProduct)    
);

-- Criar tabela Localização do Estoque
CREATE TABLE storageLocation(
	idSlStorage INT,
    idSlProduct INT,
    location VARCHAR (255) NOT NULL,
    PRIMARY KEY (idSlStorage, idSlProduct),
    CONSTRAINT fk_storage_location_storage FOREIGN KEY (idSlStorage) REFERENCES productStorage(idProdStorage),
    CONSTRAINT fk_storage_location_product FOREIGN KEY (idSlProduct) REFERENCES product(idProduct)    
);

-- Criar tabela Produto/Fornecedor
CREATE TABLE productSupplier(
	idPsSupplier INT,
    idPsProduct INT,
    psQuantity INT NOT NULL,
    PRIMARY KEY (idPsSupplier, idPsProduct),
    CONSTRAINT fk_product_supplier_supplier FOREIGN KEY (idPsSupplier) REFERENCES supplier(idSupplier),
    CONSTRAINT fk_product_supplier_product FOREIGN KEY (idPsProduct) REFERENCES product(idProduct)    
);
