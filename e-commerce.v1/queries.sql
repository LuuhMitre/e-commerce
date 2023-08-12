-- Inserção de Queries

SELECT count(*) FROM customer;

SELECT * FROM customer c, orders o WHERE c.idCustomer = idOrderCustomer;

SELECT Fname,Lname, idOrder, orderStatus FROM customer c, orders o WHERE c.idCustomer = idOrderCustomer;
SELECT concat(Fname,' ',Lname) AS Customer, idOrder AS Request, orderStatus AS Order_Status FROM customer c, orders o WHERE c.idCustomer = idOrderCustomer;

INSERT INTO orders (idOrderCustomer, orderStatus, orderDescription, shipping, paymentCash) VALUES 
							 (2, DEFAULT,'compra via aplicativo',NULL,1);
                             
SELECT * FROM customer c, orders o WHERE c.idCustomer = idOrderCustomer
	GROUP BY idOrder;
                             
SELECT count(*) FROM customer c, orders o 
			WHERE c.idCustomer = idOrderCustomer;

SELECT * FROM orders;

-- recuperação de pedido com produto associado
SELECT * FROM customer LEFT OUTER JOIN orders ON idCustomer = idOrderCustomer;

SELECT * FROM productOrder;
SELECT * FROM customer INNER JOIN orders ON idCustomer = idOrderCustomer
                INNER JOIN productOrder ON idPoOrder = idOrder; 

SELECT * FROM customer c 
				INNER JOIN orders o ON c.idCustomer = o.idOrderCustomer
                INNER JOIN productOrder p ON p.idPoOrder = o.idOrder; 

SELECT count(*) FROM customer c 
				INNER JOIN orders o ON c.idCustomer = o.idOrderCustomer
                INNER JOIN productOrder p on p.idPoOrder = o.idOrder
			GROUP BY idCustomer; 
        
-- Recuperar quantos pedidos foram realizados pelos clientes
SELECT c.idCustomer, Fname, count(*) as Number_of_orders FROM customer c 
				INNER JOIN orders o ON c.idCustomer = o.idOrderCustomer
		GROUP BY idCustomer; 