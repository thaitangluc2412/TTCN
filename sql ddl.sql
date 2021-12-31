CREATE SCHEMA bookstore;

USE bookstore;

CREATE TABLE Category
(
    CategoryID INT AUTO_INCREMENT,
    Name       VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (CategoryID)
);

CREATE TABLE User
(
    UserID        INT AUTO_INCREMENT,
    Email         VARCHAR(255)                         NOT NULL UNIQUE,
    UserPassword  VARCHAR(255)                         NOT NULL,
    Name          VARCHAR(255)                         NOT NULL,
    Address       VARCHAR(255)                         NOT NULL,
    PhoneNumber   VARCHAR(255)                         NOT NULL,
    AccountNumber VARCHAR(255)                         NOT NULL,
    Role          ENUM ('Admin', 'Customer', 'Author') NOT NULL,
    CONSTRAINT PRIMARY KEY (UserID)
);

CREATE TABLE Book
(
    BookID      INT AUTO_INCREMENT,
    CategoryID  INT,
    Title       VARCHAR(255) NOT NULL,
    Description VARCHAR(255),
    Rating      Double,
    Image       VARCHAR(255) NOT NULL,
    Price       DOUBLE       NOT NULL,
    PublishDate DATE         NOT NULL,
    CONSTRAINT PRIMARY KEY (BookID),
    CONSTRAINT fk_Book_Category FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID)
);

CREATE TABLE BookDetail
(
    UserID INT,
    BookID INT,
    CONSTRAINT PRIMARY KEY (UserID, BookID),
    CONSTRAINT fk_BookDetail_UserInfo FOREIGN KEY (UserID) REFERENCES User (UserID),
    CONSTRAINT fk_BookDetail_Book FOREIGN KEY (BookID) REFERENCES Book (BookID)
);

CREATE TABLE `Order`
(
    OrderID         INT AUTO_INCREMENT,
    UserID          INT,
    OrderDate       DATE                       NOT NULL,
    TotalPrice      DOUBLE                         NOT NULL,
    Status          ENUM ('Arrived', 'NotArrived') NOT NULL,
    ShippingAddress VARCHAR(255)                   NOT NULL,
    RecipientName   VARCHAR(255)                   NOT NULL,
    RecipientPhone  VARCHAR(255)                   NOT NULL,
    CONSTRAINT PRIMARY KEY (OrderID),
    CONSTRAINT fk_Order_UserInfo FOREIGN KEY (UserID) REFERENCES User (UserID)
);

CREATE TABLE OderDetail
(
    OderID   INT,
    BookID   INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (OderID, BookID),
    CONSTRAINT fk_OrderDetail_Order FOREIGN KEY (OderID) REFERENCES `Order` (OrderID),
    CONSTRAINT fk_OrderDetail_Book FOREIGN KEY (BookID) REFERENCES `Book` (BookID)
);

CREATE TABLE Review
(
    ReviewID   INT AUTO_INCREMENT,
    BookID     INT,
    UserID     INT,
    Comment    VARCHAR(255),
    Rating     DOUBLE   NOT NULL,
    ReviewDate DATETIME NOT NULL,
    PRIMARY KEY (ReviewID),
    CONSTRAINT fk_Review_Book FOREIGN KEY (BookID) REFERENCES Book (BookID),
    CONSTRAINT fk_Review_UserInfo FOREIGN KEY (UserID) REFERENCES User (UserID)
);


INSERT INTO User (UserID, Email, UserPassword, Name, Address, PhoneNumber, AccountNumber, Role)
VALUES (1, "thaitangluc2412@gmail.com", "1234", "Thai Luc", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Admin"),
	   (2, "manhviet@gmail.com", "1234", "Manh Viet", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Customer"),
       (3, "xuantuan@gmail.com", "1234", "Xuan Tuan", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Author"),
       (4, "trungnguyen@gmail.com", "1234", "Trung Nguyen", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Admin"),
       (5, "nguyenvu@gmail.com", "1234", "Nguyen Vu", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Customer");
       

INSERT INTO Book (BookID, CategoryID, Title, Description, Rating, Image, Price, PublishDate)
VALUES (1, 1, "Trang Quynh", "Truyen hay", 4.3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(2, 2, "Trang Quynh", "Truyen hay", 4.2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(3, 3, "Trang Quynh", "Truyen hay", 2.1, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (4, 4, "Trang Quynh", "Truyen hay", 4.5, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (5, 1, "Trang Quynh", "Truyen hay", 5.0, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (6, 2, "Trang Quynh", "Truyen hay", 3.4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (7, 3, "Trang Quynh", "Truyen hay", 4.2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (8, 4, "Trang Quynh", "Truyen hay", 2.4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (9, 5, "Trang Quynh", "Truyen hay", 3.8, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(10, 1, "Trang Quynh", "Truyen hay", 4.2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (11, 2, "Trang Quynh", "Truyen hay", 4.8, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (12, 3, "Trang Quynh", "Truyen hay", 4.2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (13, 4, "Trang Quynh", "Truyen hay", 3.4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (14, 5, "Trang Quynh", "Truyen hay", 4.6, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10");

INSERT INTO Book (BookID, CategoryID, Title, Description, Rating, Image, Price, PublishDate)
VALUES (2, 1, "Trang Quynh", "Truyen hay", 4.3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
 (3, 1, "Trang Quynh", "Truyen hay", 4.3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10");

INSERT INTO Category (CategoryID, Name)
VALUES (1, "Truyen Cuoi"),
	   (2, "Truyen Ma"),
       (3, "Truyen Kinh Di"),
       (4, "Truyen Co Tinh"),
       (5, "Truyen tinh cam");
       
       
INSERT INTO `Order` (OrderID, UserID, OrderDate, TotalPrice, Status, ShippingAddress, RecipientName, RecipientPhone)
VALUES (1, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
	   (2, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (3, 5, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (4, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (5, 5, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (6, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (7, 5, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (8, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (9, 2, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (10, 5, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988"),
       (11, 5, "2021-12-5", 50000.00, "Arrived", "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988");

-- INSERT INTO `Order` (OrderID, UserID, OrderDate, TotalPrice, Status, ShippingAddress, RecipientName, RecipientPhone)
-- VALUES (12, 2, "2021-12-13", 60000.00, 2, "Cam Lo, Quang tri", "Thai Tang Luc", "067761634988");
-- 	   
