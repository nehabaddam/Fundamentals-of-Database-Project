INSERT INTO SignUp VALUES('Neha Goud Baddam','testemail1@gmail.com','1111111111','test_pass1','test_pass1');
INSERT INTO SignUp VALUES('Reshmi Chowdary Divi','testemail2@gmail.com','2222222222','test_pass2','test_pass2');
INSERT INTO SignUp VALUES('Purandhara Maharshi Chidurala','testemail3@gmail.com','3333333333','test_pass3','test_pass3');

INSERT INTO ADMIN VALUES('admin101','Jaya Bhargav','Burugupalli','4444444444','testadmin_pass1','2659 Wescam Court','','Texas','USA');
INSERT INTO ADMIN VALUES('admin102','Purandhara Maharshi','Chidurala','5555555555','testadmin_pass2','4041 Elsie Drive','','Texas','USA');

INSERT INTO Queries VALUES('Q101','P101','99101','When will the sale start?','admin101','In december','24-07-2022');
INSERT INTO Queries VALUES('Q102','P102','99102','How many days will the refund take?','admin102','By next week','24-07-2022');
INSERT INTO Queries VALUES('','P102','99102','How many days will the refund take?','admin102','By next week','24-07-2022');

INSERT INTO Feedback VALUES('F101','Postive','24-07-2022','The color and fabric of my dress is awesome.','testemail1@gmail.com');
INSERT INTO Feedback VALUES('F102','Postive','24-07-2022','I like you products.','testemail2@gmail.com');
INSERT INTO Feedback VALUES('','Postive','24-07-2022','I like you products.','testemail2@gmail.com');

INSERT INTO UserfavProd VALUES('FP101','99101','P101','2','25-07-2022','P102','2','10-07-2022','P103','1','24-07-2022');
INSERT INTO UserfavProd VALUES('FP102','99102','P104','1','20-07-2022','P105','1','18-07-2022','P106','4','23-07-2022');
INSERT INTO UserfavProd VALUES('FP103','99103','P101','3','15-07-2022','P102','4','21-07-2022','P103','3','25-07-2022');
INSERT INTO UserfavProd VALUES('FP103','99103','P101','3','15-07-2022','P102','4','21-07-2022','P103','3','25-07-2022');
INSERT INTO UserfavProd VALUES('','99103','P101','3','15-07-2022','P102','4','21-07-2022','P103','3','25-07-2022');

INSERT INTO USER VALUES('99101','Louise ','Montgomery','testemail1@gmail.com','512-925-8738','test_pass_1','25','M','100000$','2797 Christie Way','','MA','USA','17520','Q101','','FP101');
INSERT INTO USER VALUES('99102','Darlene ','Hughes','testemail2@gmail.com','773-717-9539','test_pass_2','32','F','150000$','4105 Colony Street','','PA','USA','64880','','F101','FP102');
INSERT INTO USER VALUES('99103','Rosie ','Cannon','testemail3@gmail.com','619-925-6125','test_pass_3','27','M','1750000$','1563 Webster Street','','FL','USA','19108','Q102','','FP103');
INSERT INTO USER VALUES('99104','Maryann ','Powell','testemail1@gmail.com','214-454-5951','test_pass_4','42','F','200000$','4809 Hickory Street','','VA','USA','22101','','F102','');


INSERT INTO Category_Code VALUES('C101','Men');
INSERT INTO Category_Code VALUES('C102','Women');
INSERT INTO Category_Code VALUES('C103','Children');
INSERT INTO Category_Code VALUES('C104','Merchandise');
INSERT INTO Category_Code VALUES('','Merchandise');

INSERT INTO SubCategory_Code VALUES('SC101','C101','Men Shirts');
INSERT INTO SubCategory_Code VALUES('SC102','C102','Women wear');
INSERT INTO SubCategory_Code VALUES('SC103','C103','Childern dress');
INSERT INTO SubCategory_Code VALUES('SC104','C104','Watch');
INSERT INTO SubCategory_Code VALUES('','C104','Watch');

INSERT INTO Merchandise VALUES('M101','Watch');
INSERT INTO Merchandise VALUES('M102','Purse');
INSERT INTO Merchandise VALUES('M103','Handbag');
INSERT INTO Merchandise VALUES('','Handbag');

INSERT INTO Type_of_Payment VALUES('5510101','Credit card','Online');
INSERT INTO Type_of_Payment VALUES('5510202','Debit card','Online');
INSERT INTO Type_of_Payment VALUES('5510303','COD','COD');
INSERT INTO Type_of_Payment VALUES('5510404','Amazon Pay','Online');

INSERT INTO Products VALUES('P101','C101','SC101','','Men','Men Shirts','','100$','15');
INSERT INTO Products VALUES('P102','C102','SC102','','Women','Women wear','','150$','25');
INSERT INTO Products VALUES('P103','C103','SC103','','Children','Childern dress','','75$','30');
INSERT INTO Products VALUES('P104','C104','SC104','M101','Merchandise','Watch','Watch','250$','10');
INSERT INTO Products VALUES('P105','C101','SC103','','Men','Men Shirts','','200$','35');
INSERT INTO Products VALUES('P106','C102','SC102','','Women','Women wear','','125$','20');

INSERT INTO USER_ORDER VALUES('O101','99101','P101','5510101','200$','10','25-07-2022','In-Progress','admin101');
INSERT INTO USER_ORDER VALUES('O102','99102','P102','5510202','250$','5','25-07-2022','In-Transit','admin102');
INSERT INTO USER_ORDER VALUES('O103','99103','P103','5510303','300$','20','25-07-2022','Deliveried','admin102');
INSERT INTO USER_ORDER VALUES('O104','99104','P104','5510404','350$','25','25-07-2022','Out for Delivery','admin101');

INSERT INTO Payment_Details VALUES('99121011','99101','O101','5510101','1230-4560-7890','Louise ','Jul-27','123','Y','admin101');
INSERT INTO Payment_Details VALUES('99121012','99102','O102','5510202','1111-1111-1111','Darlene ','Aug-26','123','Y','admin102');
INSERT INTO Payment_Details VALUES('99121013','99103','O103','5510303','2222-2222-2222','Rosie ','Sep-24','123','N','admin101');
INSERT INTO Payment_Details VALUES('99121014','99104','O104','5510404','3333-3333-3333','Maryann ','Sep-25','123','N','admin102');

INSERT INTO Company VALUES('admin101','Store Order Management System','101','8711 Wilson Road','','Fort Dodge','IA','50501');
INSERT INTO Company VALUES('admin102','Store Order Management System','102','9 Brickell Avenue','','Williamsport','PA','17701');

INSERT INTO Order_Manager VALUES('admin101','99101','O101','In-Progress','In-Transit','');
INSERT INTO Order_Manager VALUES('admin102','99102','O102','In-Transit','Will be out for delivery','');
INSERT INTO Order_Manager VALUES('admin101','99103','O103','Deliveried','','');
INSERT INTO Order_Manager VALUES('admin102','99104','O105','Out for Delivery','Delivered','');

INSERT INTO Add_Product VALUES('P107','admin101','C101','SC101','10','IMG1');
INSERT INTO Add_Product VALUES('P108','admin101','C102','SC102','20','IMG2');

INSERT INTO Employee VALUES('E101','admin101','O101','Geneva Steele','','1000000$','670 Talbot Street','','PA','USA','19438');
INSERT INTO Employee VALUES('E102','admin102','O102','Noah Day','Geneva Steele','1250000$','7628 Cambridge St.','','FL','USA','30705');
INSERT INTO Employee VALUES('E103','admin101','O103','Jean Banks','Geneva Steele','2500000$','134 Oxford Street','','GA','USA','20735');
INSERT INTO Employee VALUES('E104','admin102','O104','Wendell Brown','Geneva Steele','3500000$','3 Thorne St.','','MD','USA','34116');
INSERT INTO Employee VALUES('E106','admin101','O101','Martha Gordon','Geneva Steele','4000000$','9 Brickell Avenue','','PA','USA','50501');
