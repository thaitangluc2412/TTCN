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
    Quantity    INT,
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
    OrderDate       DATE                           NOT NULL,
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
    OrderID  INT,
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
    Rating     INT      NOT NULL,
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
VALUES (1, 3),
       (1, 6),
       (2, 7),
       (2, 3),
       (2, 6),
       (3, 6),
       (4, 3),
       (4, 7),
       (5, 7),
       (6, 3),
       (7, 6),
       (7, 3),
       (8, 6),
       (8, 7),
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
        (14, 5, "Trang Quynh", "Truyen hay", 4.6, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_195509_1_46642.jpg", 12520.00, "2015-11-10"),

	(21, 6, "Thám Tử Lừng Danh Conan Tập 1", "Truyen hay", 5.0, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_182222.jpg", 18000.00, "2018-5-3"),
	(22, 6, "Thám Tử Lừng Danh Conan Tập 2", "Truyen hay", 4.9, "https://cdn0.fahasa.com/media/catalog/product/i/m/image_185929.jpg", 18000.00, "2018-5-3"),
	(23, 6, "Thám Tử Lừng Danh Conan Tập 3", "Truyen hay", 5.0, "https://salt.tikicdn.com/cache/w1200/ts/product/22/10/8e/fd9eae4e26999955e43091e295acbbd3.jpg", 18000.00, "2018-5-3"),
	(24, 6, "Thám Tử Lừng Danh Conan Tập 4", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/34/ac/78/b52ac4c588953fe35512dd901a277682.jpg", 18000.00, "2018-5-3"),
	(25, 6, "Thám Tử Lừng Danh Conan Tập 5", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/4c/f1/ea/f6734381f182f9dc2d9bfaf90d324767.jpg", 18000.00, "2018-5-3"),
	(26, 6, "Thám Tử Lừng Danh Conan Tập 6", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/8c/b4/d3/ed1953df9cdf17d0f30a1dd8032b6534.jpg", 18000.00, "2018-5-3"),
	(27, 6, "Thám Tử Lừng Danh Conan Tập 7", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/82/5d/18/70d4deb0bc1710696f417dd544f3aa89.jpg", 18000.00, "2018-5-3"),
	(28, 6, "Thám Tử Lừng Danh Conan Tập 8", "Truyen hay", 4.4, "https://salt.tikicdn.com/cache/w1200/ts/product/4f/78/c8/765db0148ee01e04ce162b37597898ca.jpg", 18000.00, "2018-5-3"),
	(29, 6, "Thám Tử Lừng Danh Conan Tập 9", "Truyen hay", 4.5, "https://salt.tikicdn.com/cache/w1200/ts/product/d2/10/18/8bc577b100e51f0bee014a9a6c0a876c.jpg", 18000.00, "2018-5-3"),
	(30, 6, "Thám Tử Lừng Danh Conan Tập 10", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/84/2a/54/dc6d7556bf1651f0491225e2d57573e6.jpg", 18000.00, "2018-5-3"),

	(31, 6, "Thám Tử Lừng Danh Conan Tập 11", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/46/f8/e2/1cb3680bbc27a759413335961bc6fecb.jpg", 18000.00, "2018-7-23"),
	(32, 6, "Thám Tử Lừng Danh Conan Tập 12", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/99/40/a9/be0ba6926716188f169b3b070151b22e.jpg", 18000.00, "2018-7-23"),
	(33, 6, "Thám Tử Lừng Danh Conan Tập 13", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/d4/87/db/eb7cebc67503f53a69a78c1099caa772.jpg", 18000.00, "2018-7-23"),
	(34, 6, "Thám Tử Lừng Danh Conan Tập 14", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ce/49/e7/30d86491007a5cac6a0e662fed471e86.jpg", 18000.00, "2018-7-23"),
	(35, 6, "Thám Tử Lừng Danh Conan Tập 15", "Truyen hay", 4.8, "hhttps://salt.tikicdn.com/cache/w1200/ts/product/4d/b5/29/4e811be8b54f9d5e05175a08ea7791ea.jpg", 18000.00, "2018-7-23"),
	(36, 6, "Thám Tử Lừng Danh Conan Tập 16", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/b7/2b/98/d7904298d407a9f9c56f7878649a86b6.jpg", 18000.00, "2018-7-23"),
	(37, 6, "Thám Tử Lừng Danh Conan Tập 17", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/7e/e3/5a/07ac7c0aa4b44eea962ae93c7e812a01.jpg", 18000.00, "2018-7-23"),
	(38, 6, "Thám Tử Lừng Danh Conan Tập 18", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/3f/db/bd/83e857ce4e51ee9e2836125769bfee90.jpg", 18000.00, "2018-7-23"),
	(39, 6, "Thám Tử Lừng Danh Conan Tập 19", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ba/00/26/0fa350d3f26e35e4a8a35964b443c5c9.jpg", 18000.00, "2018-7-23"),
	(40, 6, "Thám Tử Lừng Danh Conan Tập 20", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/76/24/e8/017e8875c1f558c9f3d25ac615f31c6d.jpg", 18000.00, "2018-7-23"),

	(41, 6, "Thám Tử Lừng Danh Conan Tập 21", "Truyen hay", 5.0, "https://salt.tikicdn.com/cache/w1200/ts/product/bc/f0/13/410dd88a376b195fb4c61acb2498c6dd.jpg", 18000.00, "2018-9-5"),
	(42, 6, "Thám Tử Lừng Danh Conan Tập 22", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ac/71/35/9d35e2cbd01817128bbf6755a9f1fea6.jpg", 18000.00, "2018-9-5"),
	(43, 6, "Thám Tử Lừng Danh Conan Tập 23", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/d4/94/1a/9f9460b8a8a1076cfaea5d37b6985bb0.jpg", 18000.00, "2018-9-5"),
	(44, 6, "Thám Tử Lừng Danh Conan Tập 24", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/98/40/9a/2c263e8654152de6e2e507b1375a242e.jpg", 18000.00, "2018-9-5"),
	(45, 6, "Thám Tử Lừng Danh Conan Tập 25", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/5d/5e/4a/c949c7f6d49ab6772274262d9159b1ca.jpg", 18000.00, "2018-9-5"),
	(46, 6, "Thám Tử Lừng Danh Conan Tập 26", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/6b/94/c2/71b567250c0cf8449b2ed838b14b8e2a.jpg", 18000.00, "2018-9-5"),
	(47, 6, "Thám Tử Lừng Danh Conan Tập 27", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/aa/f3/9b/c98cec1d2ecf4f7335fbea13d3fd9ec8.jpg", 18000.00, "2018-9-5"),
	(48, 6, "Thám Tử Lừng Danh Conan Tập 28", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/14/f4/18/6ba1cfa288677ac50ae9e50a6c14d4b9.jpg", 18000.00, "2018-9-5"),
	(49, 6, "Thám Tử Lừng Danh Conan Tập 29", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/7b/cd/f4/2b87c850d31d159c58e4ec2e23f4b23c.jpg", 18000.00, "2018-9-5"),
	(50, 6, "Thám Tử Lừng Danh Conan Tập 30", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/d1/8f/26/668cee1276b39b608da74a60525e9c0a.jpg", 18000.00, "2018-9-5"),

	(51, 6, "Thám Tử Lừng Danh Conan Tập 31", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/45/aa/f1/839284dc85e29d54eda9d626d7f3be6a.jpg", 18000.00, "2018-10-15"),
	(52, 6, "Thám Tử Lừng Danh Conan Tập 32", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ac/c5/f3/3ada7e3929951cb3ec75439cc1b6938d.jpg", 18000.00, "2018-10-15"),
	(53, 6, "Thám Tử Lừng Danh Conan Tập 33", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/8b/e2/3c/7c15b7a9ba37b7302a5fdb9a75f40d1c.jpg", 18000.00, "2018-10-15"),
	(54, 6, "Thám Tử Lừng Danh Conan Tập 34", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ad/b2/d6/d42ea8c697d6f7c42b2050606e44a210.jpg", 18000.00, "2018-10-15"),
	(55, 6, "Thám Tử Lừng Danh Conan Tập 35", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/54/d7/78/5f5ac065f63b0480abc1a93807b858e7.jpg", 18000.00, "2018-10-15"),
	(56, 6, "Thám Tử Lừng Danh Conan Tập 36", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/ef/ab/25/5d4a7767019be72fc1367b4f1cfa6ea8.jpg", 18000.00, "2018-10-15"),
	(57, 6, "Thám Tử Lừng Danh Conan Tập 37", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/78/be/7b/0d311e324d89fb8bfe684e54732ba4da.jpg", 18000.00, "2018-10-15"),
	(58, 6, "Thám Tử Lừng Danh Conan Tập 38", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/90/be/2b/454cb63fc7c8fa7b318f693f6d32ab32.jpg", 18000.00, "2018-10-15"),
	(59, 6, "Thám Tử Lừng Danh Conan Tập 39", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/fb/0f/0f/5b6a9cae1248703150dbcaadd87151d2.jpg", 18000.00, "2018-10-15"),
	(60, 6, "Thám Tử Lừng Danh Conan Tập 40", "Truyen hay", 4.5, "https://salt.tikicdn.com/cache/w1200/ts/product/aa/a2/9f/a810382d866ccef4d21017f1bf9a792e.jpg", 18000.00, "2018-10-15"),

	(61, 6, "Thám Tử Lừng Danh Conan Tập 41", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/6b/a3/e3/d51434705e0608db30ba9ac8de8a37f2.jpg", 18000.00, "2018-11-4"),
	(62, 6, "Thám Tử Lừng Danh Conan Tập 42", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/35/dc/69/c6c48fcddcd89cac08e95a6d132ece38.jpg", 18000.00, "2018-11-4"),
	(63, 6, "Thám Tử Lừng Danh Conan Tập 43", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/3b/39/56/d0ef82d5e31452ed5949ccfae4534dd4.jpg", 18000.00, "2018-11-4"),
	(64, 6, "Thám Tử Lừng Danh Conan Tập 44", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/71/c7/00/deaf8f40788ff5762df0c654ebaec65a.jpg", 18000.00, "2018-11-4"),
	(65, 6, "Thám Tử Lừng Danh Conan Tập 45", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/7a/99/56/731f88af032d6ea303df2bb0b4b6e1f1.jpg", 18000.00, "2018-11-4"),
	(66, 6, "Thám Tử Lừng Danh Conan Tập 46", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/c3/07/04/c442c2b0c2e1838efe42652f473653ef.jpg", 18000.00, "2018-11-4"),
	(67, 6, "Thám Tử Lừng Danh Conan Tập 47", "Truyen hay", 4.7, "https://salt.tikicdn.com/cache/w1200/ts/product/8c/cb/0b/936f06c688188fc634e4bea73adc1afd.jpg", 18000.00, "2018-11-4"),
	(68, 6, "Thám Tử Lừng Danh Conan Tập 48", "Truyen hay", 4.8, "https://salt.tikicdn.com/cache/w1200/ts/product/47/a2/c3/e37f28367561eb9d49eedb7712a87ebe.jpg", 18000.00, "2018-11-4"),
	(69, 6, "Thám Tử Lừng Danh Conan Tập 49", "Truyen hay", 4.6, "https://salt.tikicdn.com/cache/w1200/ts/product/0c/bc/7c/4472aa328b8835acb61fd2ddc5667523.jpg", 18000.00, "2018-11-4"),
	(70, 6, "Thám Tử Lừng Danh Conan Tập 50", "Truyen hay", 4.9, "https://salt.tikicdn.com/cache/w1200/ts/product/35/2e/f0/66b86b19b13d214f2d1c234a1bb7526a.jpg", 18000.00, "2018-11-4");