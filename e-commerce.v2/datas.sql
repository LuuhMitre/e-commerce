-- Inserção de dados

USE ecommerce;

SHOW TABLES;
-- customer(idCustomer, Fname, Minit, Lname, Bdate, email, CPF, CNPJ, customerType ENUM('PF', 'PJ'), address, phone);
INSERT INTO customer (Fname, Minit, Lname, Bdate, email, customerType, CPF, CNPJ, address, phone) 
	VALUES
		('Maria','M','Silva', '1991-11-05', 'maria_silva@email.com', 'PF', 12346789, NULL, 'rua silva de prata 29, Carangola - Cidade das flores', '11987654321'),
		('Matheus','O','Pimentel', '1971-08-26', 'matheus.pimentel@email.com', 'PF', 987654321, NULL, 'rua alemeda 289, Centro - Cidade das flores', '21123456789'),
		('Ricardo','F','Silva','1994-05-10', 's.ricardo@email.com', 'PF', 45678913, NULL, 'avenida alemeda vinha 1009, Centro - Cidade das flores', '31555559999'),
		('Julia','S','França', '1994-08-10', 'juliaf2010@email.com', 'PF', 789123456, NULL,'rua lareijras 861, Centro - Cidade das flores', '41777772222'),
		('Roberta','G','Assis', '1999-01-05', 'roberta.g.assis@email.com', 'PF', 98745631, NULL,'avenidade koller 19, Centro - Cidade das flores', '51333338888'),
		('Isabela','M','Cruz','2002-06-13', 'isabelacruz@email.com', 'PF', 654789123, NULL,'rua alemeda das flores 28, Centro - Cidade das flores', '61444446666'),
		('Ana Silva', 'M L', 'Santos', '1985-05-10', 'ana.silva@example.com', 'PF', 12345678903, NULL, 'Rua das Flores, 123 - Centro - São Paulo', '1112345678'),
		('Lucas', 'A', 'Pereira','1990-05-15', 'lucas.souza@example.com', 'PF', 12345678901, NULL, 'Avenida Principal, 456 - Jardim Botânico - Rio de Janeiro','11987654321'),
		('Maria Oliveira', 'R A', 'Andrade', '1985-11-23', 'maria.oliveira@example.com', 'PF', 23456789012, NULL, 'Travessa das Palmeiras, 789 - Vila Nova - Belo Horizonte', '2134567890'),
		('Empresa ABC', NULL, 'Ltda', '2020-10-03', 'contato@empresaabc.com', 'PJ', NULL, 12345678000199, 'Rua Industrial, 567 - Distrito Industrial - Manaus', '3133333333'),
		('João', 'P', 'Rodrigues', '1978-03-07', 'joao.santos@example.com', 'PF', 34567890123, NULL, 'Avenida da Liberdade, 890 - Liberdade - Salvador', '4198765432'),
		('Amanda', 'S', 'Martins', '2002-09-18','amanda.martins@example.com', 'PF', 45678901234, NULL, 'Rua dos Ventos, 234 - Praia de Iracema - Fortaleza', '5199999999'),
		('Paulo', 'R', 'Gomes', '1998-02-10', 'paulo.gomes@example.com', 'PF', 67890123456, NULL,  'Avenida das Estrelas, 567 - Jardim das Estrelas - Brasília', '56789012345'),
		('Laura', 'A L', 'Oliveira', '1987-07-12', 'laura.oliveira@email.com', 'PF', 78901234567, NULL, 'Avenida das Árvores, 456 - Bosque das Árvores - Curitiba', '90123456789'),
		('Sandra', 'M', 'Lima', '1982-06-30', 'sandra.lima@example.com', 'PF', 89012345678, NULL, 'Praça do Progresso, 123 - Progresso - Belo Horizonte', '6188888888'),
		('Empresa XYZ', NULL, 'S.A', '2011-08-27', 'contato@empresaxyz.com', 'PJ', NULL, 23456789000180, 'Rua das Pedras, 789 - Centro Histórico - Rio de Janeiro', '7198754325'),
		('Rafaela', 'D', 'Santos', '1979-12-04', 'rafaela.santos@example.com', 'PF' ,01234567890, NULL,'Travessa das Montanhas, 101 - Morro Alto - Porto Alegre', '8187654321'),
		('Pedro', 'M', 'Castro', '2001-08-27', 'pedro.castro@example.com', 'PF', 10293847561, NULL, 'Avenida da Praia, 2020 - Praia da Baleia - Florianópolis', '9198765432'),
		('Luana', 'C', 'Fernandes', '1976-04-02', 'luana.fernandes@example.com', 'PF', 21098374659, NULL, 'Rua dos Coqueiros, 303 - Praia do Sol - Recife', '1123456789'), 
		('Empresa 123', NULL, 'S/A', '2007-01-29', 'contato@empresa123.com', 'PJ', NULL, 34567890100010, 'Rua da Amizade, 1010 - Amigos Unidos - Belo Horizonte', '3134567890');
SELECT * FROM customer;

-- product(idProduct, Pname, classification_kids, category ENUM('Eletrônico','Vestuário','Brinquedos','Alimentos', 'Móveis', 'Eletrodomésticos'), size, reviews);
INSERT INTO product (Pname, classification_kids, category, size, reviews) 
	VALUES
		('Fone de ouvido', FALSE, 'Eletrônico', NULL, '4'),
		('Barbie Elsa', TRUE, 'Brinquedos', NULL, '3'),
		('Body Carters', TRUE, 'Vestuário', NULL, '5'),
		('Microfone Vedo - Youtuber', FALSE, 'Eletrônico', NULL, '4'),
		('Sofá retrátil', FALSE, 'Móveis', '3x57x80', '3'),
		('Farinha de arroz', FALSE, 'Alimentos', '2', NULL),
		('Fire Stick Amazon', FALSE, 'Eletrônico', '3', NULL),
		('Smartphone X100', FALSE, 'Eletrônico', '15x8x1', 4.5),
		('Camiseta Listrada', TRUE, 'Vestuário', NULL, 4.2),
		('Quebra-Cabeça 100 peças', TRUE, 'Brinquedos', '20x20', 4.0),
		('Arroz Integral 1kg', FALSE, 'Alimentos', NULL, 4.8),
		('Sofá de Couro', FALSE, 'Móveis', '200x90x80', 4.7),
		('Geladeira Frost-Free', FALSE, 'Eletrodomésticos', '180x70x60', 4.3),
		('Fone de Ouvido Bluetooth', FALSE, 'Eletrônico', NULL, 4.6),
		('Vestido de Festa', FALSE, 'Vestuário', NULL, 4.0),
		('Lego Cidade', TRUE, 'Brinquedos', '30x30', 4.5),
		('Azeite de Oliva 500ml', FALSE, 'Alimentos', NULL, 4.9),
		('Cama de Casal', FALSE, 'Móveis', '220x160x40', 4.8),
		('Liquidificador 1000W', FALSE, 'Eletrodomésticos', NULL, 4.7),
		('Notebook Ultrabook', FALSE, 'Eletrônico', '35x24x1.5', 4.4),
		('Camiseta Polo', FALSE, 'Vestuário', NULL, 4.3),
		('Bola de Futebol', TRUE, 'Brinquedos', '20 cm', 4.2),
		('Leite Integral 1L', TRUE, 'Alimentos', NULL, 4.9),
		('Cadeira de Escritório', FALSE, 'Móveis', '60x60x100', 4.5),
		('Máquina de Lavar Roupa', FALSE, 'Eletrodomésticos', '80x60x50', 4.6),
		('Smart TV 55 polegadas', FALSE, 'Eletrônico', '130x80x10', 4.7),
		('Calça Jeans', TRUE, 'Vestuário', NULL, 4.1);
SELECT * FROM product;

-- cards(idCard, idCustomer, Cname, Cnum, expDate, cvv, cardType ENUM('Crédito', 'Débito'), (idCustomer) REFERENCES customer(idCustomer));
INSERT INTO cards (idCustomer, Cname, Cnum, expDate, cvv, cardType) 
	VALUES 
		(14, 'João da Silva', '5487356890123456', '2024-08-15', '123', 'Crédito'),
		(5, 'Maria Pereira', '4312567890123456', '2028-02-28', '234', 'Crédito'),
		(3, 'Lucas Santos', '378945678901234', '2023-12-05', '345', 'Crédito'),
		(20, 'Ana Oliveira', '6014567890123456', '2025-07-10', '456', 'Débito'),
		(19, 'Pedro Souza', '5189456789012345', '2028-11-03', '567', 'Crédito'),
		(10, 'Mariana Silva', '4021567890123456', '2030-09-20', '678', 'Crédito'),
		(2, 'Rafael Almeida', '349867890123456', '2030-04-08', '789', 'Crédito'),
		(18, 'Fernanda Lima', '6394567890123456', '2026-06-19', '890', 'Débito'),
		(6, 'Gustavo Ferreira', '5567456789012345', '2029-01-23', '123', 'Crédito'),
		(7, 'Camila Rodrigues', '4912567890123456', '2025-10-07', '234', 'Crédito'),
		(17, 'Eduardo Nunes', '378945678901234', '2024-04-29', '345', 'Crédito'),
		(11, 'Isabela Costa', '6314567890123456', '2024-12-13', '456', 'Débito'),
		(12, 'Thiago Fernandes', '5789456789012345', '2028-03-26', '567', 'Crédito'),
		(1, 'Laura Santos', '4123567890123456', '2024-05-14', '678', 'Crédito'),
		(16, 'Vinícius Rodrigues', '344567890123456', '2029-11-30', '789', 'Crédito'),
		(4, 'Amanda Oliveira', '6124567890123456', '2025-02-21', '890', 'Débito'),
		(8, 'Marcelo Souza', '5612456789012345', '2026-09-09', '123', 'Crédito'),
		(15, 'Juliana Almeida', '4213567890123456', '2027-06-25', '234', 'Crédito'),
		(9, 'Ricardo Lima', '367845678901234', '2024-01-12', '345', 'Crédito'),
		(13, 'Carolina Fernandes', '6243567890123456', '2028-03-18', '456', 'Débito'),
		(20, 'Alexandre Sousa', '5481345678901234', '2024-08-20', '123', 'Crédito'),
		(13, 'Letícia Barbosa', '4312567890123456', '2028-02-18', '234', 'Crédito'),
		(1, 'Marcela Pereira', '378914567890123', '2028-12-09', '345', 'Crédito'),
		(12, 'Bruno Silva', '6014567890123456', '2029-07-14', '456', 'Débito'),
		(11, 'Lívia Oliveira', '5189567890123456', '2025-11-21', '567', 'Crédito'),
		(8, 'Daniel Almeida', '4021267890123456', '2026-09-19', '678', 'Crédito'),
		(6, 'Vitória Souza', '349876890123456', '2027-04-07', '789', 'Crédito'),
		(3, 'Luciana Costa', '6394567890123456', '2027-06-18', '890', 'Débito'),
		(2, 'Fábio Mendes', '5567656789012345', '2024-01-22', '123', 'Crédito'),
		(15, 'Patrícia Rodrigues', '4912567890123456', '2024-10-06', '234', 'Crédito'),
		(7, 'Leonardo Fernandes', '378935678901234', '2024-04-28', '345', 'Crédito'),
		(5, 'Larissa Oliveira', '6314567890123456', '2024-12-12', '456', 'Débito'),
		(19, 'Miguel Rodrigues', '5789456789012345', '2024-03-25', '567', 'Crédito'),
		(14, 'Evelyn Santos', '4123567890123456', '2024-05-14', '678', 'Crédito'),
		(9, 'Raphael Almeida', '344567890123456', '2024-11-30', '789', 'Crédito'),
		(18, 'Carla Oliveira', '6124567890123456', '2030-02-21', '890', 'Débito'),
		(16, 'Paulo Souza', '5612456789012345', '2024-09-09', '123', 'Crédito'),
		(10, 'Lorena Almeida', '4213567890123456', '2024-06-25', '234', 'Crédito'),
		(4, 'Roberto Lima', '367845678901234', '2030-01-12', '345', 'Crédito'),
		(17, 'Gabriela Fernandes', '6243567890123456', '2026-03-18', '456', 'Débito');
SELECT * FROM cards;



-- orders(idOrder, idCustomer, idPayment, orderStatus ENUM('Cancelado', 'Em processamento', 'Pagamento confirmado'), orderDescription, shipping, orderDate, (idCustomer) REFERENCES customer(idCustomer), (idPayment) REFERENCES payments(idPayment));
INSERT INTO orders (idCustomer, orderStatus, orderDescription, shipping, orderDate)
    VALUES
		(6, 'Pagamento Confirmado', 'Compra via aplicativo', 15.0, '2019-11-15'),
		(15, 'Em Processamento', 'Compra via website', 12.5, '2015-07-08'),
		(8, 'Pagamento Confirmado', 'Compra via website', 20.0, '2020-03-21'),
		(4, 'Cancelado', 'Compra via aplicativo', 30.0, '2019-11-04'),
		(13, 'Em Processamento', 'Compra via website', 18.5, '2018-06-10'),
		(19, 'Pagamento Confirmado', 'Compra via website', 25.0, '2017-02-14'),
		(11, 'Em Processamento', 'Compra via aplicativo', 22.0, '2016-10-27'),
		(20, 'Pagamento Confirmado', 'Compra via aplicativo', 10.5, '2014-12-31'),
		(10, 'Pagamento Confirmado', 'Compra via website', 16.0, '2013-08-05'),
		(13, 'Em Processamento', 'Compra via website', 21.5, '2012-04-19'),
		(19, 'Pagamento Confirmado', 'Compra via aplicativo', 28.0, '2011-01-23'),
		(14, 'Pagamento Confirmado', 'Compra via aplicativo', 13.5, '2010-09-06'),
		(12, 'Pagamento Confirmado', 'Compra via website', 17.0, '2022-07-10'),
		(3, 'Em Processamento', 'Compra via website', 23.5, '2021-03-14'),
		(9, 'Cancelado', 'Compra via aplicativo', 14.0, '2019-12-17'),
		(17, 'Em Processamento', 'Compra via website', 19.5, '2018-08-21'),
		(5, 'Em Processamento', 'Compra via website', 24.0, '2017-04-25'),
		(2, 'Pagamento Confirmado', 'Compra via aplicativo', 11.5, '2016-01-29'),
		(7, 'Cancelado', 'Compra via aplicativo', 29.0, '2014-10-03'),
		(18, 'Pagamento Confirmado', 'Compra via website', 15.5, '2013-06-06'),
		(16, 'Pagamento Confirmado', 'Compra via website', 20.0, '2012-02-09'),
		(1, 'Em Processamento', 'Compra via aplicativo', 26.5, '2011-10-13'),
		(14, 'Pagamento Confirmado', 'Compra via website', 12.0, '2010-06-17'),
		(1, 'Em Processamento', 'Compra via aplicativo', 27.5, '2021-08-21'),
		(5, 'Pagamento Confirmado', 'Compra via website', 29.0, '2020-04-25'),
		(18, 'Pagamento Confirmado', 'Compra via aplicativo', 14.5, '2019-01-29'),
		(10, 'Pagamento Confirmado', 'Compra via website', 18.0, '2017-10-03'),
		(3, 'Em Processamento', 'Compra via website', 23.5, '2016-06-06'),
		(11, 'Pagamento Confirmado', 'Compra via website', 12.0, '2015-02-09'),
		(12, 'Pagamento Confirmado', 'Compra via aplicativo', 17.5, '2013-10-13'),
		(2, 'Cancelado', 'Compra via website', 22.0, '2012-06-17'),
		(15, 'Em Processamento', 'Compra via aplicativo', 27.5, '2011-02-21'),
		(16, 'Pagamento Confirmado', 'Compra via website', 11.0, '2010-10-25'),
		(20, 'Em Processamento', 'Compra via website', 16.5, '2019-12-03'),
		(8, 'Em Processamento', 'Compra via website', 20.0, '2020-05-21');
SELECT * FROM orders;

-- payments(idPayment, idCustomer, paymentType ENUM('Boleto', 'Cartão de Crédito', 'Cartão de Débito'), idCard, (idCustomer) REFERENCES customer(idCustomer));
INSERT INTO payments (idCustomer, idOrder, paymentType, idCard)
    VALUES
		(6, 1, 'Cartão', 27),
		(15, 2, 'Boleto', NULL),
		(8, 3, 'Boleto', NULL),
		(4, 4, 'Cartão', 16),
		(13, 5, 'Cartão', 20),
		(19, 6, 'Cartão', 5),
		(11, 7, 'Boleto', NULL),
		(20, 8, 'Cartão', 4),
		(10, 9, 'Cartão', 38),
		(13, 10, 'Boleto', NULL),
		(19, 14, 'Boleto', NULL),
		(6, 15, 'Cartão', 27),
		(4, 16, 'Boleto', NULL),
		(3, 17, 'Boleto', NULL),
		(5, 18, 'Boleto', NULL),
		(15, 19, 'Cartão', 30),
		(8, 20, 'Cartão', 17),
		(17, 21, 'Cartão', 11),
		(13, 22, 'Boleto', NULL),
		(12, 23, 'Boleto', NULL),
		(19, 24, 'Cartão', 33),
		(14, 25, 'Boleto', NULL),
		(2, 26, 'Boleto', NULL),
		(1, 27, 'Boleto', NULL),
		(9, 28, 'Boleto', NULL),
		(11, 29, 'Boleto', NULL),
		(12, 30, 'Cartão', 17),
		(2, 31, 'Boleto', NULL),
		(15, 32, 'Cartão', 30),
		(16, 33, 'Boleto', NULL),
		(20, 34, 'Cartão', 21),
		(8, 35, 'Cartão', 26);
SELECT * FROM payments;

-- productOrder(idPoOrder, idPoProduct,  poQuantity, poStatus ENUM('Disponível', 'Sem estoque'),(idPoOrder) REFERENCES orders(idOrder), (idPoProduct) REFERENCES product(idProduct));
INSERT INTO productOrder (idPoOrder, idPoProduct, poQuantity, poStatus)
	VALUES
		(1, 15, 5, 'Disponível'),
		(2, 7, 3, 'Disponível'),
		(3, 23, 2, 'Sem estoque'),
		(4, 12, 4, 'Disponível'),
		(5, 6, 1, 'Disponível'),
		(6, 18, 6, 'Sem estoque'),
		(7, 4, 2, 'Disponível'),
		(8, 10, 3, 'Disponível'),
		(9, 1, 1, 'Disponível'),
		(10, 20, 4, 'Sem estoque'),
		(11, 11, 2, 'Disponível'),
		(12, 27, 3, 'Disponível'),
		(13, 19, 5, 'Sem estoque'),
		(14, 5, 1, 'Disponível'),
		(15, 9, 3, 'Disponível'),
		(16, 22, 2, 'Sem estoque'),
		(17, 3, 4, 'Disponível'),
		(18, 14, 1, 'Disponível'),
		(19, 26, 3, 'Sem estoque'),
		(20, 2, 2, 'Disponível'),
		(21, 17, 4, 'Disponível'),
		(22, 25, 1, 'Sem estoque'),
		(23, 8, 5, 'Disponível'),
		(24, 16, 3, 'Disponível'),
		(25, 24, 2, 'Sem estoque'),
		(26, 13, 4, 'Disponível'),
		(27, 21, 1, 'Disponível'),
		(28, 15, 3, 'Sem estoque'),
		(29, 7, 2, 'Disponível'),
		(30, 23, 4, 'Disponível');
SELECT * FROM productOrder;

-- productStorage(idProdStorage, storageLocation, quantity);
INSERT INTO productStorage (storageLocation,quantity) 
	VALUES 
		('Rio de Janeiro',1000),
		('Rio de Janeiro',500),
		('São Paulo',10),
		('São Paulo',100),
		('São Paulo',10),
		('Brasília',60),
		('Minas Gerais',160),
		('Ceará', 1400),
		('Minas Gerais',2500),
		('Bahia', 300);
SELECT * FROM productStorage;

-- storageLocation(idSlStorage, idSlProduct, location, (idSlStorage) REFERENCES productStorage(idProdStorage), (idSlProduct) REFERENCES product(idProduct));
INSERT INTO storageLocation (idSlProduct, idSlStorage, location)
	VALUES
		(1, 1, 'RJ'),
		(2, 1, 'BA'),
		(3, 1, 'RJ'),
		(4, 1, 'MG'),
		(5, 2, 'SP'),
		(6, 2, 'CE'),
		(7, 2, 'BA'),
		(8, 2, 'SP'),
		(9, 3, 'SP'),
		(10, 3, 'DF'),
		(11, 4, 'MG'),
		(12, 4, 'MG'),
		(13, 4, 'DF'),
		(14, 4, 'RJ'),
		(15, 5, 'SP'),
		(16, 5, 'MG'),
		(17, 5, 'CE'),
		(18, 5, 'DF'),
		(19, 6, 'BA'),
		(20, 6, 'RJ'),
        (21, 6, 'CE'),
		(22, 7, 'MG'),
		(23, 7, 'SP'),
		(24, 7, 'RJ'),
		(25, 8, 'SP'),
		(26, 8, 'CE'),
		(27, 8, 'RJ'),
		(8, 9, 'RJ'),
		(9, 9, 'MG'),
		(10, 10, 'RJ'),
		(11, 10, 'MG'),
		(12, 10, 'SP'),
		(13, 10, 'DF'),
		(14, 1, 'MG'),
		(15, 1, 'DF'),
		(16, 1, 'BA'),
		(17, 1, 'BA'),
		(18, 2, 'SP'),
		(19, 3, 'DF'),
		(20, 8, 'BA');
SELECT * FROM storageLocation;

-- supplier(idSupplier, corporateName, CNPJ CHAR(15), contact);
INSERT INTO supplier (corporateName, CNPJ, contact) 
	VALUES 
		('Almeida e filhos', 123456789123456,'21985474'),
		('Eletrônicos Silva',854519649143457,'21985484'),
		('Eletrônicos Valma', 934567893934695,'21975474'),
		('Empresa A', 12345678000100, '11987654321'),
		('Empresa B', 23456789000111, '11976543210'),
		('Empresa C', 34567890000122, '11965432109'),
		('Empresa D', 45678901000133, '11954321098'),
		('Empresa E', 56789010000144, '11943210987'),
		('Empresa F', 67890111000155, '11932109876'),
		('Empresa G', 78901212000166, '11921098765'),
		('Empresa H', 89012323000177, '11910987654'),
		('Empresa I', 90123434000188, '11909876543'),
		('Empresa J', 1234545000199, '11998765432'),
		('Empresa K', 12345656000100, '11987654321'),
		('Empresa L', 23456767000111, '11976543210'),
		('Empresa M', 34567878000122, '11965432109'),
		('Empresa N', 45678989000133, '11954321098'),
		('Empresa O', 56789090000144, '11943210987'),
		('Empresa P', 67890101000155, '11932109876');
SELECT * FROM supplier;

-- productSupplier(idPsSupplier, idPsProduct, psQuantity,  (idPsSupplier) REFERENCES supplier(idSupplier), (idPsProduct) REFERENCES product(idProduct));
 INSERT INTO productSupplier (idPsSupplier, idPsProduct, psQuantity)
	VALUES 
		(1,2,400),
		(2,4,633),
		(3,3,5),
		(2,5,10),
		(1, 1, 500),
		(2, 3, 250),
		(3, 5, 700),
		(4, 7, 100),
		(5, 9, 800),
		(6, 11, 350),
		(7, 13, 450),
		(8, 15, 900),
		(9, 17, 150),
		(10, 19, 600),
		(11, 21, 750),
		(12, 23, 200),
		(13, 25, 950),
		(14, 27, 300),
		(15, 2, 400),
		(16, 4, 550),
		(17, 6, 50),
		(18, 8, 850),
		(19, 10, 150);
SELECT * FROM productSupplier;

-- seller(idSeller, corporateName, commercialName, CNPJ CHAR(15), CPF, location, contact);
INSERT INTO seller (corporateName, commercialName, CNPJ, CPF, location, contact)
	VALUES
		('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
		('Botique Durgas',null,null,123456783,'Rio de Janeiro', 219567895),
		('Kids World',null,456789123654485,null,'São Paulo', 1198657484),
		('Empresa X Ltda', 'Empresa X', 12345678000100, NULL, 'Rio de Janeiro', '21987654321'),
		('Comércio Y S.A.', 'Comércio Y', 23456789000111, NULL, 'São Paulo', '11976543210'),
		('Fantasia Z EIRELI', 'Fantasia Z', 34567890000122, NULL, 'Brasília', '6132134567'),
		('Comércio ABC Ltda', 'ABC Shop', 45678901000133, NULL, 'Minas Gerais', '31987654321'),
		('Empório DEF', 'Empório DEF', 56789010000144, NULL, 'Ceará', '85987654321'),
		('Loja G H LTDA', 'Loja G', 67890111000155, NULL, 'Bahia', '71987654321'),
		('Comércio I J', 'I J Shop', 78901212000166, NULL, 'São Paulo', '11901234567'),
		('Empório KLM EIRELI', 'Empório KLM', 89012323000177, NULL, 'Rio de Janeiro', '2123456789'),
		('Loja NOP Ltda', 'NOP Store', 90123434000188, NULL, 'Minas Gerais', '31901234567'),
		('Empório QRS EIRELI', 'Empório QRS', 1234545000199, NULL, 'Ceará', '85901234567'),
		('Comércio TUV Ltda', 'TUV Shop', 12345656000100, NULL, 'Bahia', '71901234567'),
		('Fantasia WXY S.A.', 'Fantasia WXY', 23456767000111, NULL, 'São Paulo', '11998765432'),
		('Loja ZAB EIRELI', 'Loja ZAB', 34567878000122, NULL, 'Brasília', '61987654321'),
		('Maria Santos', NULL, NULL, 23456782012, 'São Paulo', '11976543210'),
		('Pedro Almeida', NULL, NULL, 34567810123, 'Brasília', '6132134567'),
		('Ana Oliveira', NULL, NULL, 45678905234, 'Minas Gerais', '31987654321'),
		('Fernando Pereira', NULL, NULL, 56769012345, 'Ceará', '85987654321'),
		('Mariana Costa', NULL, NULL, 67890143456, 'Bahia', '71987654321'),
		('Rafael Souza', NULL, NULL, 78901236567, 'São Paulo', '11901234567'),
		('Carla Lima', NULL, NULL, 89012345658, 'Rio de Janeiro', '2123456789'),
		('Gustavo Rodrigues', NULL, NULL, 90423456789, 'Minas Gerais', '31901234567'),
		('Isabela Ferreira', NULL, NULL, 12355678901, 'Ceará', '85901234567'),
		('Lucas Costa', NULL, NULL, 23456789512, 'Bahia', '71901234567'),
		('Amanda Oliveira', NULL, NULL, 34567890123, 'São Paulo', '11998765432'),
		('Bruno Almeida', NULL, NULL, 45678901234, 'Brasília', '61987654321'),
		('Larissa Silva', NULL, NULL, 56789012345, 'Minas Gerais', '31998765432'),
		('Ricardo Santos', NULL, NULL, 67890123456, 'Ceará', '85998765432'),
		('Letícia Pereira', NULL, NULL, 78901234567, 'Rio de Janeiro', '2123456789'),
		('Vitor Lima', NULL, NULL, 89012345678, 'Bahia', '71998765432'),
		('Camila Rodrigues', NULL, NULL, 90123456789, 'São Paulo', '11901234567'),
		('Guilherme Ferreira', NULL, NULL, 12345678901, 'Minas Gerais', '31998765432'),
		('Laura Costa', NULL, NULL, 23456789012, 'Brasília', '61901234567');
SELECT * FROM seller;

-- productSeller(idPsSeller, idPsProduct INT, quantity,(idPsSeller) REFERENCES seller(idSeller), (idPsProduct) REFERENCES product(idProduct));
INSERT INTO productSeller (idPsSeller, idPsProduct, quantity)
	VALUES
		(1, 7, 53),
		(2, 15, 27),
		(3, 22, 89),
		(4, 3, 12),
		(5, 11, 76),
		(6, 1, 34),
		(7, 20, 67),
		(8, 9, 45),
		(9, 26, 18),
		(10, 14, 91),
		(11, 8, 65),
		(12, 18, 29),
		(13, 10, 7),
		(14, 23, 50),
		(15, 27, 82),
		(16, 19, 43),
		(17, 13, 16),
		(18, 2, 88),
		(19, 4, 38),
		(20, 5, 61),
		(21, 25, 25),
		(22, 6, 72),
		(23, 12, 96),
		(24, 21, 53),
		(25, 16, 30),
		(26, 24, 14),
		(27, 17, 78),
		(28, 27, 41),
		(29, 7, 23),
		(30, 9, 87),
		(31, 3, 46),
		(32, 8, 9),
		(33, 20, 62),
		(34, 11, 37),
		(35, 1, 70);
SELECT * FROM productSeller;

-- delivery(idOrder, Dstatus ENUM('Pedido em separação', 'Recolhido pela transportadora', 'Em transporte', 'Pedido saiu para entrega', 'Entregue'), 
-- tracking CHAR(10), (idOrder) REFERENCES orders(idOrder));
INSERT INTO delivery (idOrder, Dstatus, tracking)
	VALUES
		(1, 'Pedido em separação', 'ABC123'),
		(2, 'Recolhido pela transportadora', 'DEF456'),
		(3, 'Em transporte', 'GHI789'),
		(4, 'Pedido saiu para entrega', 'JKL012'),
		(5, 'Entregue', 'MNO345'),
		(6, 'Pedido em separação', 'PQR678'),
		(7, 'Recolhido pela transportadora', 'STU901'),
		(8, 'Em transporte', 'VWX234'),
		(9, 'Pedido saiu para entrega', 'YZA567'),
		(10, 'Entregue', 'BCD890'),
		(11, 'Pedido em separação', 'EFG123'),
		(12, 'Recolhido pela transportadora', 'HIJ456'),
		(13, 'Em transporte', 'KLM789'),
		(14, 'Pedido saiu para entrega', 'NOP012'),
		(15, 'Entregue', 'QRS345'),
		(16, 'Pedido em separação', 'TUV678'),
		(17, 'Recolhido pela transportadora', 'WXY901'),
		(18, 'Em transporte', 'ZAB234'),
		(19, 'Pedido saiu para entrega', 'CDE567'),
		(20, 'Entregue', 'FGH890'),
		(21, 'Pedido em separação', 'IJK123'),
		(22, 'Recolhido pela transportadora', 'LMN456'),
		(23, 'Em transporte', 'OPQ789'),
		(24, 'Pedido saiu para entrega', 'RST012'),
		(25, 'Entregue', 'UVW345'),
		(26, 'Pedido em separação', 'XYZ678'),
		(27, 'Recolhido pela transportadora', '123901'),
		(28, 'Em transporte', '456234'),
		(29, 'Pedido saiu para entrega', '789567'),
		(30, 'Entregue', '012890'),
		(31, 'Pedido em separação', '345123'),
		(32, 'Recolhido pela transportadora', '678456'),
		(33, 'Em transporte', '901789'),
		(34, 'Pedido saiu para entrega', '234012'),
		(35, 'Entregue', '567345');
SELECT * FROM delivery;
