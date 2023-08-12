    -- Inserção de dados
USE ecommerce;

-- idCustomer, Fname, Minit, Lname, CPF, Address
INSERT INTO customer (Fname, Minit, Lname, CPF, address) VALUES
	('Maria','M','Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
	('Matheus','O','Pimentel', 987654321, 'rua alemeda 289, Centro - Cidade das flores'),
	('Ricardo','F','Silva', 45678913,'avenida alemeda vinha 1009, Centro - Cidade das flores'),
	('Julia','S','França', 789123456, 'rua lareijras 861, Centro - Cidade das flores'),
	('Roberta','G','Assis', 98745631,'avenidade koller 19, Centro - Cidade das flores'),
	('Isabela','M','Cruz', 654789123, 'rua alemeda das flores 28, Centro - Cidade das flores');

-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestuário','Brinquedos','Alimentos','Móveis'), reviews, size
INSERT INTO product (Pname, classification_kids, category, reviews, size) VALUES
	('Fone de ouvido',FALSE,'Eletrônico','4',NULL),
    ('Barbie Elsa',TRUE,'Brinquedos','3',NULL),
    ('Body Carters',TRUE,'Vestuário','5',NULL),
    ('Microfone Vedo - Youtuber',FALSE,'Eletrônico','4',NULL),
    ('Sofá retrátil',FALSE,'Móveis','3','3x57x80'),
    ('Farinha de arroz',FALSE,'Alimentos','2',NULL),
    ('Fire Stick Amazon',FALSE,'Eletrônico','3',NULL);

-- idOrder, idOrderCustomer, orderStatus, orderDescription, shipping, paymentCash
INSERT INTO orders (idOrderCustomer, orderStatus, orderDescription, shipping, paymentCash) VALUES 
	(1, DEFAULT,'compra via aplicativo',NULL,1),
    (3,DEFAULT,'compra via aplicativo',50,0),
    (5,'Pagamento confirmado',NULL,NULL,1),
    (4,DEFAULT,'compra via web site',150,0);

-- idPoProduct, idPoOrder, poQuantity, poStatus
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
	(1,1,2,NULL),
    (2,1,1,NULL),
    (3,2,1,NULL);

-- storageLocation,quantity
INSERT INTO productStorage (storageLocation,quantity) VALUES 
	('Rio de Janeiro',1000),
    ('Rio de Janeiro',500),
    ('São Paulo',10),
    ('São Paulo',100),
    ('São Paulo',10),
    ('Brasília',60);

-- idSlProduct, idSlStorage , location
INSERT INTO storageLocation (idSlProduct , idSlStorage, location) VALUES
	(1,2,'RJ'),
    (2,6,'GO');

-- idSupplier, corporateName, CNPJ, contact
INSERT INTO supplier (corporateName, CNPJ, contact) VALUES 
	('Almeida e filhos', 123456789123456,'21985474'),
    ('Eletrônicos Silva',854519649143457,'21985484'),
    ('Eletrônicos Valma', 934567893934695,'21975474');

-- idPsSupplier, idPsProduct, psQuantity 
INSERT INTO productSupplier (idPsSupplier, idPsProduct, psQuantity) VALUES
	(1,1,500),
    (1,2,400),
    (2,4,633),
    (3,3,5),
    (2,5,10);

-- idSeller, corporateName, commercialName, CNPJ, CPF, location, contact
INSERT INTO seller (corporateName, commercialName, CNPJ, CPF, location, contact) VALUES 
	('Tech eletronics', NULL, 123456789456321, NULL, 'Rio de Janeiro', 219946287),
	('Botique Durgas',NULL,NULL,123456783,'Rio de Janeiro', 219567895),
	('Kids World',NULL,456789123654485,NULL,'São Paulo', 1198657484);

-- idPsSeller, idPsProduct, quantity
INSERT INTO productSeller (idPsSeller, idPsProduct, quantity) VALUES 
	(1,6,80),
    (2,7,10);