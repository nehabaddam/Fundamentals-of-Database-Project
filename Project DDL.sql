CREATE DATABASE iclothing;

CREATE TABLE `SignUp` (
  `Full_name` VARCHAR(255),
  `Email` VARCHAR(255),
  `Phone_Number` VARCHAR(255),
  `User_password` VARCHAR(255),
  `Confirm_User_Password` VARCHAR(255),
  PRIMARY KEY(Email)
);

CREATE TABLE `Admin` (
  `Admin_ID` VARCHAR(255),
  `Admin_First_name` VARCHAR(255),
  `Admin_Last_name` VARCHAR(255),
  `Admin_phone_number` VARCHAR(255),
  `Admin_Password` VARCHAR(255),
  `Address_Line_1` VARCHAR(255),
  `Address_Line_2` VARCHAR(255),
  `State` VARCHAR(255),
  `Country` VARCHAR(255),
  PRIMARY KEY(Admin_ID)
);

CREATE TABLE `Queries` (
  `Queries_ID` VARCHAR(255),
  `Product_ID` VARCHAR(255),
  `User_ID` VARCHAR(255),
  `User_Query` VARCHAR(255),
  `Admin_ID` VARCHAR(255),
  `Admin_reply` VARCHAR(255),
  `Date` VARCHAR(255),
  PRIMARY KEY(Queries_ID),
  FOREIGN KEY(Admin_ID) REFERENCES Admin(Admin_ID)
);

CREATE TABLE `Feedback` (
  `Feedback_ID` VARCHAR(255),
  `Feedback_type` VARCHAR(255),
  `Feedback_date` VARCHAR(255),
  `Feedback` VARCHAR(255),
  `User_email` VARCHAR(255),
  PRIMARY KEY(Feedback_ID)
);

CREATE TABLE `UserfavProd` (
  `FavProd_ID` VARCHAR(255),
  `User_ID` VARCHAR(255),
  `Product_ID_1` VARCHAR(255),
  `Product_ID_1_Quantity` VARCHAR(255),
  `Product_ID_1_Date` VARCHAR(255),
  `Product_ID_2` VARCHAR(255),
  `Product_ID_2_Quantity` VARCHAR(255),
  `Product_ID_2_Date` VARCHAR(255),
  `Product_ID_3` VARCHAR(255),
  `Product_ID_3_Quantity` VARCHAR(255),
  `Product_ID_3_Date` VARCHAR(255),
  PRIMARY KEY(FavProd_ID)
);



CREATE TABLE `User` (
  `User_ID` VARCHAR(255),
  `First_Name` VARCHAR(255),
  `Last_Name` VARCHAR(255),
  `Email` VARCHAR(255),
  `Phone_Number` VARCHAR(255),
  `User_password` VARCHAR(255),
  `Customer_Age` VARCHAR(255),
  `Customer_Sex` VARCHAR(255),
  `Customer_Income` VARCHAR(255),
  `Customer_Address_Line1` VARCHAR(255),
  `Customer_Address_Line2` VARCHAR(255),
  `State` VARCHAR(255),
  `Country` VARCHAR(255),
  `Zip_Code` VARCHAR(255),
  `Queries_ID` VARCHAR(255),
  `Feedback_ID` VARCHAR(255),
  `FavProd_ID` VARCHAR(255),
  PRIMARY KEY(User_ID),
  FOREIGN KEY(Email) REFERENCES SignUp(Email),
  FOREIGN KEY(Queries_ID) REFERENCES Queries(Queries_ID),
  FOREIGN KEY(Feedback_ID) REFERENCES Feedback(Feedback_ID),
  FOREIGN KEY(FavProd_ID) REFERENCES UserfavProd(FavProd_ID)
);

CREATE TABLE `Category_Code` (
  `Category_ID` VARCHAR(255),
  `Category_Type` VARCHAR(255),
  PRIMARY KEY(Category_ID)
);


CREATE TABLE `SubCategory_Code` (
  `SubCategory_ID` VARCHAR(255),
  `Category_ID` VARCHAR(255),
  `SubCategory_Type` VARCHAR(255),
  PRIMARY KEY(SubCategory_ID),
  FOREIGN KEY(Category_ID) REFERENCES Category_Code(Category_ID)
);

CREATE TABLE `Merchandise` (
  `Merchandise_ID` VARCHAR(255),
  `Merchandise_Type` VARCHAR(255),
  PRIMARY KEY(Merchandise_ID)
);


CREATE TABLE `Type_of_Payment` (
  `Payment_type_ID` VARCHAR(255),
  `Payment_Type` VARCHAR(255),
  `Payment_mode` VARCHAR(255),
  PRIMARY KEY(Payment_type_ID)
);


CREATE TABLE `Products` (
  `Product_ID` VARCHAR(255),
  `Category_ID` VARCHAR(255),
  `SubCategory_ID` VARCHAR(255),
  `Merchandise_ID` VARCHAR(255),
  `Category_Type` VARCHAR(255),
  `SubCategory_Type` VARCHAR(255),
  `Merchandise_Type` VARCHAR(255),
  `Product_Price` VARCHAR(255),
  `Product_Stock` VARCHAR(255),
  PRIMARY KEY(Product_ID),
  FOREIGN KEY(Category_ID) REFERENCES Category_Code(Category_ID),
  FOREIGN KEY(SubCategory_ID) REFERENCES SubCategory_Code(SubCategory_ID),
  FOREIGN KEY(Merchandise_ID) REFERENCES Merchandise(Merchandise_ID)
);




CREATE TABLE `User_Order` (
  `Order_ID` VARCHAR(255),
  `User_ID` VARCHAR(255),
  `Product_ID` VARCHAR(255),
  `Payment_ID` VARCHAR(255),
  `Total_Price` VARCHAR(255),
  `Quantity` VARCHAR(255),
  `Date_of_Order` VARCHAR(255),
  `Status_of_Order` VARCHAR(255),
  `Admin_ID` VARCHAR(255),
  PRIMARY KEY(Order_ID),
  FOREIGN KEY (Admin_ID) REFERENCES ADMIN(Admin_ID),
  FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
  FOREIGN KEY (User_ID) REFERENCES USER(User_ID)
);


CREATE TABLE `Payment_Details` (
  `Payment_ID` VARCHAR(255),
  `User_ID` VARCHAR(255),
  `Order_ID` VARCHAR(255),
  `Payment_type_ID` VARCHAR(255),
  `Card_Number` VARCHAR(255),
  `Name_on_Card` VARCHAR(255),
  `Expiry_Date` VARCHAR(255),
  `CVV` VARCHAR(255),
  `Saved_For_Future_Flag` VARCHAR(255),
  `Admin_ID` VARCHAR(255),
  PRIMARY KEY(Payment_ID),
  FOREIGN KEY(User_ID) REFERENCES User(User_ID),
  FOREIGN KEY(Payment_type_ID) REFERENCES Type_of_Payment(Payment_type_ID),
  FOREIGN KEY(Admin_ID) REFERENCES Admin(Admin_ID),
  FOREIGN KEY(Order_ID) REFERENCES User_Order(Order_ID)
);


CREATE TABLE `Company` (
  `Admin_ID` VARCHAR(255),
  `Company_name` VARCHAR(255),
  `Strore_ID` VARCHAR(255),
  `Address_Line_1` VARCHAR(255),
  `Address_line_2` VARCHAR(255),
  `City` VARCHAR(255),
  `State` VARCHAR(255),
  `Zip_Code` VARCHAR(255)
);

CREATE TABLE `Order_Manager` (
  `Admin_ID` VARCHAR(255),
  `User_ID` VARCHAR(255),
  `Order_ID` VARCHAR(255),
  `Previous_Order_State` VARCHAR(255),
  `New_Order_State` VARCHAR(255),
  `Admin_Comment` VARCHAR(255),
  PRIMARY KEY(Admin_ID,User_ID,Order_ID)
);

CREATE TABLE `Add_Product` (
  `New_Product_ID` VARCHAR(255),
  `Admin_ID` VARCHAR(255),
  `Category_ID` VARCHAR(255),
  `SubCategory_ID` VARCHAR(255),
  `Stock` VARCHAR(255),
  `Image` VARCHAR(255),
  PRIMARY KEY(New_Product_ID,Admin_ID),
  FOREIGN KEY(Category_ID) REFERENCES Category_Code(Category_ID),
  FOREIGN KEY(SubCategory_ID) REFERENCES SubCategory_Code(SubCategory_ID)
);

CREATE TABLE `Employee` (
  `Employee_ID` VARCHAR(255),
  `Admin_ID` VARCHAR(255),
  `Order_ID` VARCHAR(255),
  `Employee_Name` VARCHAR(255),
  `Employee_Manager` VARCHAR(255),
  `Employee_Salary` VARCHAR(255),
  `Employee_Address_Line_1` VARCHAR(255),
  `Employee_Address_Line_2` VARCHAR(255),
  `Employee_State` VARCHAR(255),
  `Employee_Country` VARCHAR(255),
  `Employee_Zip_Code` VARCHAR(255),
  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Admin_ID) REFERENCES ADMIN(Admin_ID),
  FOREIGN KEY(Order_ID) REFERENCES user_order(Order_ID)
);


