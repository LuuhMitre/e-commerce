-- Inserção de Queries

-- Somar a quantidade de Clientes
SELECT count(*) FROM customer;

-- Recuperar Clientes com Pedidos associados
SELECT * FROM customer AS c, orders AS o 
	WHERE c.idCustomer=o.idCustomer;

-- Recuperar Cliente, id do Pedido e Status do Pedido
SELECT concat(Fname,' ',Lname) AS Customer, idOrder, orderStatus 
	FROM customer c, orders o 	
    WHERE c.idCustomer = o.idCustomer;
    
-- Recuperar Clientes e Pedidos, agrupando pelo idOrder                             
SELECT * FROM customer c, orders o WHERE c.idCustomer = o.idCustomer
	GROUP BY idOrder;
                    
-- Recuperar a somatória de Clientes com Pedidos associados
SELECT count(*) FROM customer c, orders o 
	WHERE c.idCustomer = o.idCustomer;

-- Recuperar pedido com produto associado
SELECT * FROM customer LEFT OUTER JOIN orders USING(idCustomer);
SELECT * FROM customer INNER JOIN orders USING(idCustomer)
	INNER JOIN productOrder ON idPoOrder = idOrder; 
SELECT * FROM customer c 
	INNER JOIN orders o USING(idCustomer)
	INNER JOIN productOrder p ON p.idPoOrder = o.idOrder; 
                
-- Somar Clientes com Produtos e Pedidos associados, agrupado pelo id do cliente
SELECT count(*) FROM customer c 
	INNER JOIN orders o USING(idCustomer)
	INNER JOIN productOrder p on p.idPoOrder = o.idOrder
	GROUP BY idCustomer; 
        
-- Recuperar quantos pedidos foram realizados pelos clientes?
SELECT c.idCustomer, Fname, count(*) as Number_of_orders FROM customer c 
	INNER JOIN orders o USING(idCustomer)
	GROUP BY idCustomer; 
        
-- Recuperar Cliente, id do Pedido e o id do Pagamento
SELECT p.idOrder, concat(Fname,' ',Lname) AS Customer, o.orderStatus
	FROM customer AS c 
    INNER JOIN payments AS p USING(idCustomer)
    INNER JOIN orders as o USING(idCustomer);
    
-- Recuperar Cliente, id do Cliente, id do Pedido, o id do Pagamento e tipo do pagamento
SELECT c.idCustomer, p.idOrder, concat(Fname,' ',Lname) AS Customer, o.orderStatus, p.paymentType
	FROM customer AS c 
    INNER JOIN payments AS p USING(idCustomer)
    INNER JOIN orders as o USING(idCustomer);

-- Recuperar pedidos Cancelados
SELECT c.idCustomer, concat(Fname,' ',Lname) AS Customer, o.orderStatus, p.paymentType
	FROM customer AS C
    INNER JOIN payments AS p USING(idCustomer)
    INNER JOIN orders as o USING(idCustomer)
    WHERE o.OrderStatus = 'Cancelado';

-- Recuperar pedidos Cancelados agrupados por Cliente
SELECT c.idCustomer, concat(Fname,' ',Lname) AS Customer, o.orderStatus, count(*) Canceled_Order
	FROM customer AS C
    INNER JOIN orders as o USING(idCustomer)
    GROUP BY idOrder
    HAVING  o.OrderStatus = 'Cancelado';

-- Recuperar pedidos feitos por vendedor
SELECT corporateName, location, quantity
	FROM seller, productSeller 
    WHERE idSeller = idPsSeller; 
    
-- Recuperar quantos pedidos foram feitos por cada cliente
SELECT concat(Fname,' ',Lname) AS Customer, count(*) Orders
	FROM customer AS c, orders AS o
    WHERE c.idCustomer = o.idCustomer
	GROUP BY Customer;

-- Checar se algum vendedor também é fornecedor
SELECT se.corporateName, se.CNPJ
	FROM seller AS se, supplier AS su
    WHERE se.CNPJ = su.CNPJ;

-- Relação de produtos fornecedores e estoques;
SELECT Pname,  corporateName, location, quantity
	FROM product
    INNER JOIN productSupplier ON idProduct = idPsProduct 
    INNER JOIN supplier ON idPsSupplier = idSupplier 
    INNER JOIN storageLocation ON idProduct = idSlProduct
    INNER JOIN productStorage ON idSlStorage = idProdStorage;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT s.corporateName, Pname
	FROM supplier AS s
    INNER JOIN productSupplier ON idSupplier = idPsSupplier
    INNER JOIN product ON idProduct = idPsProduct;





