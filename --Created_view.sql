--Created_view

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sales_data_for_power_bi` AS
    SELECT 
        `ord`.`orderDate` AS `orderdate`,
        `ord`.`orderNumber` AS `ordernumber`,
        `p`.`productName` AS `productName`,
        `p`.`productLine` AS `productLine`,
        `c`.`customerName` AS `customerName`,
        `c`.`city` AS `customer_city`,
        `c`.`country` AS `customer_country`,
        `o`.`city` AS `office_city`,
        `o`.`country` AS `office_country`,
        `p`.`buyPrice` AS `buyPrice`,
        `od`.`priceEach` AS `priceEach`,
        `od`.`quantityOrdered` AS `QuantityOrdered`,
        (SUM(`od`.`quantityOrdered`) * SUM(`od`.`priceEach`)) AS `sales_value`,
        (SUM(`p`.`buyPrice`) * SUM(`od`.`quantityOrdered`)) AS `cost_of_sales`
    FROM
     (((((`orders` `ord`
        LEFT JOIN `orderdetails` `od` ON ((`ord`.`orderNumber` = `od`.`orderNumber`)))
        LEFT JOIN `customers` `c` ON ((`ord`.`customerNumber` = `c`.`customerNumber`)))
        LEFT JOIN `products` `p` ON ((`od`.`productCode` = `p`.`productCode`)))
        LEFT JOIN `employees` `e` ON ((`c`.`salesRepEmployeeNumber` = `e`.`employeeNumber`)))
        LEFT JOIN `offices` `o` ON ((`e`.`officeCode` = `o`.`officeCode`)))
     GROUP BY `ord`.`orderDate` , `ord`.`orderNumber` , `p`.`productName` , `p`.`productLine` , `c`.`customerName` , `c`.`city` , `c`.`country` , `o`.`city` , `o`.`country` , `p`.`buyPrice` , `od`.`priceEach` , `od`.`quantityOrdered`