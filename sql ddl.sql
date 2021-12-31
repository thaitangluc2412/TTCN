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
    Rating      INT,
    Image       VARCHAR(255) NOT NULL,
    Price       DOUBLE       NOT NULL,
    PublishDate DATE         NOT NULL,
    Quantity INT,
    CONSTRAINT PRIMARY KEY (BookID),
    CONSTRAINT fk_Book_Category FOREIGN KEY (CategoryID) REFERENCES Category (CategoryID)
);

CREATE TABLE BookUser
(
	BookID INT,
    UserID INT,
    CONSTRAINT PRIMARY KEY (BookID, UserID),
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

CREATE TABLE OrderDetail
(
    OrderID   INT,
    BookID   INT,
    Quantity INT NOT NULL,
    PRIMARY KEY (orderID, BookID),
    CONSTRAINT fk_OrderDetail_Order FOREIGN KEY (OrderID) REFERENCES `Order` (OrderID),
    CONSTRAINT fk_OrderDetail_Book FOREIGN KEY (BookID) REFERENCES `Book` (BookID)
);

CREATE TABLE Review
(
    ReviewID   INT AUTO_INCREMENT,
    BookID     INT,
    UserID     INT,
    Comment    VARCHAR(255),
    Rating     INT   NOT NULL,
    ReviewDate DATETIME NOT NULL,
    PRIMARY KEY (ReviewID),
    CONSTRAINT fk_Review_Book FOREIGN KEY (BookID) REFERENCES Book (BookID),
    CONSTRAINT fk_Review_UserInfo FOREIGN KEY (UserID) REFERENCES User (UserID)
);
SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO User (UserID, Email, UserPassword, Name, Address, PhoneNumber, AccountNumber, Role)
VALUES (1, "thaitangluc2412@gmail.com", "1234", "Thai Luc", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Admin"),
	   (2, "manhviet@gmail.com", "1234", "Manh Viet", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Customer"),
       (3, "xuantuan@gmail.com", "1234", "Xuan Tuan 1", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Author"),
       (4, "trungnguyen@gmail.com", "1234", "Trung Nguyen", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Admin"),
       (5, "nguyenvu@gmail.com", "1234", "Nguyen Vu", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Customer"),
       (6, "tacgia1@gmail.com", "1234", "Xuan Tuan 2", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Author"),
       (7, "tacgia2@gmail.com", "1234", "Xuan Tuan 3", "Cam Lo, Quang Tri", "06873496874", "037486164967", "Author");
       


INSERT INTO Book (BookID, CategoryID, Title, Description, Rating, Image, Price, PublishDate, Quantity)
VALUES (1, 1, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
		(2, 2, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
		(3, 3, "Trang Quynh", "Truyen hay", 2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (4, 4, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (5, 1, "Trang Quynh", "Truyen hay", 5, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (6, 2, "Trang Quynh", "Truyen hay", 3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (7, 3, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (8, 4, "Trang Quynh", "Truyen hay", 2, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (9, 5, "Trang Quynh", "Truyen hay", 3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
		(10, 1, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (11, 2, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (12, 3, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (13, 4, "Trang Quynh", "Truyen hay", 3, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50),
        (14, 5, "Trang Quynh", "Truyen hay", 4, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10", 50);
        
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
       
INSERT INTO BookUser (BookId, UserId)
VALUES (1, 3), (1, 6),
       (2, 7), (2, 3), (2, 6),
       (3, 6),
       (4, 3), (4, 7),
       (5, 7),
       (6, 3),
       (7, 6), (7, 3),
       (8, 6), (8, 7),
       (9, 3),
       (10, 7),
       (11, 3),
       (12, 6),
       (13, 7),
       (14, 7);
       
INSERT INTO OrderDetail (OrderId, BookId, Quantity)
VALUES (1, 1, 3), (1, 2, 1), (1, 5, 2),
       (2, 4, 3), (2, 5, 2),
       (3, 1, 5), (3, 6, 4), (3, 5, 5), (3, 10, 2),
       (4, 6, 3), (4, 12, 5), (4, 14, 5),
       (5, 4, 4),
       (6, 9, 2),
       (7, 10, 9), (7, 5, 8),
	   (8, 6, 1), (8, 5, 1), (8, 2, 1),
       (9, 1, 3), (9, 5, 2),
       (10, 1, 3), (10, 5, 2),
       (11, 8, 7);

INSERT INTO Review(ReviewId, BookId, UserId, Comment, Rating, ReviewDate)
VALUES (1, 1, 2, "Truyen hay", 4, "2020-12-15"),
	   (2, 1, 5, "Truyen hay", 4, "2020-12-15"),
       (3, 2, 2, "Truyen hay", 4, "2020-12-15"),
       (4, 2, 5, "Truyen hay", 4, "2020-12-15"),
       (5, 3, 2, "Truyen hay", 4, "2020-12-15"),
       (6, 3, 5, "Truyen hay", 4, "2020-12-15"),
       (7, 4, 2, "Truyen hay", 4, "2020-12-15"),
       (8, 4, 5, "Truyen hay", 4, "2020-12-15"),
       (9, 5, 2, "Truyen hay", 4, "2020-12-15"),
       (10, 5, 5, "Truyen hay", 4, "2020-12-15"),
       (11, 6, 2, "Truyen hay", 4, "2020-12-15"),
       (12, 6, 5, "Truyen hay", 4, "2020-12-15"),
       (13, 7, 2, "Truyen hay", 4, "2020-12-15"),
       (14, 7, 5, "Truyen hay", 4, "2020-12-15"),
       (15, 8, 2, "Truyen hay", 4, "2020-12-15"),
       (16, 8, 5, "Truyen hay", 4, "2020-12-15"),
       (17, 9, 2, "Truyen hay", 4, "2020-12-15"),
       (18, 9, 5, "Truyen hay", 4, "2020-12-15");
       
