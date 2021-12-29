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
    OrderDate       DATETIME                       NOT NULL,
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

INSERT INTO Book (BookID, CategoryID, Title, Description, Image, Price, PublishDate)
VALUES (1, 1, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(2, 2, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(3, 3, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (4, 4, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (5, 5, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (6, 6, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (7, 7, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (8, 8, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (9, 9, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
		(10, 10, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (11, 11, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (12, 12, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (13, 13, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),
        (14, 14, "Trang Quynh", "Truyen hay", "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10");

