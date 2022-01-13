DROP SCHEMA IF EXISTS bookstorev2;

CREATE SCHEMA bookstorev2;

USE bookstorev2;

CREATE TABLE Admin
(
    AdminId  INT AUTO_INCREMENT,
    Account  VARCHAR(255) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (AdminId)
);

CREATE TABLE Customer
(
    CustomerId  INT AUTO_INCREMENT,
    Email       VARCHAR(255) NOT NULL UNIQUE,
    Password    VARCHAR(255) NOT NULL,
    Name        VARCHAR(255) NOT NULL,
    Address     VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (CustomerId)
);

CREATE TABLE Author
(
    AuthorId    INT AUTO_INCREMENT,
    Email       VARCHAR(255) NOT NULL UNIQUE,
    Password    VARCHAR(255) NOT NULL,
    Name        VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (AuthorId)
);

CREATE TABLE `Order`
(
    OrderId         INT AUTO_INCREMENT,
    CustomerId      INT                            NOT NULL,
    OrderDate       DATE                           NOT NULL,
    TotalPrice      DOUBLE                         NULL,
    Status          ENUM ('Arrived', 'NotArrived') NOT NULL,
    ShippingAddress VARCHAR(255)                   NOT NULL,
    RecipientName   VARCHAR(255)                   NOT NULL,
    RecipientPhone  VARCHAR(255)                   NOT NULL,
    CONSTRAINT PRIMARY KEY (OrderId),
    CONSTRAINT fk_Order_Customer FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerId)
);

CREATE TABLE Category
(
    CategoryId INT AUTO_INCREMENT,
    Name       VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (CategoryId)
);

CREATE TABLE Book
(
    BookId     INT AUTO_INCREMENT,
    CategoryId INT          NOT NULL,
    Title      VARCHAR(255) NOT NULL,
    Author     VARCHAR(255),
    Rating     INT,
    Image      TEXT         NOT NULL,
    Price      DOUBLE       NOT NULL,
    Quantity   INT          NOT NULL,
    CONSTRAINT PRIMARY KEY (BookId),
    CONSTRAINT fk_Book_Category FOREIGN KEY (CategoryId) REFERENCES Category (CategoryId)
);

CREATE TABLE Review
(
    ReviewId   INT AUTO_INCREMENT,
    BookId     INT  NOT NULL,
    CustomerId INT  NOT NULL,
    Comment    TEXT,
    Rating     INT  NOT NULL,
    ReviewDate DATE NOT NULL,
    CONSTRAINT PRIMARY KEY (ReviewId),
    CONSTRAINT fk_Review_Book FOREIGN KEY (BookId) REFERENCES Book (BookId),
    CONSTRAINT fk_Review_Customer FOREIGN KEY (CustomerId) REFERENCES Customer (CustomerId)
);

CREATE TABLE OrderDetail
(
    OrderId  INT,
    BookId   INT,
    Quantity INT NOT NULL,
    CONSTRAINT PRIMARY KEY (OrderId, BookId),
    CONSTRAINT fk_OrderDetail_Order FOREIGN KEY (OrderId) REFERENCES `Order` (OrderId),
    CONSTRAINT fk_OrderDetail_Book FOREIGN KEY (BookId) REFERENCES Book (BookId)
);

CREATE TABLE BookDetail
(
    BookId   INT,
    AuthorId INT,
    Profit   DOUBLE,
    CONSTRAINT PRIMARY KEY (BookId, AuthorId),
    CONSTRAINT fk_BookDetail_Book FOREIGN KEY (BookId) REFERENCES Book (BookId),
    CONSTRAINT fk_BookDetail_Author FOREIGN KEY (AuthorId) REFERENCES Author (AuthorId)
);


