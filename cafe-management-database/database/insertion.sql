-- Insert data into Employees Table
INSERT INTO Employees VALUES (1, 'John', 'Doe', 'Manager', TO_DATE('2020-01-10', 'YYYY-MM-DD'));
INSERT INTO Employees VALUES (2, 'Emma', 'Smith', 'Barista', TO_DATE('2021-03-15', 'YYYY-MM-DD'));
INSERT INTO Employees VALUES (3, 'Oliver', 'Johnson', 'Chef', TO_DATE('2019-06-20', 'YYYY-MM-DD'));
INSERT INTO Employees VALUES (4, 'Ava', 'Williams', 'Waitress', TO_DATE('2022-05-22', 'YYYY-MM-DD'));
INSERT INTO Employees VALUES (5, 'Liam', 'Brown', 'Cleaner', TO_DATE('2021-11-05', 'YYYY-MM-DD'));

-- Insert data into Members Table
INSERT INTO Members VALUES (1, 'Alice', 'Green', 'alice.green@email.com', '1234567890');
INSERT INTO Members VALUES (2, 'Jacob', 'Jones', 'jacob.jones@email.com', '0987654321');
INSERT INTO Members VALUES (3, 'Sophia', 'Taylor', 'sophia.taylor@email.com', '1234598765');
INSERT INTO Members VALUES (4, 'Mason', 'Miller', 'mason.miller@email.com', '9876543210');
INSERT INTO Members VALUES (5, 'Isabella', 'Davis', 'isabella.davis@email.com', '1231231234');

-- Insert data into Products Table
INSERT INTO Products VALUES (1, 'Cappuccino', 'A classic Italian coffee drink', 3.50, 'Beverage');
INSERT INTO Products VALUES (2, 'Blueberry Muffin', 'Fresh blueberry muffin', 2.50, 'Food');
INSERT INTO Products VALUES (3, 'Espresso', 'Strong and bold espresso', 2.00, 'Beverage');
INSERT INTO Products VALUES (4, 'Bagel', 'Freshly baked bagel with cream cheese', 2.75, 'Food');
INSERT INTO Products VALUES (5, 'Latte', 'Creamy and smooth coffee', 3.00, 'Beverage');

-- Insert data into Suppliers Table
INSERT INTO Suppliers VALUES (1, 'FreshFarm', 'John Appleseed', 'john@appleseed.com', '123456789');
INSERT INTO Suppliers VALUES (2, 'BeanRoasters', 'Emily Bean', 'emily@beanroasters.com', '987654321');
INSERT INTO Suppliers VALUES (3, 'DailyBread', 'Olivia Wheat', 'olivia@dailybread.com', '111222333');
INSERT INTO Suppliers VALUES (4, 'BerryGood', 'Lucas Berry', 'lucas@berrygood.com', '444555666');
INSERT INTO Suppliers VALUES (5, 'DairyLand', 'Mia Milk', 'mia@dairyland.com', '777888999');

-- Insert data into Inventory Table
INSERT INTO Inventory VALUES (1, 1, 2, 20, TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO Inventory VALUES (2, 2, 3, 15, TO_DATE('2023-03-02', 'YYYY-MM-DD'));
INSERT INTO Inventory VALUES (3, 3, 1, 30, TO_DATE('2023-03-03', 'YYYY-MM-DD'));
INSERT INTO Inventory VALUES (4, 4, 3, 25, TO_DATE('2023-03-04', 'YYYY-MM-DD'));
INSERT INTO Inventory VALUES (5, 5, 2, 10, TO_DATE('2023-03-05', 'YYYY-MM-DD'));

-- Insert data into Orders Table
INSERT INTO Orders VALUES (1, 1, 2, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 5.50);
INSERT INTO Orders VALUES (2, 2, 3, TO_DATE('2023-04-02', 'YYYY-MM-DD'), 7.75);
INSERT INTO Orders VALUES (3, 3, 4, TO_DATE('2023-04-03', 'YYYY-MM-DD'), 6.00);
INSERT INTO Orders VALUES (4, 4, 1, TO_DATE('2023-04-04', 'YYYY-MM-DD'), 4.25);
INSERT INTO Orders VALUES (5, 5, 5, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 9.00);

-- Insert data into OrderDetails Table
INSERT INTO OrderDetails VALUES (1, 1, 1, 2, 7.00);
INSERT INTO OrderDetails VALUES (2, 2, 2, 3, 7.50);
INSERT INTO OrderDetails VALUES (3, 3, 3, 1, 2.00);
INSERT INTO OrderDetails VALUES (4, 4, 4, 2, 5.50);
INSERT INTO OrderDetails VALUES (5, 5, 5, 2, 6.00);

-- Insert data into MembersPoint Table
INSERT INTO MembersPoint VALUES (1, 1, 100, 20, TO_DATE('2023-03-15', 'YYYY-MM-DD'));
INSERT INTO MembersPoint VALUES (2, 2, 150, 30, TO_DATE('2023-03-16', 'YYYY-MM-DD'));
INSERT INTO MembersPoint VALUES (3, 3, 200, 50, TO_DATE('2023-03-17', 'YYYY-MM-DD'));
INSERT INTO MembersPoint VALUES (4, 4, 250, 70, TO_DATE('2023-03-18', 'YYYY-MM-DD'));
INSERT INTO MembersPoint VALUES (5, 5, 300, 100, TO_DATE('2023-03-19', 'YYYY-MM-DD'));

-- Insert data into RedeemPoints Table
INSERT INTO RedeemPoints VALUES (1, 1, 50, 10, TO_DATE('2023-06-01', 'YYYY-MM-DD'));
INSERT INTO RedeemPoints VALUES (2, 2, 60, 20, TO_DATE('2023-06-02', 'YYYY-MM-DD'));
INSERT INTO RedeemPoints VALUES (3, 3, 40, 5, TO_DATE('2023-06-03', 'YYYY-MM-DD'));
INSERT INTO RedeemPoints VALUES (4, 4, 30, 15, TO_DATE('2023-06-04', 'YYYY-MM-DD'));
INSERT INTO RedeemPoints VALUES (5, 5, 70, 25, TO_DATE('2023-06-05', 'YYYY-MM-DD'));
