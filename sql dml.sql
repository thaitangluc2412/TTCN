USE bookstore;

INSERT INTO User (Email, UserPassword, Name, Address, PhoneNumber, AccountNumber, Role)
VALUES ('thaitangluc2412@gmail.com', '1234', 'Thai Luc', 'Quang Tri', '06873496874', '037486164967', 'Admin'),
       ('manhviet@gmail.com', '1234', 'Manh Viet', 'Da Nang', '06873496874', '037486164967', 'Customer'),
       ('xuantuan@gmail.com', '1234', 'Xuan Tuan', 'Quang Nam', '06873496874', '037486164967', 'Author'),
       ('trungnguyen@gmail.com', '1234', 'Trung Nguyen', 'Da Nang', '06873496874', '037486164967', 'Admin'),
       ('anhvu@gmail.com', '1234', 'Nguyen Vu', 'Quang Nam', '114', '037486164967', 'Customer'),
       ('tacgia1@gmail.com', '1234', 'Nguyễn Nhật Ánh', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia2@gmail.com', '1234', 'Trang Hạ', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia3@gmail.com', '1234', 'Nguyễn Phong Việt', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia4@gmail.com', '1234', 'Anh Khang', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia5@gmail.com', '1234', 'Nguyễn Ngọc Thạch', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia6@gmail.com', '1234', 'Hamlet Trương', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia7@gmail.com', '1234', 'Đỗ Nhật Nam', 'Viet Nam', '114', '037486164967', 'Author'),
       ('tacgia8@gmail.com', '1234', 'Nguyễn Ngọc Sơn', 'Viet Nam', '114', '037486164967', 'Author'),
       ('customer1@gmail.com', '1234', 'Customer 1', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('customer2@gmail.com', '1234', 'Customer 2', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('customer3@gmail.com', '1234', 'Customer 3', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('customer4@gmail.com', '1234', 'Customer 4', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('customer5@gmail.com', '1234', 'Customer 5', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('customer6@gmail.com', '1234', 'Customer 6', 'Viet Nam', '115', '037486164967', 'Customer'),
       ('shipper1@gmail.com', '1234', 'Shipper 1', 'Viet Nam', '116', '037486164967', 'Shipper');


INSERT INTO Category (CategoryID, Name)
VALUES (1, 'Food'),
       (2, 'History'),
       (3, 'Memoir'),
       (4, 'Politics'),
       (5, 'Self-Help'),
       (6, 'Young Adult'),
       (7, 'Children’s Books'),
       (8, 'Crime Thriller'),
       (9, 'Literary Fiction'),
       (10, 'Science Fiction');

INSERT INTO bookstore.book (BookID, CategoryID, Title, Description, Rating, Image, Price, PublishDate, Quantity)
VALUES  (1, 1, 'Volant Journals Pocket Ruled Forget.Blue Amber.Yellow', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/8058647620565.jpg?v=1641371913000', 43, '2003-01-28', 35),
        (2, 8, 'Moleskine 8058341715185 – Large – Special Edition – Dr. Seuss Notebook/A5 Ruled', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/619lv4up6yl-ac-sl1500.jpg?v=1641372084000', 48, '2015-10-28', 36),
        (3, 4, 'Great World Writers Twentieth Century - Patrick M.O''neil', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2881714372397-6e76a1433ffec29c5d8cc256df7c7c05.jpg?v=1635741227000', 49, '2004-04-08', 27),
        (4, 2, 'Charming Classics 6 Books Collection: Alice In Wonderland, The Wizard of Oz, A Little Princess, The Secret Garden, & Anne of Green Gables, (Includes one Bracelet with four Charms) by', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062879783-charming-classic-with-bracelet-6-books-600x600.jpg?v=1635742344000', 36, '2005-04-22', 30),
        (5, 1, '50 Ways to Draw Your Beautiful, Ordinary Life: Practical Lessons in Pencil and Paper (Flow) by', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781523501151.jpg?v=1634361107000', 40, '2003-06-19', 38),
        (6, 6, 'Tiny Habits: The Small Changes That Change Everything by BJ Fogg Ph.D', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780358003328.jpg?v=1634361674000', 49, '2003-09-27', 38),
        (7, 4, 'Ninth House by Leigh Bardugo', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250313072-4cda6be8-dcfd-40e1-9d6b-e04383579cb4.jpg?v=1634361795000', 58, '2015-01-27', 22),
        (8, 2, 'Shopgirl: A Novella by Steve Martin', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781401308278.jpg?v=1634361936000', 46, '2000-10-26', 30),
        (9, 9, 'The Beach by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781573226523.jpg?v=1634363227000', 38, '2011-12-08', 14),
        (10, 8, 'The Lucky One Nicholas Sparks', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781455508969-c46b7072-6442-453d-9ba5-fbc0dc95d74c.jpg?v=1626149766000', 57, '2018-10-22', 48),
        (11, 2, 'The Writer''s Practice: Building Confidence in Your Nonfiction Writing by John Warner', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143133155.jpg?v=1625161176000', 32, '2019-05-07', 15),
        (12, 4, 'The World Until Yesterday: What Can We Learn from Traditional Societies?  by Jared Diamond', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143124405-83480547-0a37-4e63-980b-bd614211162b.jpg?v=1626149919000', 33, '2000-05-02', 37),
        (13, 9, 'The World Without Us by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780312427900.jpg?v=1626150191000', 59, '2000-09-21', 24),
        (14, 1, 'World History 101: From Ancient Mesopotamia and the Viking Conquests to NATO and WikiLeaks, An Essential Primer on World History (Adams 101) by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781507204542.jpg?v=1626150401000', 34, '2003-12-16', 28),
        (15, 1, 'Willpower: Rediscovering the Greatest Human Strength by Roy F. Baumeister and John Tierney', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143122234-2735b721-e920-4dc1-b6f7-ecb72d792612.jpg?v=1626150678000', 39, '2016-08-09', 13),
        (16, 2, 'Why I''m No Longer Talking to White People About Race by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781635572957.jpg?v=1626150802000', 58, '2001-07-26', 27),
        (17, 5, 'White Noise by Don DeLillo', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140274981.jpg?v=1626151016000', 46, '2009-09-21', 41),
        (18, 1, 'When You Kant Figure It Out, Ask a Philosopher by', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316492522.jpg?v=1626151125000', 55, '2008-05-05', 14),
        (19, 3, 'Walking in This World by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781585422616.jpg?v=1626151294000', 48, '2010-12-24', 24),
        (20, 5, 'Waiting for the Barbarians: A Novel (Penguin Ink) (The Penguin Ink Series) by J. M. Coetzee', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143116929.jpg?v=1626151419000', 49, '2008-12-20', 28),
        (21, 4, 'The Valkyries by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062513342.jpg?v=1626151740000', 53, '2010-09-28', 45),
        (22, 10, 'Type Talk at Work (Revised and Updated) by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780440509288.jpg?v=1626152368000', 60, '2016-03-09', 17),
        (23, 5, 'The Tree by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061997778.jpg?v=1626152676000', 34, '2011-01-25', 34),
        (24, 9, 'A Tokyo Romance: A Memoir by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781101981436.jpg?v=1626152812000', 37, '2001-12-09', 48),
        (25, 8, 'The Third Chimpanzee: The Evolution and Future of the Human Animal by', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060845506.jpg?v=1626153075000', 50, '2009-02-25', 36),
        (26, 7, 'Tea: History, Terroirs, Varieties (Third Edition) by', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780228100270.jpg?v=1626153182000', 33, '2016-12-10', 11),
        (27, 7, 'Tell the Wolves I''m Home by Carol Rifka Brunt', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781447202141.jpg?v=1626153283000', 48, '2009-04-16', 17),
        (28, 4, 'Swing Time by', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143111641.jpg?v=1626153399000', 34, '2007-10-31', 11),
        (29, 2, 'The Solitude of Prime Numbers: A Novel by Paolo Giordano', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143118596.jpg?v=1626153485000', 57, '2012-05-19', 13),
        (30, 5, 'The Social Contract: Man Was Born Free, and He Is Everywhere in Chains (Penguin Great Ideas)  by Jean-Jacques Rousseau', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143037491-28128d13-63ca-4f6c-aca6-20c96313856b.jpg?v=1626153628000', 42, '2016-11-01', 10),
        (31, 6, 'So Big (P.S.) by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061859984.jpg?v=1626153751000', 50, '2000-10-31', 14),
        (32, 3, 'The Reader by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780375707971.jpg?v=1626154208000', 58, '2017-01-29', 31),
        (33, 1, 'The Quiet American (Viking Critical Library) by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140243505.jpg?v=1626154335000', 32, '2016-08-12', 37),
        (34, 10, 'Poverty, Riches and Wealth: Moving From a Life of Lack into True Kingdom Abundance by', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780800799014.jpg?v=1626154669000', 52, '2017-08-07', 50),
        (35, 5, 'The Portable Voltaire (Viking Portable Library) by', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140150414.jpg?v=1626154760000', 53, '2019-11-01', 25),
        (36, 10, 'Poetry 101: From Shakespeare and Rupi Kaur to Iambic Pentameter and Blank Verse, Everything You Need to Know about Poetry (Adams 101) by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781507208397.jpg?v=1626155015000', 40, '2007-03-15', 45),
        (37, 3, 'Plato and a Platypus Walk into a Bar . . . by Thomas Cathcart, Daniel Klein', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143113874-17420ddc-c09f-43de-bf7e-903742258144.jpg?v=1626155120000', 48, '2000-09-09', 45),
        (38, 10, 'The Phantom of the Opera (Paper Mill Classics) by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51mamiouq6l-sx328-bo1-204-203-200.jpg?v=1626155354000', 45, '2018-02-19', 49),
        (39, 1, 'Permanent Record by', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781534445970.jpg?v=1626155536000', 41, '2016-08-31', 20),
        (40, 1, 'A People''s History of the United States by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061965593.jpg?v=1626155669000', 40, '2003-04-25', 13),
        (41, 8, 'The Penguin Guide to the United States Constitution by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143118107.jpg?v=1626155804000', 44, '2000-02-19', 35),
        (42, 1, 'The Penguin Gandhi Reader by', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140236866.jpg?v=1626155916000', 46, '2018-01-13', 24),
        (43, 4, 'The Penguin Book of Modern Speeches by', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780241982303.jpg?v=1626156084000', 55, '2011-09-06', 22),
        (44, 1, 'Pastoralia by George Saunders', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781573228725-290e82e7-08d4-4764-a9bc-574630a577b2.jpg?v=1626156182000', 54, '2000-09-04', 16),
        (45, 2, 'One Thousand and One Nights by', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307948991.jpg?v=1626156523000', 33, '2012-10-26', 33),
        (46, 5, 'On China by Henry Kissinger', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143121312-7c73a916-4bea-4d8f-b1fc-c01eb1ae82c2.jpg?v=1626156645000', 46, '2002-09-08', 29),
        (47, 6, 'NW by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143123934.jpg?v=1626156765000', 50, '2019-06-16', 31),
        (48, 4, 'My Pocket Yoga: Anytime Exercises That Refresh, Refocus, and Restore by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781440599446.jpg?v=1626156955000', 41, '2007-07-13', 28),
        (49, 3, 'My Pocket Meditations for Anxiety: Anytime Exercises to Reduce Stress, Ease Worry, and Invite Calm by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781507213872.jpg?v=1626157068000', 53, '2011-11-23', 36),
        (50, 2, 'My Pocket Mantras: Powerful Words to Connect, Comfort, and Protect by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781507205785.jpg?v=1626157183000', 39, '2018-10-11', 37),
        (51, 6, 'Moonglow (Harper Perennial Olive Editions) by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780063036550.jpg?v=1626157860000', 35, '2015-01-04', 19),
        (52, 2, 'Moon Palace: A Novel (Penguin Ink)  by Paul Auster, Grez', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143119050.jpg?v=1626158149000', 45, '2010-04-28', 18),
        (53, 10, 'The Metamorphosis, In the Penal Colony, and Other Stories by Franz Kafka', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780684800707-67136ae2-9612-457d-9efc-292e97cfdfb8.jpg?v=1626158430000', 58, '2017-08-27', 31),
        (54, 5, 'Maid: Hard Work, Low Pay, and a Mother''s Will to Survive by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316505093.jpg?v=1626158734000', 35, '2003-02-01', 13),
        (55, 1, 'The Magic Feather Effect: The Science of Alternative Medicine and the Surprising Power of Belief by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781501121500.jpg?v=1626158861000', 47, '2007-04-04', 33),
        (56, 2, 'Machines Like Me by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780735278219.jpg?v=1626158975000', 49, '2004-08-10', 46),
        (57, 10, 'Love Story (50th Anniversary Edition) by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062979476.jpg?v=1626159233000', 53, '2010-07-16', 38),
        (58, 9, 'Living Dangerously: Ordinary Enlightenment for Extraordinary Times (Masters of Wisdom) by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781780280073.jpg?v=1626159342000', 33, '2007-10-27', 24),
        (59, 5, 'The Little Book of Skin Care: Korean Beauty Secrets for Healthy, Glowing Skin by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062416384.jpg?v=1626159436000', 37, '2020-04-12', 14),
        (60, 6, 'Linchpin: Are You Indispensable? by', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781591844099.jpg?v=1626159533000', 40, '2012-03-04', 11),
        (61, 6, 'Kitchen Curse: Stories by', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781786637154.jpg?v=1626159600000', 35, '2006-05-12', 36),
        (62, 9, 'Killing Eve: No Tomorrow by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316524346.jpg?v=1626159770000', 56, '2017-08-11', 14),
        (63, 5, 'It''s Easier Than You Think: The Buddhist Way to Happiness by', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062512949.jpg?v=1626160094000', 56, '2012-03-08', 23),
        (64, 1, 'Israel: A History by', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780688123635.jpg?v=1626160177000', 50, '2017-06-30', 22),
        (65, 2, 'The Inevitable: Understanding the 12 Technological Forces That Will Shape Our Future by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143110378.jpg?v=1626160528000', 42, '2006-09-20', 16),
        (66, 4, 'I Think, Therefore I Draw: Understanding Philosophy Through Cartoons by', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143133032.jpg?v=1626160839000', 37, '2007-12-21', 11),
        (67, 5, 'How to Be a Fascist: A Manual by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143136057.jpg?v=1626161017000', 47, '2021-01-13', 12),
        (68, 4, 'House Made of Dawn [50th Anniversary Edition) by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062909954.jpg?v=1626161120000', 37, '2004-09-25', 18),
        (69, 5, 'Hippie by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780525565185.jpg?v=1626161209000', 36, '2009-10-12', 23),
        (70, 1, 'Hector and the Search for Happiness by Francois Lelord', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143118398.jpg?v=1626161289000', 32, '2015-12-07', 44),
        (71, 8, 'Half the Sky: Turning Oppression into Opportunity for Wormen Worldwide by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307387097.jpg?v=1626161589000', 44, '2015-11-28', 24),
        (72, 5, 'Girl With a Pearl Earring by Tracy Chevalier', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780452282155-05e92100-f771-4537-9806-b77d2eb1f77c.jpg?v=1626161766000', 46, '2006-06-08', 43),
        (73, 7, 'The Future of Capitalism: Facing the New Anxieties by', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062748676.jpg?v=1626161891000', 50, '2002-05-07', 40),
        (74, 2, 'Fluent in 3 Months by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062282699.jpg?v=1626162659000', 32, '2013-11-15', 49),
        (75, 3, 'Fingersmith by Sarah Waters', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781573229722-7bdb7826-46cd-4792-be84-762dee1f7bea.jpg?v=1626162760000', 48, '2000-11-24', 42),
        (76, 3, 'American Political Speeches by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143121954-e0692355-009c-4eb9-adcd-20eedaabfb3b.jpg?v=1626162854000', 59, '2007-09-30', 41),
        (77, 8, 'Find Me by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250758071.jpg?v=1626162933000', 58, '2000-11-15', 31),
        (78, 9, 'Feel Free: Essays by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143110255.jpg?v=1626163067000', 37, '2012-11-11', 39),
        (79, 5, 'Farewell Waltz by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060997007.jpg?v=1626163155000', 37, '2020-02-02', 48),
        (80, 7, 'Everything Is F*cked by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062956569.jpg?v=1626163412000', 53, '2006-01-15', 30),
        (81, 2, 'Every time I find the meaning of life they change it by Daniel Klein', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143129592-d18aadc2-90db-48f9-8517-d70c813c7ab1.jpg?v=1626163510000', 47, '2011-08-05', 37),
        (82, 4, 'Escape from Camp 14 by Blaine Harden', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143122913.jpg?v=1626167718000', 30, '2004-04-01', 42),
        (83, 6, 'Emergency Contact by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781534408975.jpg?v=1626167824000', 53, '2015-04-06', 40),
        (84, 4, 'The Elements of Style Illustrated by William Strunk Jr. and E. B. White', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143112723-eb2186b5-66db-4b2d-8d87-cda3b7274fef.jpg?v=1626167891000', 46, '2015-04-20', 24),
        (85, 8, 'Dune (The Caladan Trilogy, Bk. 1) by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250764744.jpg?v=1626168245000', 58, '2011-04-09', 35),
        (86, 6, 'Eating Viet Nam: Dispatches From a Blue Plastic Table by', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062293060.jpg?v=1626168410000', 34, '2014-08-09', 19),
        (87, 1, 'Dubliners: Text and Criticism; Revised Edition (Viking Critical Library) by James Joyce', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140247749.jpg?v=1626168540000', 32, '2006-11-24', 27),
        (88, 2, 'Don Quixote (P.S) by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060934347.jpg?v=1626168649000', 58, '2015-12-31', 15),
        (89, 9, 'Disgrace by J.M. Coetzee', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140296402.jpg?v=1626168745000', 43, '2002-01-17', 38),
        (90, 3, 'A Dictionary of Philosophy (Revised Second Edition) by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780312209230.jpg?v=1626169146000', 50, '2012-03-21', 47),
        (91, 7, 'The Death of Ivan Ilych by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307951335.jpg?v=1626234017000', 58, '2015-09-12', 28),
        (92, 2, 'Creative Space Journal by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781454936343.jpg?v=1626234215000', 60, '2014-01-14', 12),
        (93, 9, 'Collected Novellas by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060932664.jpg?v=1626234421000', 41, '2001-11-18', 15),
        (94, 10, 'Churchill and Orwell: The Fight for Freedom by Thomas E. Ricks', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143110880-2fc92ba3-abb0-46d6-8ed5-c4812079898a.jpg?v=1626234636000', 47, '2004-07-17', 39),
        (95, 5, 'Ceremony (Penguin Orange Collection) by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143129462.jpg?v=1626234840000', 57, '2002-11-14', 48),
        (96, 4, 'Cari Mora by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781538750124.jpg?v=1626235070000', 53, '2015-02-24', 49),
        (97, 7, 'A brief history of seven killings by James Marlon', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781594633942.jpg?v=1626236932000', 57, '2005-05-05', 45),
        (98, 2, 'The Brief and Frightening Reign of Phil by George Saunders', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781594481529.jpg?v=1626237012000', 34, '2021-12-27', 41),
        (99, 10, 'Brand Portfolio Strategy: Creating Relevance, Differentiation, Energy, Leverage, and Clarity by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781982146528.jpg?v=1626237120000', 44, '2021-04-13', 43),
        (100, 4, 'Birds of Vietnam, Cambodia and Laos (Pocket Photo Guides) by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472982117.jpg?v=1626237715000', 37, '2011-04-06', 39),
        (101, 3, 'Big Sur by Jack Kerouac', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143119234-b2d2e04e-01a2-42c9-a7fd-dcff31f5f5df.jpg?v=1626237795000', 43, '2012-12-03', 16),
        (102, 9, 'A Bend in the River by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780679722021.jpg?v=1626237870000', 36, '2010-05-22', 16),
        (103, 1, 'Ancient Egypt (30-Second) by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41g0i5vheql-sx386-bo1-204-203-200.jpg?v=1626238076000', 40, '2014-09-26', 13),
        (104, 5, 'Architecture (30-Second) by', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781782406389.jpg?v=1626238495000', 42, '2010-07-04', 37),
        (105, 4, 'The Arabian Nights (Paper Mill Classics) by', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51rsx4xulcl-sx327-bo1-204-203-200.jpg?v=1626238695000', 53, '2012-03-10', 18),
        (106, 5, 'Ancient Greece (30-Second) by', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781782405900.jpg?v=1626239077000', 57, '2016-11-15', 31),
        (107, 7, 'After by', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781476792484.jpg?v=1626239289000', 54, '2017-03-30', 43),
        (108, 2, 'The Prince (Everyman''s Library) by Niccolo Machiavelli', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873057501022-1cbb228329c08d5bf2f04b619dde190f.jpg?v=1635759728000', 52, '2004-11-29', 17),
        (109, 4, 'Americanah by Chimamanda Ngozi Adichie', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/02-a.jpg?v=1624172761000', 33, '2003-11-27', 23),
        (110, 10, 'I Can''t Think Straight by Shamim Sarif', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/05.jpg?v=1624177020000', 30, '2008-09-30', 50),
        (111, 5, 'A Brief History of Time by Stephen Hawking', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/06.jpg?v=1624177290000', 51, '2013-08-20', 47),
        (112, 9, 'Art: A Visual History by Robert Cumming', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/09.jpg?v=1624177922000', 33, '2015-10-14', 31),
        (113, 4, 'Architecture: A Visual History by Jonathan Glancey', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/15-5ffd537c-ceef-49ad-976b-a729455b255c.jpg?v=1624179866000', 54, '2017-02-08', 49),
        (114, 5, '(Used) The Audacity of Hope by Barack Obama', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781847670830.jpg?v=1626240709000', 30, '2021-11-06', 47),
        (115, 10, 'Home Body by Rupi Kaur', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781449486808.jpg?v=1626241749000', 42, '2004-04-20', 15),
        (116, 4, 'International Commercial Litigation: Text, Cases and Materials on Private International Law 3rd Edition by', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781108721134.jpg?v=1626242134000', 39, '2007-07-18', 31),
        (117, 2, 'A General Introduction to Psychoanalysis by Sigmund Freud', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781840226867.jpg?v=1626242373000', 55, '2017-11-08', 13),
        (118, 10, 'Vintage Collected Papers of SIGMUND FREUD ~ Volume II 1950', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879244782873-d5a13c6d08d278742433fb688dcdcd71-6b8f5768-7ca9-48f6-b43f-f67dd341fb1d.jpg?v=1635763989000', 59, '2007-03-24', 34),
        (119, 6, 'Vintage Collected Papers of SIGMUND FREUD ~ Volume I 1950', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879244782873-d5a13c6d08d278742433fb688dcdcd71.jpg?v=1635763994000', 45, '2012-05-20', 20),
        (120, 2, '(Rare) Wuthering Heights by Emily Bronte Caxton House Publishers Rockefeller Plaza', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873268640152-6bd5290d992cd0d7bef16a449b1595e6.jpg?v=1635742937000', 37, '2005-06-30', 17),
        (121, 8, 'The past recaptured by Marcel Proust (The Modern library [no. 278])', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879183373094-c987e3f8e9de4d978ed9c3d75a0d22c4.jpg?v=1635743139000', 42, '2021-05-06', 25),
        (122, 3, 'Within A Budding Grove by Marcel Proust', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879183327094-eb33048a7a0b8db43f831e7d99ee3111.jpg?v=1635749974000', 60, '2014-09-15', 28),
        (123, 1, '(First Edition) ALL QUIET ON THE WESTERN FRONT by Erich Maria Remarque', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2882129511294-b73e7feb9208b02fcab317b7bd9732f7.jpg?v=1635752111000', 57, '2007-03-30', 47),
        (124, 3, '(First Edition) The Road Back by Erich Maria Remarque 1931', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2882129511294-b73e7feb9208b02fcab317b7bd9732f7-fd8ddaed-fa71-4722-801d-e642692ea15f.jpg?v=1635752141000', 33, '2009-01-12', 19),
        (125, 6, 'The Grapes Of Wrath By John Steinbeck 1967 Book Club Edition', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876486957123-383c9eade1f413e496ecce8ec0c0b746.jpg?v=1635751442000', 56, '2012-04-18', 45),
        (126, 4, 'いま、会いにゆきます Tankobon Hardcover', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/416x6qtm1al-sx349-bo1-204-203-200.jpg?v=1626245596000', 38, '2004-08-23', 21),
        (127, 5, 'La version et les mots anglais', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876486756664-325165e0b73fa0c7cd8859eb8faa169d.jpg?v=1635763588000', 40, '2019-07-14', 34),
        (128, 5, 'Kane and Abel - Jeffrey Archer (French Edition)', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876278576566-a7a76628b90a67da296f01c43ca0239b.jpg?v=1635751741000', 51, '2004-11-23', 26),
        (129, 10, 'Dictionnaire des mots et des idées - U. Lacroix', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/images.jpg?v=1635751914000', 47, '2000-06-10', 13),
        (130, 10, 'The Complete Works of Oscar Wilde, Volume XII: Hardcover', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876218829750-60397b8040f964307848213d73945d9d.jpg?v=1635752472000', 55, '2013-07-10', 46),
        (131, 7, 'THE DRIFTERS by JAMES MICHENER', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876486908234-fd595d071653a7f70324a050ff6cf6bc.jpg?v=1635752546000', 40, '2019-10-11', 34),
        (132, 1, 'Les caractères: BRUYERE La', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876486852588-8fd5bfc7eee490e983bdd3eec16c5984.jpg?v=1635752958000', 59, '2008-02-09', 15),
        (133, 5, 'Standard Stories from Operas by Gladys Davidson', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879183190631-cf615aa0cf41827f083ee673962821e1.jpg?v=1635753018000', 32, '2012-09-05', 32),
        (134, 8, '(First Edition) A History of Western Philosophy by Russell, Bertrand', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 3, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 49, '2018-08-25', 29),
        (135, 4, 'ARISTOTLE Rhetoric and On Poetics (The Franklin Library)', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873268604588-2e061903215a208498db0c366ff07022.jpg?v=1635754327000', 31, '2011-04-26', 22),
        (136, 3, '(First Edition) Annette & Co by Irene Cheyne', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879183288867-37cba7d82f2491c29a0315550be1e565.jpg?v=1635754480000', 56, '2002-06-13', 41),
        (137, 7, '(First Edition) Requiem for a Nun William Faulkner', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 30, '2013-11-08', 33),
        (138, 7, '(First Edition) The Essential Hemingway by Ernest Hemingway', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2882231158418-379648ca383bc7aa14494301d03fb216.jpg?v=1635755098000', 53, '2001-10-01', 29),
        (139, 5, '(First Edition) Crossing The Water by Sylvia Plath', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/81ibwfqup1l.jpg?v=1635926973000', 57, '2019-07-06', 12),
        (140, 8, 'Lolita by Vladímir Nabokov (1997, Hardcover, Annotated edition)', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873057528292-f4ff7d2327501085c70425a4ab1739b7.jpg?v=1635758965000', 57, '2018-01-06', 23),
        (141, 6, 'THE MOON IS DOWN AND SHORT STORIES BY JOHN STEINBECK [COLLIER HARDCOVER / 1942]', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2882231286227-5fafccd0dea328f1c96cca1e50dbeba6.jpg?v=1635759284000', 42, '2015-08-23', 19),
        (142, 2, '(Signed First Edition) Ocean At The End Of The Lane by Neil Gaiman', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2882231387240-22b8fe984bbc8bf085e1677d2c7bdce5.jpg?v=1635759479000', 60, '2004-03-10', 37),
        (143, 1, '(First Edition) A Moveable Feast by Ernest Hemingway', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 53, '2000-08-01', 48),
        (144, 2, '(1943 First Edition) A Tree Grows in Brooklyn by Betty Smith', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876218874647-950563ebf0e4a30a68c2e002b0a7511a.jpg?v=1635762155000', 46, '2008-10-29', 11),
        (145, 2, '(First Edition) The Godfather by Mario Puzo', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873268572144-a59826042e8a6cbedbee79372489effe.jpg?v=1635926247000', 41, '2009-12-11', 27),
        (146, 3, '(SIGNED Edition) If Tomorrow Comes by Sidney Sheldon', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780446357425.jpg?v=1626246755000', 58, '2000-01-02', 42),
        (147, 8, '(Signed Edition) Fingersmith by Sarah Waters', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781573229722-c38347f7-2d06-4a3e-8e09-d2690cec8adb.jpg?v=1626249298000', 32, '2001-10-16', 29),
        (148, 9, '(Signed Edition) The Shock of the Fall by Nathan Filer', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250028136.jpg?v=1626250008000', 46, '2000-05-16', 23),
        (149, 3, '(Signed Edition) INTERVIEW WITH THE VAMPIRE by Anne Rice', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780394498218.jpg?v=1626251107000', 56, '2001-09-08', 38),
        (150, 10, '(First Deluxe Edition) Harry Potter And The Goblet Of Fire (UK)', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/md30944415649.jpg?v=1626251284000', 52, '2004-09-14', 41),
        (151, 1, '(First Edition) Harry Potter and the Deathly Hallows (Bloomsburry)', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/md30613474416.jpg?v=1626251418000', 60, '2019-12-22', 14),
        (152, 7, '(First Edition) Harry Potter and the Half Blood Prince (Bloomsbury)', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780786277452.jpg?v=1626251608000', 41, '2012-06-13', 10),
        (153, 2, 'Lust & Wonder by Augusten Burroughs (Signed & First Edition)', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/s-l640-6f29fe2b-797c-400f-9728-79c194850e49.jpg?v=1626251729000', 59, '2000-06-30', 49),
        (154, 6, 'Jean Santeuil by Marcel Proust (First Edition - 2nd Printing)', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 5, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 43, '2011-05-24', 50),
        (155, 9, 'The Complete Grimm''s Fairy Tales with 40 Color Plates and 60 Black & White Plates from Award-Winning Illustrator Arthur Rackham by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781435141797-16acb3e0-70a8-4e0c-8121-b4fc11421240.jpg?v=1626258378000', 55, '2010-06-08', 46),
        (156, 8, 'Smithsonian Exploration Station: Solar System by', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781626867222.jpg?v=1626258732000', 44, '2009-06-27', 42),
        (157, 8, 'Type Talk: The 16 Personality Types That Determine How We Live, Love, and Work by Otto Kroeger', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/16-types.jpg?v=1614947568520', 39, '2016-08-15', 20),
        (158, 6, 'Women by Charles Bukowski', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/women.jpg?v=1614948488000', 40, '2003-06-22', 37),
        (159, 1, 'THE LIFE OF GREECE WILL DURANT', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873219834907-a51422a57ff41a88e3e73ffb511e1fe4.jpg?v=1635760556000', 33, '2009-08-04', 44),
        (160, 4, 'THE REFOMATION WILL DURANT', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873233991983-71333ed2bbc766c89f07a773d5114f69.jpg?v=1635761014000', 32, '2005-06-01', 11),
        (161, 5, 'You Are a Bada**: How to Stop Doubting Your Greatness and Start Living An Awesome Life by Jen Sincero', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781473649521.jpg?v=1614950991000', 43, '2020-08-30', 38),
        (162, 2, 'Obedience to Authority: An Experimental View (The Resistance Library) by', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/obedience-to-authority.jpg?v=1614679214000', 31, '2005-02-15', 34),
        (163, 8, 'How They Got into Harvard: 50 Successful Applicants Share 8 Key Strategies for Getting into the College of Your Choice by  Staff of the Harvard Crimson', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/how-they-got-into-hv.jpg?v=1614587733930', 49, '2017-03-28', 29),
        (164, 10, 'The Goldfinch by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/the-goldfinch.jpg?v=1614588120000', 55, '2009-11-23', 35),
        (165, 1, 'Advice Not Given: A Guide to Getting Over Yourself by Dr Mark Epstein', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/advice-not-given.jpg?v=1614588575060', 54, '2005-05-05', 43),
        (166, 2, '50 Yale Admission Success Stories by  Yale Daily News', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/50-yale.jpg?v=1614588682000', 43, '2012-01-07', 47),
        (167, 5, '21 Secrets of Million-Dollar Sellers: America''s Top Earners Reveal the Keys to Sales Success by Stephen J Harvill', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/21-secrets.jpg?v=1614589047000', 52, '2005-07-13', 39),
        (168, 10, 'Game of Thrones: The Poster Collection, Volume II (1) (Insights Poster Collections) by HBO', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/game-of-thrones-poster.jpg?v=1614589305917', 49, '2016-02-11', 47),
        (169, 2, 'Drives of a Lifetime: 500 of the World''s Most Spectacular Trips by National Geographic', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/61arzfgsg3l-sx381-bo1-204-203-200.jpg?v=1614600005520', 33, '2008-03-08', 17),
        (170, 6, 'Home by Ellen DeGeneres', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/home-ellen.jpg?v=1614591301200', 33, '2020-06-16', 16),
        (171, 7, 'Fantastic Cities: Coloring Poster Set by Steve McDonald', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/fantastic-cities.jpg?v=1614591754097', 35, '2019-03-28', 22),
        (172, 3, 'Willpower Doesn''t Work by Benjamin Hardy', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/will-power.jpg?v=1614592217467', 59, '2013-11-08', 21),
        (173, 6, 'The 5 Love Languages and two companion journals by Gary Chapman', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/the-5-love-languages.jpg?v=1614598826000', 55, '2010-01-25', 17),
        (174, 3, 'Fantastic Cities: 20 Postcards to Color (Adult Coloring Postcards, Stationery to Color or Paint) by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/fantastic-cities-coloring-book.jpg?v=1614599494000', 38, '2006-01-12', 20),
        (175, 4, 'Free to Focus: A Total Productivity System to Achieve More by Doing Less by Michael Hyatt', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/free-to-focus.jpg?v=1614592966000', 58, '2012-11-02', 33),
        (176, 3, 'TransAtlantic: A Novel by Colum McCann', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/transatlantic.jpg?v=1614682777163', 42, '2003-04-15', 43),
        (177, 8, 'Principles of marketing', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781292220178.jpg?v=1626316543000', 42, '2017-09-21', 34),
        (178, 1, 'The kiss quotent', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781786496768.jpg?v=1626317134000', 57, '2015-10-23', 41),
        (179, 1, 'Fantastic Structures: A Coloring Book of Amazing Buildings Real and Imagined by', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781452153230.jpg?v=1626317458000', 54, '2013-01-29', 19),
        (180, 9, 'CITIES FANTASTIC', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781452149578.jpg?v=1626317628000', 49, '2017-04-21', 41),
        (181, 1, 'THINGS DO NOT CHANGE, WE CHANGE', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781626866010.jpg?v=1626318357000', 52, '2003-01-01', 44),
        (182, 2, 'Which of these Adventures shall we Choose? -J.M.Barrie', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781626866034.jpg?v=1626318542000', 37, '2014-07-31', 34),
        (183, 4, 'The Diviners (The Diviners (1)) by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316126106.jpg?v=1626319659000', 37, '2000-06-23', 35),
        (184, 9, 'Heartstopper: Volume 2 by', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781338617474.jpg?v=1626319908000', 60, '2010-12-03', 30),
        (185, 2, 'From Blood and Ash by', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781713548126.jpg?v=1626320050000', 42, '2007-09-29', 26),
        (186, 2, 'The 7 1/2 Deaths of Evelyn Hardcastle by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781492670124.png?v=1626320279000', 53, '2018-05-18', 50),
        (187, 2, 'Mooncakes by', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781549303043.jpg?v=1626323638000', 57, '2005-10-13', 28),
        (188, 9, 'Mistborn Boxed Set I: Mistborn, The Well of Ascension, The Hero of Ages by', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780765381521.jpg?v=1626324019000', 53, '2001-09-15', 29),
        (189, 7, 'Act-Age, Vol. 1 by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781974709960.jpg?v=1626324193000', 50, '2001-07-28', 45),
        (190, 6, 'Hunting Prince Dracula (Stalking Jack the Ripper (2)) by', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316551670.jpg?v=1626324346000', 52, '2003-01-29', 40),
        (191, 7, 'In Persuasion Nation by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781594482427.jpg?v=1626258880000', 47, '2013-08-11', 11),
        (192, 5, 'Last Night I Dreamed of Peace: The Diary of Dang Thuy Tram by Dang Thuy Tram', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307347381.jpg?v=1607351372000', 31, '2016-04-18', 21),
        (193, 2, 'Zen Keys: A Guide to Zen Practice by Thich Nhat Hanh', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51s-plus-ftwlsxl-sx331-bo1-204-203-200.jpg?v=1607235727127', 56, '2016-06-19', 26),
        (194, 6, 'Kaddish For An Unborn Child by Imre Kertesz', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41ohoxmytkl-sx322-bo1-204-203-200.jpg?v=1607236132867', 45, '2004-03-28', 29),
        (195, 7, 'The Buddhist Tradition in India, China and Japan by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51lnbplpl0l-sx291-bo1-204-203-200.jpg?v=1607317284000', 50, '2010-08-08', 46),
        (196, 8, 'Where I''m Calling From: Selected Stories by Raymond Carver', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51c9qvmcobl-sx326-bo1-204-203-200.jpg?v=1607322082000', 57, '2017-07-25', 32),
        (197, 4, 'The Prince (Penguin Great Ideas) by Niccolo Machiavelli', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143036333-c5a3cddb-a410-4b24-897e-420cbec0a57b.jpg?v=1613973792477', 59, '2020-06-28', 50),
        (198, 8, 'The Real Life of Sebastian Knight by Vladimir Nabakov', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780679727262.jpg?v=1613974427497', 31, '2007-09-28', 11),
        (199, 2, 'Mary by Vladimir Nabokov', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/516anspqn9l-sx322-bo1-204-203-200.jpg?v=1607340812000', 45, '2006-11-19', 25),
        (200, 1, 'Fragrant Palm Leaves: Journals 1962-1966 by Thich Nhat Hanh', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41ubsrit2sl-sx325-bo1-204-203-200.jpg?v=1607341683373', 35, '2012-08-01', 13),
        (201, 6, 'How Proust Can Change Your Life by Alain De Botton', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/61ws0k-ltjl-sx322-bo1-204-203-200.jpg?v=1607342136080', 46, '2014-05-21', 30),
        (202, 3, 'Being And Nothingness by Jean-Paul Sartre, Hazel E. Barnes', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41rqcp5qo8l-sx320-bo1-204-203-200.jpg?v=1607345462000', 53, '2009-06-06', 35),
        (203, 5, 'Herculine Barbin by Michel Foucault', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/31nrxw9hmul-sx318-bo1-204-203-200.jpg?v=1607345812000', 31, '2006-12-04', 12),
        (204, 9, 'Discourse on Thinking by Martin Heidegger', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061314599.jpg?v=1607401051000', 47, '2020-05-25', 32),
        (205, 10, 'Hegel : The Essential Writings by Frederick G. Weiss', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061318313.jpg?v=1607401177767', 41, '2002-08-04', 44),
        (206, 10, 'Thirteen Ways of Looking: Fiction by Colum McCann', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51v0wgwfvzl.jpg?v=1605873364013', 40, '2014-02-09', 37),
        (207, 7, 'Life of Pi by Yann Martel', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780857865533.jpg?v=1607348212000', 60, '2021-05-19', 42),
        (208, 8, 'Braving the Wilderness by Brené Brown', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51rwd4pneql-sx329-bo1-204-203-200.jpg?v=1605873587233', 38, '2015-07-08', 28),
        (209, 2, 'The Golden House: A Novel by Salman Rushdie', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780399592805.jpg?v=1607348332000', 41, '2017-08-05', 27),
        (210, 4, 'Promise Me, Dad: A Year of Hope, Hardship, and Purpose by Joe Biden', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250171672.jpg?v=1607348406150', 49, '2019-08-31', 26),
        (211, 2, 'Wildly Into the Dark: Typewriter Poems and the Rattlings of a Curious Mind by Tyler Knott Gregson', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51uuwt9z8kl-sx361-bo1-204-203-200.jpg?v=1605873995100', 37, '2020-10-12', 12),
        (212, 7, 'The Salt in His Kiss: Poems by Alfa', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41wzucdhgkl-sx311-bo1-204-203-200.jpg?v=1605874196307', 47, '2019-06-04', 39),
        (213, 10, 'Practical Wisdom: The Right Way to Do the Right Thing by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41gryret0xl-sx328-bo1-204-203-200.jpg?v=1605874268000', 35, '2020-05-31', 49),
        (214, 3, 'EDUCATION OF A VALUE INVESTOR by  Guy Spier', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51-plus-jzaylvel.jpg?v=1605875411000', 39, '2019-01-23', 12),
        (215, 4, 'Abandoned Breaths: Poems (Revised and Expanded) by', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/519wcc9j0rl-sx326-bo1-204-203-200.jpg?v=1606022741000', 30, '2019-03-21', 40),
        (216, 6, 'Coffee: A Dark History by Antony Wild', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51fkvxinckl-sx331-bo1-204-203-200.jpg?v=1606023296000', 33, '2009-12-13', 39),
        (217, 8, 'Frank Herbert''s Dune Saga 3-Book Boxed Set: Dune, Dune Messiah, and Children of Dune by Frank Herbert', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41qu8luevvl-sx366-bo1-204-203-200.jpg?v=1606023382000', 53, '2014-02-20', 21),
        (218, 7, 'It''s a Boy - It''s a Girl', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9783836524193.jpg?v=1607402261000', 52, '2000-10-20', 32),
        (219, 1, 'Start Late, Finish Rich', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385661324.jpg?v=1607402325000', 34, '2016-12-30', 12),
        (220, 2, 'The Tiger Claw by Shauna Singh Baldwin', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51qzx2ie-dl-sx322-bo1-204-203-200.jpg?v=1626259315000', 60, '2005-04-02', 31),
        (221, 5, 'Chambers Crossword Dictionary', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 41, '2005-06-23', 28),
        (222, 6, '1943 Les Miserables by Victor Hugo Translated by Charles E. Wilbour', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/517jcq3kptl-sx346-bo1-204-203-200.jpg?v=1603513722000', 31, '2002-10-08', 26),
        (223, 5, 'Lonely Planet France (Travel Guide)', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51i73hbnpvl-sx323-bo1-204-203-200.jpg?v=1603522646000', 43, '2008-12-12', 39),
        (224, 5, 'Lonely Planet Europe (Travel Guide)', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51triye7pgl-sx322-bo1-204-203-200.jpg?v=1603522724000', 53, '2008-04-03', 16),
        (225, 4, 'Christmas Books Of Charles Dickens - Black Reader', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 35, '2003-11-05', 27),
        (226, 1, 'The Truth About Magic by', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250232816.jpg?v=1600169199000', 39, '2011-01-20', 25),
        (227, 9, 'Note to Self: Inspiring Words From Inspiring People by Gayle King', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781982102081.jpg?v=1600172145907', 47, '2005-09-11', 24),
        (228, 6, 'The Red-Haired Woman by Orhan Pamuk', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/74cef5dc-a1db-4e12-8e39-c6d164a20363-1-d5ab1467fa72ece027d51a4186ca4ff2-jpeg.jpg?v=1600172447000', 34, '2019-08-23', 45),
        (229, 5, 'Cathedral by', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780679723691.jpg?v=1600306940000', 58, '2017-01-28', 22),
        (230, 7, 'Dollars and Sense: How We Misthink Money and How to Spend Smarter by', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062651211.jpg?v=1600307220000', 33, '2006-10-24', 20),
        (231, 5, 'On China by Henry Kissinger', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781594202711.jpg?v=1600313006000', 48, '2016-11-01', 42),
        (232, 7, 'Too Much and Never Enough: How My Family Created the World’s Most Dangerous Man by Mary L. Trump Ph.D.', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781982141462.jpg?v=1599047432227', 35, '2018-12-21', 37),
        (233, 1, 'March by Geraldine Brooks', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143036661.jpg?v=1626264741000', 41, '2015-02-07', 34),
        (234, 6, 'Collins Collectors’ Choice: Vladimir Nabokov: Five Novels', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2873057529714-bb3936afde89d71165b386ffd8e1b738.jpg?v=1635760341000', 49, '2011-05-30', 33),
        (235, 6, 'War and Peace (Great Books of the Western World, Britannica Series, Vol. 51)', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780241265543.jpg?v=1626279404000', 59, '2009-02-13', 34),
        (236, 9, 'Van Gogh Collection Genies Et Realities Hatchette', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 40, '2016-04-13', 17),
        (237, 8, 'Rimbaud Collection Genies Et Realities Hatchette', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 45, '2001-09-03', 25),
        (238, 9, 'Daniel Berkeley Updike / PRINTING TYPES THEIR HISTORY FORMS AND USE STUDY (Vol 1)', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 37, '2004-05-17', 12),
        (239, 7, '(SIGNED) Modern Hospitality: Simple Recipes with Southern Charm', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781609613525-3fddbc43-7381-48c0-a922-9ed5c89425e0.jpg?v=1634376946000', 44, '2017-11-13', 28),
        (240, 2, 'Her Fearful Symmetry (SIGNED)', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780224085618.jpg?v=1626279786000', 56, '2000-10-05', 21),
        (241, 2, 'Of Human Bondage', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2876278557535-932ac456ea8cf3280773a6c8fc0f7646.jpg?v=1635762768000', 46, '2020-02-25', 29),
        (242, 10, 'Eleanor & Park (SIGNED)', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781409157250.jpg?v=1626280646000', 54, '2009-03-15', 10),
        (243, 3, 'If I Stay (SIGNED)', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780142415436-26e5bb1b-9d94-48e5-b6b6-1c710203ea1b.jpg?v=1626280771000', 50, '2020-03-02', 14),
        (244, 8, 'We were liars (SIGNED)', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385741262.jpg?v=1626280858000', 46, '2004-11-29', 21),
        (245, 4, 'Treasures of Yesterday (the Story of Archaeology)', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/61fta12vqrl-sx369-bo1-204-203-200.jpg?v=1626280951000', 37, '2021-05-11', 15),
        (246, 3, 'Nouveau Petit Larousse en couleurs', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 48, '2016-11-26', 31),
        (247, 10, 'PRESIDENT HO CHI MINH TESTAMENT', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 57, '2005-01-28', 14),
        (248, 7, 'SOUTHER VIETNAMESE MODERNIST ARCHITECTURE', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/image-195509-1-43130.jpg?v=1626363493000', 30, '2010-07-31', 35),
        (249, 7, 'A BRIEF CHRONOLOGY OF VIETNAMESE HISTORY', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/517jdqfsefl-sx334-bo1-204-203-200.jpg?v=1626363731000', 34, '2021-05-15', 38),
        (250, 10, 'SECRETS OF HOI AN', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51xyzhkgfrl-sx331-bo1-204-203-200.jpg?v=1626364154000', 33, '2004-03-07', 32),
        (251, 3, 'VIETNAMESE TRADITIONAL MEDICINE', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/vietnamesetraditionalmedicinet.jpg?v=1626364522000', 36, '2008-03-08', 22),
        (252, 10, 'THE NGUYEN DYNASTY', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/81tvc9kaifl.jpg?v=1626364689000', 60, '2017-03-08', 30),
        (253, 6, 'UNIQUELY VIETNAMESE', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/7f2f526d2938e25f88782ba164ffc7d0.jpg?v=1626364919000', 32, '2013-01-21', 12),
        (254, 7, 'VIET NAM A LONG HISTORY', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/vietnam-a-long-history-by-nguyen-khac-vien-bookworm-hanoi.jpg?v=1626364985000', 55, '2008-10-20', 24),
        (255, 9, 'THE 36 OLD STREETS QUARTER OF HANOI', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/the-36-old-streets-quarter-of-hanoi-by-hoang-huu-phe-bookworm-hanoi.jpg?v=1626365106000', 39, '2017-10-17', 36),
        (256, 3, 'Ulysses by James Joyce', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 3, '//bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif', 49, '2020-07-17', 44),
        (257, 5, 'Blind Willow, Sleeping Woman: Twenty-four Stories by Haruki Murakami', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781400044610.jpg?v=1626401734000', 55, '2021-07-15', 26),
        (258, 4, 'The Andrew Lang fairy tale treasury', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51t0f6cpd3l-sx352-bo1-204-203-200.jpg?v=1626402821000', 36, '2014-01-22', 38),
        (259, 8, '12 : The Elements of Great Managing by Rodd Wagner, James K. Harter', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781595629982.jpg?v=1593735450000', 31, '2008-09-08', 48),
        (260, 3, 'Practical Magic by Alice Hoffman', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780425190371.jpg?v=1593736065000', 42, '2021-11-27', 32),
        (261, 9, 'Game of Thrones Tarot Card Set by', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781452164342.jpg?v=1593739199937', 41, '2020-02-13', 17),
        (262, 10, 'Producing Results by Gary Neilson, Bruce Pasternack', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781400098392.jpg?v=1593739313027', 36, '2009-02-20', 12),
        (263, 2, 'Leadership Presence : Dramatic Techniques to Reach out Motivate and Inspire by Kathy Lubar, Belle Linda Halpern', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781592400867.jpg?v=1593740628040', 36, '2004-07-31', 15),
        (264, 2, '101 Tips for Graduates : A Code of Conduct for Success and Happiness in Your Professional Life by Susan Morem', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780816082261.jpg?v=1593741695693', 50, '2000-04-29', 19),
        (265, 5, 'Henna Body Art by Mark Smith', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/s-l400-7dde7aee-dc7c-4546-8253-e63b15166204.jpg?v=1593742011470', 32, '2017-08-29', 11),
        (266, 2, 'The Present Age: On the Death of Rebellion (Resistance Library) by Soren Kierkegaard', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062930859.jpg?v=1593742288000', 38, '2012-09-23', 16),
        (267, 4, '30 Low-Fat Vegetarian Meals in 30 Minutes', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780446672115.jpg?v=1593742894727', 51, '2005-01-14', 19),
        (268, 8, '30-Second Religion : The 50 most thought-provoking religious beliefs, each explained in half a minute', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781782405917.jpg?v=1593743645837', 38, '2012-01-08', 28),
        (269, 10, 'Hannibal by Thomas Harris', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385299299.jpg?v=1593744158000', 45, '2005-12-01', 40),
        (270, 4, 'Business Model Generation : A Handbook for Visionaries, Game Changers, and Challengers by Alexander Osterwalder / Yves Pigneur', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780470876411.jpg?v=1592565189287', 33, '2019-07-20', 48),
        (271, 6, 'Memories of John Lennon by Yoko Ono', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060594565.jpg?v=1592565415497', 30, '2021-03-16', 39),
        (272, 3, 'Find Me: A Novel by André Aciman', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780374155018.jpg?v=1592565775000', 56, '2007-08-18', 33),
        (273, 7, 'Talking to Strangers: What We Should Know about the People We Don''t Know by Malcolm Gladwell', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51sv9mrscrl-ac-ul600-sr402-600.jpg?v=1592574579000', 45, '2013-05-16', 21),
        (274, 2, 'The Wolves at the Door: The True Story of America''s Greatest Female Spy by Judith Pearson', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781599210728.jpg?v=1592575097933', 41, '2016-09-16', 21),
        (275, 3, 'The Great Alone: A Novel by Kristin Hannah', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/419dzwloj6l.jpg?v=1592575851000', 57, '2008-07-09', 25),
        (276, 10, 'The Flight Portfolio (BOTM) by Julie Orringer', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/81qqjjji-plus-l.jpg?v=1592576242000', 45, '2008-03-23', 36),
        (277, 8, 'Jack Ma - Alibaba and the 40 Thieves of Success by Think Maverick', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/36316592-sy475.jpg?v=1592577109000', 53, '2016-07-06', 20),
        (278, 2, 'The Woman in the Window (BOTM) by A.J. Finn', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062678416.jpg?v=1592578556000', 44, '2004-10-28', 21),
        (279, 1, 'Girl, Stop Apologizing: A Shame-Free Plan for Embracing and Achieving Your Goals (B&N Exclusive Edition) by Rachel Hollis', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781404110380-p0-v1-s550x406.jpg?v=1592578835110', 51, '2009-02-08', 23),
        (280, 6, 'The Nazi Officer''s Wife: How One Jewish Woman Survived the Holocaust by Edith Hahn Beer', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/4adfc6fd-ae38-49be-a8ab-db3d44b724a7-1-adf03a2c16a5db37382f93607bb80bde-jpeg.jpg?v=1592580339973', 53, '2005-12-20', 26),
        (281, 1, 'The Lean Startup: How Today''s Entrepreneurs Use Continuous Innovation to Create Radically Successful Businesses by Eric Ries', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307887894.jpg?v=1592581347677', 46, '2012-07-27', 17),
        (282, 10, 'On Tyranny: Twenty Lessons from the Twentieth Century by Timothy Snyder', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41kccjh70dl-sx353-bo1-204-203-200.jpg?v=1592582180000', 37, '2007-03-29', 48),
        (283, 6, 'Journey to the East by Baird T. Spalding, Bien Giang, Poven Leace', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781439252772-53279c01-2096-4666-9927-738565cb7611.jpg?v=1592584117000', 50, '2017-05-31', 45),
        (284, 6, 'Between the World and Me by Ta-Nehisi Coates', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780812993547.jpg?v=1592590211000', 41, '2013-10-29', 15),
        (285, 6, 'Hogwarts Library by J K Rowling', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780545615402.jpg?v=1592590942000', 55, '2003-03-27', 17),
        (286, 1, 'The Four Agreements: A Practical Guide to Personal Freedom (A Toltec Wisdom Book) by Don Miguel Ruiz', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781878424310.jpg?v=1592591129000', 33, '2006-01-31', 30),
        (287, 4, 'Buddhism: Beginner’s Guide to Understanding & Practicing Buddhism to Become Stress and Anxiety Free by Michael Williams', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781537410005.jpg?v=1592591229223', 58, '2015-02-25', 44),
        (288, 1, 'Dispatches from the Edge: A Memoir of War, Disasters, and Survival by Anderson Cooper', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780061132384.jpg?v=1592591983290', 40, '2007-08-25', 18),
        (289, 3, 'Redefining Realness: My Path to Womanhood, Identity, Love & So Much More by Janet Mock', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781476709123.jpg?v=1592595000890', 58, '2021-01-06', 34),
        (290, 9, 'The Glass Books of the Dream Eaters by Gordon Dahlquist', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385340359.jpg?v=1592595141000', 54, '2017-10-10', 29),
        (291, 8, 'Strange Piece of Paradise by Terri Jentz', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780374134983.jpg?v=1592600788513', 46, '2009-02-14', 31),
        (292, 2, 'The Casual Vacancy by J K Rowling', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316228534.jpg?v=1592611757000', 45, '2014-02-21', 49),
        (293, 10, 'The Lost Symbol: Featuring Robert Langdon by Dan Brown', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385504225.jpg?v=1592612088000', 60, '2012-11-02', 31),
        (294, 4, 'Harry Potter feather quill pen', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/l-830-mann450w.jpg?v=1626406725000', 60, '2009-01-03', 12),
        (295, 9, 'What It Takes: Lessons in the Pursuit of Excellence by Stephen A. Schwarzman', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781501158148.jpg?v=1592614002903', 48, '2009-12-06', 14),
        (296, 5, 'StrengthsFinder 2.0 by Tom Rath', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781595620156.jpg?v=1592616057000', 57, '2015-09-21', 29),
        (297, 10, 'City Of Girls', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781594634734.jpg?v=1626415604000', 57, '2011-07-24', 38),
        (298, 6, 'THE BLACK SWAN: THE IMPACT OF THE HIGHLY IMPROBABLE', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/811-plus-v4p6wel.jpg?v=1626415766000', 30, '2013-10-14', 36),
        (299, 3, 'Hoi An Panorama', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41w3xywvijl-sy373-bo1-204-203-200-bd7f2620-1111-4fed-88a8-c4bc23a11f9b.jpg?v=1626425749000', 51, '2000-05-09', 12),
        (300, 2, '101 MOJITOS AND OTHER MUDDLED DRINKS', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780470505212-l.jpg?v=1586629167000', 60, '2013-12-13', 29),
        (301, 5, 'EXTREME BREWING', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781592538027-l.jpg?v=1586628921000', 36, '2008-04-30', 10),
        (302, 3, 'Fire and Blood: 300 Years Before A Game of Thrones (A Targaryen History) (A Song of Ice and Fire) by George R.R. Martin', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51icdglbcsl-sx323-bo1-204-203-200.jpg?v=1579244120000', 46, '2004-11-10', 45),
        (303, 8, 'The 5 AM Club by Robin Sharma', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41zeuzz-plus-0xl-sx331-bo1-204-203-200.jpg?v=1579248202000', 49, '2019-01-05', 48),
        (304, 1, 'The Miracle Equation by Hal Elrod', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781473695931.jpg?v=1579248426667', 35, '2020-10-13', 47),
        (305, 3, '21 Lessons for the 21st Century by Yuval Noah Harari', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/k.jpg?v=1585462336187', 34, '2008-10-22', 26),
        (306, 3, 'The rainmaker by John Grisham', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780712654593.jpg?v=1570095104000', 52, '2019-12-02', 15),
        (307, 10, 'Illustrated Treasury of Disney Songs', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781562827434.jpg?v=1569814348667', 40, '2016-02-08', 36),
        (308, 8, 'Peter Pan (100th Anniversary Edition) by Sir J. M. Barrie', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780805072457.jpg?v=1569810641390', 56, '2013-09-21', 15),
        (309, 6, 'If Tomorrow Comes by Sidney Sheldon (First Edition)', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/123.jpg?v=1585472872000', 56, '2016-04-16', 10),
        (310, 10, 'Reader''s Digest Condensed Books vol 6 - 1995', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/z2879183060453-74bfa55c0dc178f2b970679a93c1a2cb.jpg?v=1635763753000', 36, '2018-03-26', 13),
        (311, 4, 'Without remorse - The old house at Railes - Decider - King of the Hile (Reader''s Digest Condensed Books vol 2 - 1994)', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51s2cmwd-ml-sx365-bo1-204-203-200.jpg?v=1585544010000', 48, '2005-12-29', 31),
        (312, 6, 'Don Quixote - All in the Family - Saturday the Rabbi went Hungry - The gift of the deer - Brothers of the seae (Reader''s Digest Condensed Books vol 4 - 1966)', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/33.jpg?v=1585545480000', 59, '2001-05-06', 11),
        (313, 3, 'The Golden House - Issued-Signed First Edition by Salman Rushdie', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/ll.jpg?v=1585550629090', 32, '2018-11-04', 46),
        (314, 4, 'Hillbilly Elegy AUTOGRAPHED by J.D. Vance (SIGNED EDITION)', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/tt.jpg?v=1585562347000', 58, '2012-01-03', 27),
        (315, 3, 'The Truth Is a Cave in the Black Mountains Limited Edition : A Tale of Travel and Darkness with Pictures of All Kinds by Neil Gaiman , Illustrated by  Eddie Campbell', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/s-l400.jpg?v=1567222549000', 55, '2016-08-24', 18),
        (316, 3, 'The Testaments by Margaret Atwood', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781784742324.jpg?v=1566536758000', 48, '2004-06-29', 45),
        (317, 7, 'Factfulness : Ten Reasons We''re Wrong About The World by Hans Rosling', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781473637467-41c2b995-2a6f-443a-8092-e5f95b5ea87b.jpg?v=1566536007000', 45, '2002-02-04', 39),
        (318, 1, 'Educated by Tara Westover', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780099511021.jpg?v=1566535387633', 39, '2006-10-27', 49),
        (319, 9, 'The Moment of Lift : How Empowering Women Changes the World by Melinda Gates', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781529005493-1c6b7fa4-17bf-4a0b-9e92-5566f3c35a29.jpg?v=1566535278000', 60, '2013-07-05', 40),
        (320, 4, 'The Colour Purple by Alice Walker', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781780228716.jpg?v=1570094104000', 31, '2008-12-16', 10),
        (321, 2, 'Vietnam''s Anti-U.S. Resistance War', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/150416.jpg?v=1585581644997', 44, '2012-03-17', 13),
        (322, 9, 'Vietnamese Traditional Water Puppetry', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/6.jpg?v=1585582203687', 36, '2005-11-05', 28),
        (323, 6, 'Exploring Saigon - Cho Lon (Vanishing Heritage of Ho Chi Minh City)', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/27afeede808ae7b0f2bf92b0eff24f1c.jpg?v=1585583125000', 55, '2019-05-07', 39),
        (324, 2, '5 lb. Book of GRE Practice Problems (2019) : 1,800+ Practice Problems in Book and Online by Manhattan Prep', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41pbbhwx5ul-sx377-bo1-204-203-200.jpg?v=1562147386697', 52, '2016-07-24', 40),
        (325, 3, 'PS, I Love You by Cecelia Ahern', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780007165001.jpg?v=1561971684670', 56, '2003-10-29', 10),
        (326, 2, 'Love, Rosie (Where Rainbows End) by Cecelia Ahern', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780007538393.jpg?v=1561971587187', 49, '2005-10-09', 15),
        (327, 4, 'Me Before You by Jojo Moyes', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143124542.jpg?v=1561971132797', 36, '2005-11-02', 48),
        (328, 5, 'Vietnam: Hidden Riches of a Magical Land by Jochen Voigt', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/vietnam-hidden-riches-of-a-magical-land-1-503x600.jpg?v=1561521493387', 58, '2019-08-29', 46),
        (329, 1, 'Postcard Artbook Wonderful Vietnam - Vol 2', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9ad7b06468c4b9ba30ac7e557b96b83f.jpg?v=1561004085490', 54, '2016-10-29', 15),
        (330, 4, 'Sapiens : A Brief History of Humankind by Yuval Noah Harari', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780062316110.jpg?v=1560391592523', 45, '2007-08-18', 48),
        (331, 10, 'Interpreting literature by K. L Knickerbocker / H. Willard Reninger', 'The Founding Fathers tried to protect us from the threat they knew, the tyranny that overcame ancient democracy. Today, our political order faces new threats and we are no wiser than the Europeans who saw democracy yield to fascism, Nazism, or communism. Our one advantage is that we might learn from their experience. On Tyranny is a call to arms and a guide to resistance, with invaluable ideas for how we can preserve our freedoms in the uncertain years to come.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51syrw3sq-plus-l-sl500-sx339-bo1-204-203-200.jpg?v=1559358242000', 56, '2003-01-30', 42),
        (332, 7, 'Dictionary of the Tarot by Bill Butler', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/l-29eff9f6-e9b0-4a31-9392-09faabbbd48c.jpg?v=1585715863000', 41, '2010-12-22', 16),
        (333, 7, 'The One Device: The Secret History of the iPhone by Brian Merchant', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316555982.jpg?v=1559355033143', 48, '2016-12-01', 29),
        (334, 9, 'The Wrath of Mulgarath The Spiderwick Chronicles, Bk. 5) by Tony DiTerlizzi', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/s-9eda69bf-c0cc-4f83-b332-535e15fbd96e.jpg?v=1585584983087', 58, '2009-10-06', 16),
        (335, 10, 'The Seeing Stone (Spiderwick Chronicles, Bk. 2) by Tony DiTerlizzi', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/ss-6a087ce9-6e23-4be5-9b78-a9f0d510e52b.jpg?v=1585585512600', 53, '2004-03-03', 35),
        (336, 4, 'One Flew Over the Cuckoo''s Nest: Text And Criticism (Viking Critical Library) by Ken Kesey', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140236019.jpg?v=1559275442000', 30, '2009-10-07', 39),
        (337, 1, 'The Nixie`s Song (Beyond The Spiderwick Chronicles, Bk. 1) by Tony DiTerlizzi', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/qq-7e084ad1-3cef-4902-9c22-fd2bc9c67cd1.jpg?v=1585585713637', 48, '2020-10-30', 21),
        (338, 3, 'Lucinda''s Secret (The Spiderwick Chronicles, Bk. 3) by Tony DiTerlizzi', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/aa-a73e04e3-60d9-4641-924f-59ff093bf520.jpg?v=1585585925650', 56, '2010-10-24', 33),
        (339, 8, 'Love Warrior (Oprah''s Book Club) by Glennon Doyle', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/vasfa.jpg?v=1559276282203', 48, '2004-08-07', 44),
        (340, 6, 'The Ironwood Tree (Spiderwick Chronicles, Bk. 4) by Tony DiTerlizzi', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/aaa-3421084b-fe1f-487a-a4ff-e6e555efaac8.jpg?v=1585586126290', 33, '2006-02-18', 50),
        (341, 4, 'The Everything Store: Jeff Bezos and the Age of Amazon by Brad Stone', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316219280.jpg?v=1559276674747', 56, '2001-01-30', 28),
        (342, 8, 'Heidegger and a Hippo Walk Through Those Pearly Gates by Thomas Cathcart, Daniel Klein', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143118251.jpg?v=1559276858000', 34, '2014-08-17', 18),
        (343, 5, 'The Collector by John Fowles', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316290234.jpg?v=1559279382000', 34, '2016-04-03', 46),
        (344, 3, 'Gone with the Wind by Margaret Mitchell, Pat Conroy', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/gone-with-the-wind-9781451635621-lg.jpg?v=1559359494000', 57, '2014-02-08', 44),
        (345, 6, 'Gauguin, Cezanne, Matisse : Visions of Arcadia', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780300179804.jpg?v=1559103783580', 51, '2002-04-29', 21),
        (346, 10, 'The Story of the Design Museum', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780714872537.jpg?v=1559108358390', 60, '2006-01-14', 41),
        (347, 9, 'The Last Supper: Leonardo Da Vinci', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9788854407626.jpg?v=1559108264940', 37, '2007-07-25', 24),
        (348, 2, 'Picasso and Modern British Art', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781854378903.jpg?v=1559108496787', 56, '2015-11-21', 35),
        (349, 5, 'Michelangelo Sculptor', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9788871796406.jpg?v=1559108991560', 51, '2004-06-17', 37),
        (350, 7, 'Michelangelo Drawings : Closer to the Master', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780300111477.jpg?v=1559108862547', 46, '2021-12-24', 23),
        (351, 6, 'Making Art From Maps : Inspiration, Techniques, and an International Gallery of Artists', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781631591020.jpg?v=1559108749000', 34, '2007-03-20', 21),
        (352, 9, 'Leonardo''s Legacy : How Da Vinci Reimagined the World', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780306820083.jpg?v=1559108666230', 52, '2015-12-28', 43),
        (353, 6, 'Contemporary Japanese Ceramics', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781891640384.jpg?v=1559109249083', 48, '2005-01-27', 32),
        (354, 9, '500 Portraits', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781606994733.jpg?v=1559109308310', 60, '2012-06-22', 39),
        (355, 5, 'The World''s Best Beach Houses', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781864705003.jpg?v=1559110150047', 40, '2001-12-04', 24),
        (356, 8, 'Sustainable Asian House : Thailand, Malaysia, Singapore, Indonesia, Philippines', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780804848978.jpg?v=1559110099540', 45, '2016-04-26', 49),
        (357, 10, 'It''s Not About the Bike : My Journey Back to Life by Lance Armstrong', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780399146114.jpg?v=1558940944413', 50, '2015-08-09', 22),
        (358, 6, 'Resurgence: The Four Stages of Market Focused Reinvention by', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781137278616.jpg?v=1558940801000', 57, '2020-12-19', 40),
        (359, 5, 'Veronica Mars: The Thousand-Dollar Tan Line', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780804170703.jpg?v=1558939881000', 35, '2011-01-15', 48),
        (360, 3, 'The Catcher In The Rye by J. D. Salinger', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316769174.jpg?v=1558751760000', 54, '2015-07-24', 47),
        (361, 8, 'Codename Villanelle (Killing Eve) by', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780316476720.jpg?v=1558699668000', 44, '2015-06-14', 22),
        (362, 2, 'Authentic Leadership (HBR Emotional Intelligence Series) by Harvard Business Review', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781633693913.jpg?v=1558322563337', 40, '2020-08-02', 24),
        (363, 8, '"Casino Royale" Bond on Set', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781405316583.jpg?v=1557810247623', 30, '2007-08-08', 35),
        (364, 10, 'Laura Ingall Wilder''s "Little House on the Prairie" (COLLECTOR''S EDITION)', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060282448.jpg?v=1557454670837', 39, '2017-07-26', 39),
        (365, 9, 'Statistics Workbook For Dummies by Deborah J. Rumsey', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780764584664.jpg?v=1556951922470', 53, '2000-07-30', 18),
        (366, 6, '7 Mindsets of Success : What You Really Need to Do to Achieve Rapid, Top-Level Success by Sten Morgan', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781683503019.jpg?v=1556951812757', 39, '2002-09-07', 43),
        (367, 6, 'Python Tricks : A Buffet of Awesome Python Features by Dan Bader', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781775093305.jpg?v=1556950958113', 45, '2020-11-01', 30),
        (368, 3, 'Python Programming : An Introduction to Computer Science by John M. Zelle', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781590282755.jpg?v=1556950632227', 50, '2016-05-03', 43),
        (369, 5, 'Statistics For Dummies by  Deborah J. Rumsey', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781119293521.jpg?v=1556950439647', 44, '2007-04-26', 38),
        (370, 5, 'Becoming Steve Jobs : The Evolution of a Reckless Upstart Into a Visionary Leader by Brent Schlender', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781444762013.jpg?v=1564020192993', 58, '2009-03-19', 31),
        (371, 3, 'The Alchemist: 25th Anniversary Edition by Paulo Coelho (SIGNED EDITION)', 'Mariana Enriquez has been critically lauded for her unconventional and sociopolitical stories of the macabre. Written with a resounding tenderness toward those in pain, in fear, and in limbo, The Dangers of Smoking in Bed is Enriquez at her most sophisticated, and most chilling.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/s-l640.jpg?v=1559013856833', 56, '2008-03-18', 41),
        (372, 9, 'Gone with the Wind (International Collectors Library Series) by Margaret Mitchell', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/a1kt4pg-plus-1cl-ac-ul654-ql65.jpg?v=1556597546467', 54, '2012-06-29', 12),
        (373, 8, 'The Limits of Surveillance and Financial Market Failure : Lessons from the Euro-Area Crisis', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781137471468.jpg?v=1556431540617', 39, '2009-11-13', 35),
        (374, 10, 'A Bigger Prize : When No One Wins Unless Everyone Wins by Margaret Heffernan', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781471100765.jpg?v=1556431461750', 39, '2007-06-17', 21),
        (375, 6, 'Credit Rating Agencies And The Financial Crisis by United States Congress House of Represen', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51nlytw8hhl-sx382-bo1-204-203-200.jpg?v=1556431327873', 42, '2013-04-16', 21),
        (376, 6, 'TURMOIL IN U.S. CREDIT MARKETS: THE ROLE OF CREDIT RATING AGENCIES by United States Congress Senate Committee', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51movlxalzl-sx382-bo1-204-203-200.jpg?v=1556431266753', 41, '2006-12-26', 32),
        (377, 5, 'Rating The Raters: Enron And The Credit Rating Agencies by United States Congress Senate Committee on Governmental Affairs', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51xm-plus-7yjggl-sx373-bo1-204-203-200.jpg?v=1556431202313', 30, '2013-06-22', 36),
        (378, 5, 'Return on Engagement : Content, Strategy, and Design Techniques for Digital Marketing by Tim Frick', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780240812830.jpg?v=1556431120940', 33, '2003-07-28', 20),
        (379, 6, 'Pushing The Boundaries: Stories From The Putrajaya Years', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/29464721.jpg?v=1556431041440', 35, '2016-06-30', 19),
        (380, 9, 'The Right to Brand by Yasmin Merican', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/71etyeyhmkl.jpg?v=1556430446777', 57, '2009-03-12', 20),
        (381, 6, '150 of the Most Beautiful Songs Ever', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781423410867.jpg?v=1556420540057', 44, '2004-10-16', 48),
        (382, 1, 'The Forgotten Room by  Lincoln Child', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385531405.jpg?v=1556420358000', 60, '2012-08-05', 35),
        (383, 4, 'Hard-Boiled Wonderland and the end of the world by Haruki Murakami', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/j.jpg?v=1585660983467', 34, '2016-02-06', 10),
        (384, 10, 'HBR''s 10 Must Reads on Change Management by Harvard Business Review', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781422158005.jpg?v=1555562917190', 50, '2017-12-22', 18),
        (385, 9, 'The Fifth Risk : Undoing Democracy by Michael Lewis', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780241373545.jpg?v=1555565458503', 59, '2012-03-04', 39),
        (386, 9, 'Birthday Girl by Haruki Murakami', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781787301252.jpg?v=1555564978000', 55, '2006-03-14', 19),
        (387, 9, 'Goodnight Stories for Rebel Girls 2', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780997895827.jpg?v=1555565053237', 49, '2005-10-22', 43),
        (388, 4, 'The Power of Habit : Why We Do What We Do in Life and Business by Charles Duhigg', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780812981605.jpg?v=1555565645947', 30, '2021-08-16', 25),
        (389, 9, 'Silence: The Power of Quiet in a World Full of Noise  by Thich Nhat Hanh', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41nuz8a93tl-sx327-bo1-204-203-200.jpg?v=1554274835000', 43, '2021-11-17', 18),
        (390, 7, 'The Chess Man by Peter May', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/d-eeda556b-e721-4a5f-b743-3357e5c84411.jpg?v=1585716831057', 38, '2008-12-01', 46),
        (391, 8, 'The Lewis Man by Peter May', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/x-ec0fee84-1863-4fe6-96bc-05837bb47c85.jpg?v=1585716971333', 39, '2007-11-09', 23),
        (392, 9, 'Steve Jobs', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781501127625.jpg?v=1554197409310', 58, '2016-07-06', 49),
        (393, 10, 'Dear Founder : Letters of Advice for Anyone Who Leads, Manages, or Wants to Start a Business by Maynard Webb, Carlye Adler, Howard Schultz (Contributions by)', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/41uyjzjqxtl-sx322-bo1-204-203-200.jpg?v=1554125704803', 57, '2010-03-15', 36),
        (394, 6, 'The Congratulations, You''re Expecting! Gift Set by Heidi Murkoff, Sharon Mazel (With)', 'Ben Horowitz, co-founder of Andreessen Horowitz and one of Silicon Valley�s most respected and experienced entrepreneurs, offers essential advice on building and running a startup�practical wisdom for managing the toughest problems business school doesn�t cover, based on his popular blog.

While many people talk about how great it is to start a business, very few are honest about how difficult it is to run one. Ben Horowitz analyzes the problems that confront leaders every day, sharing the insights he�s gained developing, managing, selling, buying, investing in, and supervising technology companies. A lifelong rap fanatic, he amplifies business lessons with lyrics from his favorite songs, telling it straight about everything from firing friends to poaching competitors, cultivating and sustaining a CEO mentality to knowing the right time to cash in.

Filled with his trademark humor and straight talk, The Hard Thing About Hard Things is invaluable for veteran entrepreneurs as well as those aspiring to their own new ventures, drawing from Horowitz�s personal and often humbling experiences.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51x3bbdb-fl-sr600-315-piwhitestrip-bottomleft-0-35-sclzzzzzzz.jpg?v=1554125932013', 37, '2005-04-20', 25),
        (395, 3, 'The Devil and Miss Prym by Paulo Coelho', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780007116034.jpg?v=1554126902273', 33, '2014-11-20', 18),
        (396, 9, 'Manuscript Found in Accra by Paulo Coelho', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385349833.jpg?v=1554127030043', 36, '2006-07-11', 30),
        (397, 7, 'Veronika Decides To Die by Paulo Coelho', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780722539316.jpg?v=1554127202740', 46, '2004-12-31', 50),
        (398, 10, 'The Devil and Miss Prym: A Novel of Temptation by Paulo Coelho', 'The first book in the Nanette Hayes Mystery series introduces us to jazz-loving, street busker Nanette, whose love life leads her into some very hot water.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060527990.jpg?v=1554127301193', 34, '2017-05-14', 36),
        (399, 6, 'Eleven Minutes by Paulo Coelho', 'The normal life of a elderly man will be permanently altered as a lost friend enters his life.

The lost friend claims the elderly man will be rewarded if shelter is provided against the forces that supposedly chase this ''wanted fugitive''. Unsure what to think of all this and of this lost friend, the elderly man oddly willingly agrees to the proposal, it all seemed rather odd, but there was no time to waste and a choice had to be made.

But what if this lost friend is a con artist. Or what if the complete opposite is true. How could an ordinary elderly man play a part in all this. We''re about to find out.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780007166022.jpg?v=1554127840093', 44, '2017-04-01', 44),
        (400, 1, 'Why Men Marry Bitches: A Woman''s Guide to Winning Her Man''s Heart by Sherry Argov', 'The casual life of a elderly man might be changing forever as a strange woman enters his life.

The strange woman claims the elderly man is the ''chosen one'' according to an ancient prophecy. The prophecy states the chosen one will save the world, but only if properly trained. There is no time to waste. Unconvinced of the situation, but trusting of this strange woman, the elderly man oddly willingly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this strange woman speaks only lies. Or what if this proposal is wrong or missing important details. How could an ordinary elderly man play a part in all this. Time will tell.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780743276375.jpg?v=1554128031000', 33, '2019-07-03', 40),
        (401, 5, 'Beauty and Sadness by Yasunari Kawabata', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780394460550-uk.jpg?v=1554128354000', 38, '2016-11-23', 29),
        (402, 1, 'Silent House by Orhan Pamuk', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780307402653-uk.jpg?v=1554129155000', 32, '2005-09-09', 40),
        (403, 6, 'Ten Thousand Roses: The Making of a Feminist Revolution by Judy Rebick', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780143015444.jpg?v=1554130482420', 30, '2005-03-02', 26),
        (404, 5, 'Summer Crossing by Truman Capote', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781400065226.jpg?v=1554130550000', 52, '2013-11-18', 13),
        (405, 3, 'Sabbath (Ancient Practices Series)', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780849946042.jpg?v=1554131129067', 59, '2009-11-17', 14),
        (406, 7, 'Reef Fishes of South-East Asia by Michael Aw / Elizabeth Wood', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472940582.jpg?v=1554131381473', 49, '2012-12-15', 18),
        (407, 3, 'The Little Library Cookbook: 100 Recipes from Your Favorite Books by Kate Young', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51lol6l5ocl-sx357-bo1-204-203-200.jpg?v=1554132812877', 35, '2021-05-25', 36),
        (408, 7, 'The Letters of Abelard and Heloise (Penguin Classics) by Peter Abelard, Heloise, Michael Clanchy (Introduction by)', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780140448993.jpg?v=1554133219000', 46, '2009-08-10', 43),
        (409, 1, 'Death in Venice  by Thomas Mann', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780060576172.jpg?v=1554134219000', 49, '2006-09-09', 43),
        (410, 3, 'Clash! : How to Thrive in a Multicultural World by Alana Conner, Hazel Rose Markus', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780142180938.jpg?v=1554134493903', 43, '2014-10-03', 48),
        (411, 4, 'Birds of the West Indies (Pocket Photo Guides) by G. Michael Flieg, Allan Sander (Photographs by)', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472938145.jpg?v=1554134790310', 35, '2011-06-10', 36),
        (412, 1, 'Birds of Sri Lanka (Pocket Photo Guide) by Gehan de Silva Wijeyeratne, Deepal Warakagoda, T S U de Zylva', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472932938.jpg?v=1554134859203', 31, '2016-12-05', 37),
        (413, 9, 'Birds of Peninsular Malaysia and Singapore (Pocket Photo Guides) by G. W. H. Davison, Chew Yen Fook (Photographs by)', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472938237.jpg?v=1554134967870', 31, '2011-11-13', 10),
        (414, 6, 'Birds of Italy (Pocket Photo Guides) by Marianne Taylor, Daniele Occhiato', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781472949820.jpg?v=1554135162590', 43, '2020-09-23', 43),
        (415, 5, 'Asteroid Hunters (TED Books) by Carrie Nugent', 'The nonchalant life of a young girl will be permanently altered as a lost friend enters her life.

The lost friend claims the young girl lives right above an ancient, hidden treasure. If assistance is provided, the treasure will be shared and this ''treasure hunter'' will provide all the needed tools. Distrusful of both this situation and of this lost friend, the young girl somewhat gladly agrees to the proposal, but for some reason a nagging feeling of ''this is a bad choice'' won''t go away.

But what if this lost friend is just a crazy person. Or what if the wrong person was picked for this. How could an ordinary young girl be relied upon in something this big. Time will tell.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/51vthun4h4l-sx360-bo1-204-203-200.jpg?v=1554135584490', 51, '2019-05-11', 19),
        (416, 4, '10 Days to More Confident Public Speaking by Princeton Language Institute', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780446676687.jpg?v=1554135747593', 36, '2003-07-28', 18),
        (417, 2, 'On the Warrior''s Path (2nd Edition) by Daniele Bolelli', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781583942192.jpg?v=1554211570653', 51, '2017-12-12', 15),
        (418, 1, 'Notes for the Everlost: A Field Guide to Grief by Kate Inglis', 'Noted media pundit and author of Playing the Future Douglas Rushkoff gives a devastating critique of the influence techniques behind our culture of rampant consumerism. With a skilled analysis of how experts in the fields of marketing, advertising, retail atmospherics, and hand-selling attempt to take away our ability to make rational decisions, Rushkoff delivers a bracing account of media ecology today, consumerism in America, and why we buy what we buy, helping us recognize when we�re being treated like consumers instead of human beings.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781611805505.jpg?v=1554211636813', 42, '2014-04-18', 44),
        (419, 1, 'Ethics 101: From Altruism and Utilitarianism to Bioethics and Political Ethics, an Exploration of the Concepts of Right and Wrong (Adams 101)  by Brian Boone', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 5, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781507204931.jpg?v=1554212457000', 32, '2013-02-26', 31),
        (420, 6, 'South of the Border, West of the Sun by Haruki Murakami', 'The sweeping, unforgettable story of an interracial couple in 1990s New York City who are determined to protect their love against all odds�a reimagining of Romeo and Juliet.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780679767398.jpg?v=1554214060520', 40, '2001-12-01', 11),
        (421, 8, 'Short Films 101: How to Make a Short for Under $50k - and Launch Your Filmmaking Career by Frederick Levy', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780399529498.jpg?v=1554194564683', 40, '2020-06-27', 32),
        (422, 6, 'The Schooldays of Jesus by J. M. Coetzee', 'A surreal, devastating story of a homeless ghost who haunts one of Tokyo�s busiest train stations. A powerful masterwork from one of Japan�s most brilliant outsider writers, Tokyo Ueno Station is a book for our times and a look into a marginalized existence in a shiny global megapolis.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780735222663.jpg?v=1554194278153', 42, '2002-07-01', 18),
        (423, 9, 'Passionate Politics: Feminist Theory in Action - Essays, 1968-1986 by Charlotte Bunch', 'John Kenney is back with a collection that tackles the hilarity of life in the office. From waiting in line for the printer and revising spreadsheet after spreadsheet, to lukewarm coffee, office politics, and the daily patterns of your most annoying�and lovable�coworkers, Kenney masterfully captures the warmth and humor of working the �9 to 5� in today�s modern era.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780312302290.jpg?v=1554192526760', 32, '2014-09-23', 41),
        (424, 6, 'Literary Starbucks: Fresh-Brewed, Half-Caf, No-Whip Bookish Humor by Nora Katz, Wilson Josephson, Jill Poskanzer, Harry Bliss', 'If you were about to leave this planet, what would you say, and who would you say it to?

This shocking and provocative question is at the core of the remarkable and inspiring book, One Last Talk: Why Your Truth Matters And How To Deliver It. This book emerged from the speaking series designed to help people discover their truth, and then speak it out loud, developed by renowned coach Philip McKernan.

In this book, McKernan goes beyond the event, and dives into what it means to discover your truth and speak it, why people should do this, and then deeply explains exactly how this can be done. If you feel living more authentically could allow you to have a greater impact on others, or you can�t find the words to speak your truth as boldly as you know you need to, this is the book for you.

Make no mistake, the path McKernan lays out is simple, but not easy, because your greatest gift lies next to your deepest wounds.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250096791.jpg?v=1554188443673', 38, '2017-05-12', 11),
        (425, 5, 'Hollywood Foto-Rhetoric: The Lost Manuscript by Bob Dylan and Barry Feinstein', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781439112557.jpg?v=1554186206000', 49, '2003-01-06', 14),
        (426, 2, 'Alone by Christophe Chabouté', 'Many corporations have slick, flashy mission statements that ultimately do little to motivate employees and less to impress customers, investors, and partners.

But there is a way to share your excitement for the future of your company in a clear, compelling, and powerful way and entrepreneur and business growth expert Cameron Herold can show you how.

Vivid Vision is a revolutionary tool that will help owners, CEOs, and senior managers create inspirational, detailed, and actionable three-year mission statements for their companies. In this easy-to-follow guide, Herold walks organization leaders through the simple steps to creating their own Vivid Vision, from brainstorming to sharing the ideas to using the document to drive progress in the years to come.

By focusing on mapping out how you see your company looking and feeling in every category of business, without getting bogged down by data and numbers, Vivid Vision creates a holistic road map to success that will get all of your teammates passionate about the big picture.

Your company is your dream, one that you want to share with your staff, clients, and stakeholders. Vivid Vision is the tool you need to make that dream a reality.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781501153327.jpg?v=1554179116000', 42, '2011-09-20', 26),
        (427, 5, 'About Women: Conversations Between a Writer and a Painter by Lisa Alther, Francoise Gilot', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780385539869.jpg?v=1554178906203', 40, '2017-05-16', 11),
        (428, 5, '50 Successful Harvard Application Essays by Staff of the Harvard Crimson', 'The carefree life of a girl changes in an instant as a childhood friend enters her life.

The childhood friend claims the girl is in grave danger. Supposedly a psycho killer is lurking nearby, studying every move, ready to strike at any moment. The person claims to know the killer and offers protection from this psycho. Sure of the truth in this situation, but somewhat distrustful of this childhood friend, the girl unusually eagerly agrees to the proposal, it was probably a good idea to make a quick decision anyway.

But what if this childhood friend is not speaking the truth. Or what if the wrong person was picked for this. How could an ordinary girl end up in a situation like this. We''re about to find out.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781250127556.jpg?v=1554178748000', 33, '2008-12-12', 13),
        (429, 10, '100 Successful College Application Essays by The Harvard Independent', 'Notes on Grief is an exquisite work of meditation, remembrance, and hope, written in the wake of Chimamanda Ngozi Adichie�s beloved father�s death in the summer of 2020. It is a book for this moment�a work readers will treasure and share now more than ever�and yet will prove durable and timeless, an indispensable addition to Adichie�s canon.', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780451417619.jpg?v=1554178529000', 58, '2021-03-31', 15),
        (430, 6, 'We Are All Weird: The Rise of Tribes and the End of Normal by Seth Godin', 'In this blazingly smart and voracious debut, an artist turned stay-at-home mom becomes convinced she�s turning into a dog. An outrageously original novel of ideas about art, power, and womanhood wrapped in a satirical fairy tale, Nightbitch will make you want to howl in laughter and recognition. And you should. You should howl as much as you want.', 3, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781591848240.jpg?v=1554178141103', 54, '2007-03-31', 28),
        (431, 2, 'The Talent Code: Greatness Isn''t Born. It''s Grown. Here''s How. by Daniel Coyle', 'It�s an ordinary Thursday morning for Arthur Dent�until his house gets demolished. The Earth follows shortly after to make way for a new hyperspace express route, and Arthur�s best friend has just announced that he�s an alien. After that, things get much, much worse�', 4, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9780553806847.jpg?v=1554176368787', 47, '2008-12-05', 10),
        (432, 9, 'Read This Before Our Next Meeting: How We Can Get More Done by Al Pittampalli', 'The secluded life of a girl will be permanently altered as a lost friend enters her life.

The lost friend claims the girl is now cursed along with everybody else in this town. Why? By whom? What kind of curse exactly? Nobody seems to know, but the person supposedly responsible for this curse will explain everything at the town hall this afternoon, everybody should come. Sure of the truth in this situation, but somewhat distrustful of this lost friend, the girl somewhat reluctantly agrees to the proposal, there''s something exciting about this whole situation, surely the right choice was made.

But what if this lost friend is trying to manipulate the situation. Or what if the complete opposite is true. How could an ordinary girl be needed for a situation like this. No turning back now though.', 2, '//bizweb.dktcdn.net/thumb/large/100/282/917/products/9781591848271.jpg?v=1554175585757', 45, '2012-08-16', 13);

INSERT INTO bookstore.bookuser (BookID, UserID)
VALUES  (1, 3),
        (7, 3),
        (8, 3),
        (31, 3),
        (34, 3),
        (37, 3),
        (39, 3),
        (44, 3),
        (46, 3),
        (47, 3),
        (65, 3),
        (75, 3),
        (76, 3),
        (83, 3),
        (88, 3),
        (100, 3),
        (115, 3),
        (116, 3),
        (118, 3),
        (122, 3),
        (126, 3),
        (143, 3),
        (147, 3),
        (156, 3),
        (157, 3),
        (159, 3),
        (174, 3),
        (175, 3),
        (186, 3),
        (197, 3),
        (213, 3),
        (223, 3),
        (228, 3),
        (250, 3),
        (251, 3),
        (252, 3),
        (254, 3),
        (265, 3),
        (278, 3),
        (287, 3),
        (303, 3),
        (307, 3),
        (309, 3),
        (317, 3),
        (322, 3),
        (333, 3),
        (347, 3),
        (352, 3),
        (356, 3),
        (359, 3),
        (370, 3),
        (378, 3),
        (386, 3),
        (397, 3),
        (401, 3),
        (411, 3),
        (2, 6),
        (9, 6),
        (12, 6),
        (48, 6),
        (53, 6),
        (71, 6),
        (77, 6),
        (82, 6),
        (90, 6),
        (91, 6),
        (99, 6),
        (103, 6),
        (111, 6),
        (121, 6),
        (146, 6),
        (150, 6),
        (152, 6),
        (171, 6),
        (188, 6),
        (189, 6),
        (191, 6),
        (204, 6),
        (214, 6),
        (215, 6),
        (221, 6),
        (240, 6),
        (244, 6),
        (246, 6),
        (249, 6),
        (269, 6),
        (273, 6),
        (301, 6),
        (305, 6),
        (306, 6),
        (308, 6),
        (315, 6),
        (316, 6),
        (318, 6),
        (326, 6),
        (330, 6),
        (334, 6),
        (367, 6),
        (374, 6),
        (376, 6),
        (379, 6),
        (387, 6),
        (399, 6),
        (409, 6),
        (419, 6),
        (427, 6),
        (4, 7),
        (11, 7),
        (14, 7),
        (18, 7),
        (22, 7),
        (25, 7),
        (27, 7),
        (28, 7),
        (32, 7),
        (35, 7),
        (54, 7),
        (55, 7),
        (79, 7),
        (84, 7),
        (92, 7),
        (93, 7),
        (95, 7),
        (97, 7),
        (102, 7),
        (109, 7),
        (113, 7),
        (119, 7),
        (124, 7),
        (128, 7),
        (140, 7),
        (144, 7),
        (148, 7),
        (151, 7),
        (172, 7),
        (178, 7),
        (179, 7),
        (183, 7),
        (194, 7),
        (199, 7),
        (203, 7),
        (210, 7),
        (212, 7),
        (230, 7),
        (275, 7),
        (282, 7),
        (290, 7),
        (299, 7),
        (313, 7),
        (328, 7),
        (338, 7),
        (340, 7),
        (346, 7),
        (354, 7),
        (357, 7),
        (369, 7),
        (392, 7),
        (396, 7),
        (406, 7),
        (412, 7),
        (415, 7),
        (425, 7),
        (426, 7),
        (19, 8),
        (45, 8),
        (50, 8),
        (52, 8),
        (67, 8),
        (112, 8),
        (114, 8),
        (117, 8),
        (129, 8),
        (135, 8),
        (158, 8),
        (190, 8),
        (196, 8),
        (218, 8),
        (227, 8),
        (241, 8),
        (255, 8),
        (260, 8),
        (271, 8),
        (272, 8),
        (283, 8),
        (289, 8),
        (293, 8),
        (295, 8),
        (298, 8),
        (312, 8),
        (327, 8),
        (341, 8),
        (345, 8),
        (349, 8),
        (365, 8),
        (382, 8),
        (385, 8),
        (393, 8),
        (402, 8),
        (410, 8),
        (414, 8),
        (432, 8),
        (6, 9),
        (15, 9),
        (21, 9),
        (26, 9),
        (80, 9),
        (81, 9),
        (86, 9),
        (94, 9),
        (120, 9),
        (131, 9),
        (132, 9),
        (139, 9),
        (149, 9),
        (169, 9),
        (176, 9),
        (180, 9),
        (225, 9),
        (229, 9),
        (231, 9),
        (235, 9),
        (242, 9),
        (247, 9),
        (257, 9),
        (270, 9),
        (276, 9),
        (277, 9),
        (286, 9),
        (300, 9),
        (304, 9),
        (321, 9),
        (335, 9),
        (343, 9),
        (360, 9),
        (362, 9),
        (373, 9),
        (395, 9),
        (416, 9),
        (418, 9),
        (421, 9),
        (17, 10),
        (30, 10),
        (36, 10),
        (49, 10),
        (51, 10),
        (59, 10),
        (74, 10),
        (87, 10),
        (98, 10),
        (104, 10),
        (130, 10),
        (136, 10),
        (142, 10),
        (161, 10),
        (165, 10),
        (170, 10),
        (187, 10),
        (192, 10),
        (201, 10),
        (202, 10),
        (205, 10),
        (208, 10),
        (216, 10),
        (233, 10),
        (243, 10),
        (248, 10),
        (256, 10),
        (258, 10),
        (263, 10),
        (288, 10),
        (302, 10),
        (320, 10),
        (329, 10),
        (350, 10),
        (355, 10),
        (361, 10),
        (366, 10),
        (368, 10),
        (371, 10),
        (384, 10),
        (389, 10),
        (391, 10),
        (404, 10),
        (407, 10),
        (413, 10),
        (13, 11),
        (16, 11),
        (20, 11),
        (29, 11),
        (33, 11),
        (38, 11),
        (40, 11),
        (42, 11),
        (60, 11),
        (66, 11),
        (68, 11),
        (69, 11),
        (73, 11),
        (89, 11),
        (101, 11),
        (107, 11),
        (110, 11),
        (138, 11),
        (145, 11),
        (162, 11),
        (164, 11),
        (173, 11),
        (177, 11),
        (182, 11),
        (184, 11),
        (195, 11),
        (217, 11),
        (279, 11),
        (280, 11),
        (285, 11),
        (291, 11),
        (294, 11),
        (296, 11),
        (311, 11),
        (314, 11),
        (337, 11),
        (339, 11),
        (344, 11),
        (351, 11),
        (364, 11),
        (408, 11),
        (417, 11),
        (422, 11),
        (429, 11),
        (431, 11),
        (2, 12),
        (3, 12),
        (5, 12),
        (10, 12),
        (24, 12),
        (43, 12),
        (56, 12),
        (58, 12),
        (63, 12),
        (70, 12),
        (72, 12),
        (85, 12),
        (105, 12),
        (106, 12),
        (108, 12),
        (123, 12),
        (127, 12),
        (141, 12),
        (166, 12),
        (167, 12),
        (168, 12),
        (181, 12),
        (185, 12),
        (207, 12),
        (211, 12),
        (219, 12),
        (224, 12),
        (237, 12),
        (238, 12),
        (245, 12),
        (261, 12),
        (262, 12),
        (267, 12),
        (274, 12),
        (281, 12),
        (324, 12),
        (325, 12),
        (342, 12),
        (348, 12),
        (353, 12),
        (363, 12),
        (375, 12),
        (380, 12),
        (388, 12),
        (390, 12),
        (405, 12),
        (420, 12),
        (424, 12),
        (1, 13),
        (2, 13),
        (23, 13),
        (41, 13),
        (57, 13),
        (61, 13),
        (62, 13),
        (64, 13),
        (78, 13),
        (96, 13),
        (125, 13),
        (133, 13),
        (134, 13),
        (137, 13),
        (153, 13),
        (154, 13),
        (155, 13),
        (160, 13),
        (163, 13),
        (193, 13),
        (198, 13),
        (200, 13),
        (206, 13),
        (209, 13),
        (220, 13),
        (222, 13),
        (226, 13),
        (232, 13),
        (234, 13),
        (236, 13),
        (239, 13),
        (253, 13),
        (259, 13),
        (264, 13),
        (266, 13),
        (268, 13),
        (284, 13),
        (292, 13),
        (297, 13),
        (310, 13),
        (319, 13),
        (323, 13),
        (331, 13),
        (332, 13),
        (336, 13),
        (358, 13),
        (372, 13),
        (377, 13),
        (381, 13),
        (383, 13),
        (394, 13),
        (398, 13),
        (400, 13),
        (403, 13),
        (423, 13),
        (428, 13),
        (430, 13);

INSERT INTO bookstore.review (ReviewID, BookID, UserID, Comment, Rating, ReviewDate)
VALUES  (1, 1, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 5, '2020-02-25 04:09:52'),
        (2, 2, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-06-13 10:42:09'),
        (3, 3, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 3, '2020-04-16 09:47:08'),
        (4, 4, 14, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-09-13 11:10:35'),
        (5, 5, 5, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2019-11-19 03:52:36'),
        (6, 6, 15, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 3, '2019-12-12 06:26:41'),
        (7, 7, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 5, '2020-06-18 15:10:02'),
        (8, 8, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 5, '2020-07-24 18:27:48'),
        (9, 9, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 3, '2020-08-19 15:19:02'),
        (10, 10, 2, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-04-28 12:03:15'),
        (11, 11, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2019-11-14 20:40:19'),
        (12, 12, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2020-09-16 00:16:39'),
        (13, 13, 16, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-06-22 12:46:49'),
        (14, 14, 2, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2020-02-13 22:52:06'),
        (15, 15, 17, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-02-19 12:56:38'),
        (16, 16, 2, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-04-21 10:18:48'),
        (17, 17, 15, 'Really liked the first 30 pages or so, but had to skim the rest.', 5, '2019-10-21 12:10:06'),
        (18, 18, 14, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-01-19 16:55:36'),
        (19, 19, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2019-10-31 04:32:41'),
        (20, 20, 15, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-03-30 11:29:49'),
        (21, 21, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 3, '2019-11-27 19:24:30'),
        (22, 22, 18, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-02-04 19:19:26'),
        (23, 23, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-02-04 20:35:38'),
        (24, 24, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-09-23 14:05:41'),
        (25, 25, 17, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2020-09-06 15:34:37'),
        (26, 26, 16, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-01-22 00:45:06'),
        (27, 27, 19, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-06-01 01:12:15'),
        (28, 28, 5, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2019-12-10 20:16:17'),
        (29, 29, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-05-24 14:52:54'),
        (30, 30, 2, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-07-14 17:21:53'),
        (31, 31, 16, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 5, '2020-01-12 19:32:51'),
        (32, 32, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-02-10 14:07:46'),
        (33, 33, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2019-12-01 11:19:37'),
        (34, 34, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2020-08-24 11:26:27'),
        (35, 35, 2, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-06-14 17:55:33'),
        (36, 36, 17, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-07-11 01:55:37'),
        (37, 37, 2, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2020-03-24 15:02:51'),
        (38, 38, 5, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2019-11-04 16:36:01'),
        (39, 39, 19, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-08-10 11:16:05'),
        (40, 40, 18, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2020-09-22 12:35:29'),
        (41, 41, 18, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-09-11 09:20:16'),
        (42, 42, 17, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-01-14 00:34:27'),
        (43, 43, 15, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 2, '2020-01-11 11:47:55'),
        (44, 44, 14, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2019-10-19 17:15:24'),
        (45, 45, 19, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-04-19 02:04:09'),
        (46, 46, 19, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2019-11-26 19:56:24'),
        (47, 47, 19, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2020-04-28 03:16:38'),
        (48, 48, 2, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-08-24 03:30:35'),
        (49, 49, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-07-11 11:34:07'),
        (50, 50, 14, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-04-13 02:40:46'),
        (51, 51, 18, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-02-21 08:15:01'),
        (52, 52, 2, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-08-27 09:15:06'),
        (53, 53, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-09-05 17:38:23'),
        (54, 54, 14, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2020-09-30 13:10:00'),
        (55, 55, 19, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2020-06-21 08:02:09'),
        (56, 56, 17, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-08-31 19:09:30'),
        (57, 57, 2, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 3, '2020-07-09 02:43:07'),
        (58, 58, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2020-02-23 22:55:56'),
        (59, 59, 19, 'Really liked the first 30 pages or so, but had to skim the rest.', 3, '2020-05-10 19:13:43'),
        (60, 60, 19, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-06-01 05:16:54'),
        (61, 61, 14, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 3, '2020-07-15 15:54:12'),
        (62, 62, 5, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-03-17 03:14:56'),
        (63, 63, 19, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2019-10-27 06:02:47'),
        (64, 64, 17, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-04-01 01:37:02'),
        (65, 65, 2, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-08-18 02:24:59'),
        (66, 66, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2019-12-07 08:33:33'),
        (67, 67, 16, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2020-01-03 10:39:05'),
        (68, 68, 18, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-08-12 08:50:43'),
        (69, 69, 18, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 4, '2020-09-13 15:52:36'),
        (70, 70, 19, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 3, '2019-12-18 09:06:28'),
        (71, 71, 19, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-09-02 17:07:06'),
        (72, 72, 5, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 3, '2019-10-29 00:41:17'),
        (73, 73, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2020-06-27 21:53:39'),
        (74, 74, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-01-21 06:08:37'),
        (75, 75, 18, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2020-03-11 05:40:48'),
        (76, 76, 15, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-03-06 22:44:47'),
        (77, 77, 19, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2019-11-25 07:39:44'),
        (78, 78, 16, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2020-01-03 13:52:11'),
        (79, 79, 19, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2020-01-11 10:56:36'),
        (80, 80, 19, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2020-07-30 13:50:52'),
        (81, 81, 19, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-08-23 00:44:43'),
        (82, 82, 14, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-06-17 04:23:41'),
        (83, 83, 5, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 2, '2020-09-10 04:45:48'),
        (84, 84, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2019-10-27 04:49:07'),
        (85, 85, 18, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 4, '2019-12-30 10:48:44'),
        (86, 86, 14, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 3, '2020-05-16 11:18:34'),
        (87, 87, 17, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-03-19 16:17:21'),
        (88, 88, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-03-26 01:31:24'),
        (89, 89, 18, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-02-12 21:20:27'),
        (90, 90, 19, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2020-08-05 08:04:12'),
        (91, 91, 5, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-03-27 01:08:06'),
        (92, 92, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 3, '2020-04-29 16:52:21'),
        (93, 93, 19, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 2, '2020-08-25 18:36:47'),
        (94, 94, 2, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-07-20 18:40:17'),
        (95, 95, 19, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-09-11 07:22:41'),
        (96, 96, 15, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-05-25 04:44:19'),
        (97, 97, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-02-06 21:47:27'),
        (98, 98, 16, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-07-11 21:12:31'),
        (99, 99, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-08-28 11:53:19'),
        (100, 100, 14, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2019-12-26 12:56:49'),
        (101, 101, 15, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-08-25 08:22:14'),
        (102, 102, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2020-05-22 08:05:08'),
        (103, 103, 15, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2019-11-21 20:55:59'),
        (104, 104, 18, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2020-05-11 21:47:48'),
        (105, 105, 19, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-02-01 21:40:04'),
        (106, 106, 2, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-09-16 04:48:09'),
        (107, 107, 18, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 4, '2020-06-27 08:10:29'),
        (108, 108, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 5, '2020-04-18 22:16:10'),
        (109, 109, 2, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 5, '2020-06-26 12:10:59'),
        (110, 110, 17, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2020-01-26 05:38:06'),
        (111, 111, 16, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 2, '2019-10-31 17:42:02'),
        (112, 112, 15, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 3, '2020-06-23 23:50:17'),
        (113, 113, 15, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2019-10-28 10:25:25'),
        (114, 114, 18, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-02-03 08:37:09'),
        (115, 115, 18, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-03-03 17:05:42'),
        (116, 116, 15, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-03-23 08:42:56'),
        (117, 117, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-02-15 11:00:48'),
        (118, 118, 5, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-05-20 09:43:31'),
        (119, 119, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-07-03 08:34:53'),
        (120, 120, 19, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2019-10-26 10:05:57'),
        (121, 121, 5, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-05-03 00:40:34'),
        (122, 122, 17, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-07-13 17:16:19'),
        (123, 123, 14, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 3, '2020-06-02 08:38:04'),
        (124, 124, 5, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 2, '2019-10-27 17:08:33'),
        (125, 125, 18, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-06-02 21:56:55'),
        (126, 126, 16, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-03-20 21:53:08'),
        (127, 127, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2020-03-08 06:39:57'),
        (128, 128, 16, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-09-17 20:05:50'),
        (129, 129, 14, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 5, '2020-01-03 06:14:55'),
        (130, 130, 16, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2019-11-14 02:49:29'),
        (131, 131, 17, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2020-08-14 19:15:10'),
        (132, 132, 19, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 5, '2019-11-11 03:05:34'),
        (133, 133, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-06-24 06:36:34'),
        (134, 134, 19, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-06-18 08:52:13'),
        (135, 135, 19, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-06-23 12:49:13'),
        (136, 136, 14, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2020-01-25 01:20:23'),
        (137, 137, 17, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2019-11-07 13:09:49'),
        (138, 138, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2020-01-07 23:02:48'),
        (139, 139, 19, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-06-21 23:15:00'),
        (140, 140, 14, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 2, '2020-05-26 17:49:06'),
        (141, 141, 5, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 4, '2020-08-11 20:39:00'),
        (142, 142, 19, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2019-11-11 12:20:54'),
        (143, 143, 17, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2019-11-25 15:11:00'),
        (144, 144, 14, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 4, '2020-02-28 22:45:24'),
        (145, 145, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-04-18 21:28:25'),
        (146, 146, 5, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2019-12-29 10:47:45'),
        (147, 147, 16, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2020-05-10 17:34:31'),
        (148, 148, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 3, '2020-08-21 15:54:05'),
        (149, 149, 17, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2020-06-21 18:45:28'),
        (150, 150, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2019-11-20 11:30:09'),
        (151, 151, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-05-28 22:10:20'),
        (152, 152, 18, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-09-02 06:06:30'),
        (153, 153, 15, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 4, '2020-03-20 03:14:44'),
        (154, 154, 16, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2019-11-30 17:51:47'),
        (155, 155, 2, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 5, '2020-01-13 14:38:35'),
        (156, 156, 5, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-06-29 12:09:23'),
        (157, 157, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-06-12 00:16:22'),
        (158, 158, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2020-03-06 06:54:49'),
        (159, 159, 18, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 5, '2020-05-25 23:29:09'),
        (160, 160, 2, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 2, '2020-08-05 17:00:23'),
        (161, 161, 2, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-08-20 00:21:26'),
        (162, 162, 15, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-07-23 15:01:27'),
        (163, 163, 17, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-04-26 18:09:38'),
        (164, 164, 14, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-07-24 02:53:51'),
        (165, 165, 19, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 5, '2020-06-19 23:43:21'),
        (166, 166, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-04-11 09:13:41'),
        (167, 167, 2, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-02-17 09:54:16'),
        (168, 168, 19, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-01-03 09:51:37'),
        (169, 169, 19, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 4, '2020-04-25 22:45:27'),
        (170, 170, 17, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2019-10-25 16:01:48'),
        (171, 171, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2019-11-13 22:42:03'),
        (172, 172, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2019-12-05 18:37:04'),
        (173, 173, 2, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-09-01 06:14:42'),
        (174, 174, 19, 'Really liked the first 30 pages or so, but had to skim the rest.', 5, '2019-11-19 07:35:35'),
        (175, 175, 15, 'Really liked the first 30 pages or so, but had to skim the rest.', 3, '2020-02-07 23:10:47'),
        (176, 176, 16, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-06-25 12:35:53'),
        (177, 177, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-01-28 14:37:24'),
        (178, 178, 14, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-07-21 16:42:22'),
        (179, 179, 19, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2019-10-21 08:57:41'),
        (180, 180, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-05-04 19:51:04'),
        (181, 181, 2, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2020-03-21 11:34:56'),
        (182, 182, 15, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-07-27 13:51:03'),
        (183, 183, 18, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-03-10 12:35:04'),
        (184, 184, 14, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 3, '2019-11-27 04:02:11'),
        (185, 185, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2020-07-03 16:17:04'),
        (186, 186, 18, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2020-07-04 06:45:53'),
        (187, 187, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2019-11-14 14:42:38'),
        (188, 188, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-03-30 21:25:56'),
        (189, 189, 17, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2019-12-08 23:12:30'),
        (190, 190, 17, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2020-07-02 20:50:45'),
        (191, 191, 18, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-05-01 09:04:27'),
        (192, 192, 18, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-09-21 06:45:41'),
        (193, 193, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 3, '2020-04-27 09:08:25'),
        (194, 194, 5, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 5, '2020-04-19 02:45:26'),
        (195, 195, 17, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2019-11-25 04:40:39'),
        (196, 196, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-08-02 02:02:52'),
        (197, 197, 17, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2019-12-09 22:05:18'),
        (198, 198, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-01-23 19:33:56'),
        (199, 199, 16, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-01-31 17:01:05'),
        (200, 200, 18, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2020-04-13 15:05:41'),
        (201, 201, 16, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2020-08-10 02:45:22'),
        (202, 202, 18, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-08-10 01:52:15'),
        (203, 203, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-09-13 15:28:11'),
        (204, 204, 19, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 2, '2020-08-16 05:18:37'),
        (205, 205, 5, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-10-01 07:21:13'),
        (206, 206, 5, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-09-03 20:51:50'),
        (207, 207, 16, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2019-12-03 06:23:08'),
        (208, 208, 14, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-07-07 21:31:43'),
        (209, 209, 16, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-03-21 03:15:25'),
        (210, 210, 18, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-04-24 19:00:28'),
        (211, 211, 17, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2019-12-22 06:33:34'),
        (212, 212, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-09-20 19:10:26'),
        (213, 213, 16, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-07-10 02:40:14'),
        (214, 214, 15, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2020-05-16 19:49:02'),
        (215, 215, 19, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-05-27 18:11:03'),
        (216, 216, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2020-06-18 03:04:03'),
        (217, 217, 15, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2019-12-20 08:30:06'),
        (218, 218, 2, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-08-15 13:12:20'),
        (219, 219, 15, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-01-11 12:24:51'),
        (220, 220, 16, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2019-12-05 06:50:29'),
        (221, 221, 16, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2019-11-15 14:54:35'),
        (222, 222, 19, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2019-12-12 16:34:17'),
        (223, 223, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-03-01 22:27:09'),
        (224, 224, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-02-21 04:43:22'),
        (225, 225, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-03-16 17:37:28'),
        (226, 226, 18, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-02-13 06:41:55'),
        (227, 227, 19, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-08-13 09:36:13'),
        (228, 228, 15, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 4, '2019-11-09 17:07:18'),
        (229, 229, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 3, '2020-01-07 02:47:32'),
        (230, 230, 17, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2019-12-29 16:30:17'),
        (231, 231, 19, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2020-03-08 18:27:36'),
        (232, 232, 15, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-03-27 00:14:34'),
        (233, 233, 15, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 3, '2020-07-24 08:35:22'),
        (234, 234, 2, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-03-02 23:08:05'),
        (235, 235, 2, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 2, '2020-05-27 14:04:18'),
        (236, 236, 18, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-04-21 09:44:37'),
        (237, 237, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-05-25 09:07:20'),
        (238, 238, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2019-10-25 11:26:07'),
        (239, 239, 2, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 4, '2020-03-05 04:57:40'),
        (240, 240, 18, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-01-15 22:09:17'),
        (241, 241, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2020-08-08 12:53:10'),
        (242, 242, 14, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-04-11 17:54:09'),
        (243, 243, 5, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2019-12-01 11:45:05'),
        (244, 244, 18, 'Really liked the first 30 pages or so, but had to skim the rest.', 5, '2020-09-24 22:14:59'),
        (245, 245, 5, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 5, '2020-04-09 11:10:56'),
        (246, 246, 14, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2020-05-28 11:08:20'),
        (247, 247, 19, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-05-30 22:25:13'),
        (248, 248, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2019-12-02 13:03:07'),
        (249, 249, 18, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-09-01 13:18:15'),
        (250, 250, 2, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-02-22 05:20:26'),
        (251, 251, 14, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2020-01-28 07:13:34'),
        (252, 252, 15, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-04-15 06:09:35'),
        (253, 253, 2, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2020-04-09 04:06:49'),
        (254, 254, 16, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2020-03-31 17:12:33'),
        (255, 255, 19, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 4, '2020-09-11 12:04:48'),
        (256, 256, 17, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-05-21 20:55:55'),
        (257, 257, 19, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 4, '2020-04-16 05:50:57'),
        (258, 258, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-09-21 05:31:59'),
        (259, 259, 14, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2020-09-01 13:06:55'),
        (260, 260, 16, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-07-21 08:54:53'),
        (261, 261, 19, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2019-10-23 09:56:21'),
        (262, 262, 18, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-06-28 20:56:34'),
        (263, 263, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2020-01-14 18:53:19'),
        (264, 264, 5, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-07-17 09:51:53'),
        (265, 265, 18, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 5, '2020-08-08 06:28:43'),
        (266, 266, 5, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2020-04-21 07:01:24'),
        (267, 267, 5, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-06-26 23:51:37'),
        (268, 268, 2, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2020-03-17 19:04:13'),
        (269, 269, 18, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 4, '2019-12-22 21:17:56'),
        (270, 270, 5, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2019-10-29 16:27:58'),
        (271, 271, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 5, '2020-03-31 07:27:46'),
        (272, 272, 14, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2020-03-08 11:20:47'),
        (273, 273, 19, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2020-09-02 18:14:22'),
        (274, 274, 14, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-02-22 04:26:00'),
        (275, 275, 15, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2020-06-14 04:44:41'),
        (276, 276, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-06-14 11:33:21'),
        (277, 277, 19, 'Really liked the first 30 pages or so, but had to skim the rest.', 3, '2020-07-29 05:55:03'),
        (278, 278, 18, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 3, '2020-06-04 11:21:26'),
        (279, 279, 15, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-01-12 11:23:05'),
        (280, 280, 15, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2020-09-04 16:49:30'),
        (281, 281, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-05-19 23:38:06'),
        (282, 282, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-04-30 09:36:39'),
        (283, 283, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-02-13 16:47:35'),
        (284, 284, 19, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2019-12-07 10:25:29'),
        (285, 285, 17, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-06-14 08:03:29'),
        (286, 286, 15, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2019-12-27 23:09:13'),
        (287, 287, 5, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2020-05-27 22:28:38'),
        (288, 288, 5, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 3, '2020-04-14 20:22:15'),
        (289, 289, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-07-24 06:21:24'),
        (290, 290, 17, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 2, '2020-09-27 00:14:54'),
        (291, 291, 16, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 4, '2020-04-16 06:38:36'),
        (292, 292, 16, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 4, '2019-12-28 12:55:15'),
        (293, 293, 19, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 3, '2020-07-02 18:11:13'),
        (294, 294, 18, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2020-06-13 09:41:17'),
        (295, 295, 18, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-06-27 10:07:40'),
        (296, 296, 16, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-05-18 06:44:18'),
        (297, 297, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 3, '2020-05-13 18:15:16'),
        (298, 298, 16, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-05-06 08:26:41'),
        (299, 299, 15, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-08-20 12:06:37'),
        (300, 300, 2, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2019-11-20 08:52:34'),
        (301, 301, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2019-12-23 17:22:04'),
        (302, 302, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-04-09 22:38:34'),
        (303, 303, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2019-11-22 02:29:14'),
        (304, 304, 15, 'Really liked the first 30 pages or so, but had to skim the rest.', 5, '2020-02-19 04:15:02'),
        (305, 305, 16, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 2, '2020-03-02 21:59:22'),
        (306, 306, 17, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 4, '2020-06-30 02:40:35'),
        (307, 307, 18, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-07-24 12:27:41'),
        (308, 308, 18, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2020-08-08 05:37:33'),
        (309, 309, 5, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2020-09-05 04:14:38'),
        (310, 310, 15, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-05-22 01:19:00'),
        (311, 311, 19, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-09-15 22:13:29'),
        (312, 312, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-09-29 12:49:10'),
        (313, 313, 18, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2019-11-15 19:15:19'),
        (314, 314, 2, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-09-27 21:36:03'),
        (315, 315, 2, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 4, '2020-07-08 12:03:34'),
        (316, 316, 14, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2020-01-13 10:19:26'),
        (317, 317, 5, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 4, '2020-03-03 20:28:45'),
        (318, 318, 17, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2020-04-13 04:00:32'),
        (319, 319, 18, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2020-06-10 19:57:50'),
        (320, 320, 19, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-07-06 16:00:01'),
        (321, 321, 18, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 3, '2020-06-01 02:59:08'),
        (322, 322, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2020-02-02 04:19:22'),
        (323, 323, 17, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 3, '2020-08-23 22:48:32'),
        (324, 324, 19, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 3, '2020-08-06 16:58:35'),
        (325, 325, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 5, '2020-02-28 15:15:44'),
        (326, 326, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2020-07-14 13:15:14'),
        (327, 327, 16, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-07-31 08:11:27'),
        (328, 328, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-05-01 17:51:38'),
        (329, 329, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-01-11 11:49:29'),
        (330, 330, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2020-08-21 10:57:54'),
        (331, 331, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-02-03 02:10:12'),
        (332, 332, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-06-25 21:16:17'),
        (333, 333, 14, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-06-23 19:56:27'),
        (334, 334, 16, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 3, '2020-02-05 12:37:02'),
        (335, 335, 19, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-02-20 03:13:58'),
        (336, 336, 14, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-02-07 12:52:37'),
        (337, 337, 17, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 3, '2020-01-29 07:30:57'),
        (338, 338, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2019-11-11 11:23:07'),
        (339, 339, 18, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-03-14 21:46:55'),
        (340, 340, 17, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-04-02 23:03:28'),
        (341, 341, 16, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 3, '2020-08-03 21:28:24'),
        (342, 342, 15, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2020-08-24 06:46:05'),
        (343, 343, 19, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-06-03 19:59:29'),
        (344, 344, 18, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 5, '2020-03-05 10:30:43'),
        (345, 345, 5, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 3, '2020-02-09 12:28:11'),
        (346, 346, 2, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-01-11 08:46:55'),
        (347, 347, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 5, '2020-08-26 06:12:52'),
        (348, 348, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2019-12-17 19:45:21'),
        (349, 349, 5, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2020-01-23 10:03:56'),
        (350, 350, 18, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-09-05 09:39:12'),
        (351, 351, 14, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2020-04-17 15:15:02'),
        (352, 352, 5, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-08-19 01:09:08'),
        (353, 353, 15, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 4, '2020-01-28 03:11:24'),
        (354, 354, 17, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 5, '2020-06-26 18:21:47'),
        (355, 355, 5, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 5, '2019-12-01 15:29:24'),
        (356, 356, 2, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2020-09-08 04:57:27'),
        (357, 357, 14, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 3, '2019-10-21 22:56:02'),
        (358, 358, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-01-30 08:59:24'),
        (359, 359, 2, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 5, '2020-09-24 22:30:06'),
        (360, 360, 14, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2019-11-30 14:09:21'),
        (361, 361, 19, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 3, '2020-01-31 04:50:23'),
        (362, 362, 15, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-07-01 12:57:54'),
        (363, 363, 17, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 5, '2020-02-09 01:39:23'),
        (364, 364, 14, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 4, '2020-08-08 01:47:14'),
        (365, 365, 16, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2020-08-13 10:20:17'),
        (366, 366, 15, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2019-11-06 22:31:43'),
        (367, 367, 19, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-04-09 17:11:00'),
        (368, 368, 18, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-03-25 00:49:56'),
        (369, 369, 15, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2020-08-13 04:20:05'),
        (370, 370, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2019-11-21 08:22:39'),
        (371, 371, 14, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 5, '2020-07-10 10:34:44'),
        (372, 372, 18, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 2, '2020-07-22 08:06:31'),
        (373, 373, 19, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 2, '2019-11-11 04:01:47'),
        (374, 374, 15, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 3, '2020-04-15 05:32:33'),
        (375, 375, 5, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-02-21 04:22:32'),
        (376, 376, 16, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 3, '2019-12-25 05:49:15'),
        (377, 377, 16, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 5, '2020-10-01 00:54:07'),
        (378, 378, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-01-11 11:35:09'),
        (379, 379, 16, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-03-19 21:03:04'),
        (380, 380, 14, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 5, '2019-12-24 12:57:53'),
        (381, 381, 17, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 2, '2020-02-07 04:55:36'),
        (382, 382, 19, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 4, '2019-10-19 18:09:32'),
        (383, 383, 5, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 2, '2020-06-03 21:37:39'),
        (384, 384, 15, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-02-24 04:12:42'),
        (385, 385, 2, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2019-10-21 06:33:57'),
        (386, 386, 18, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 5, '2020-07-06 05:10:58'),
        (387, 387, 19, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 5, '2020-03-19 03:23:48'),
        (388, 388, 14, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-02-29 07:03:58'),
        (389, 389, 15, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-02-12 02:57:37'),
        (390, 390, 16, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 2, '2019-11-05 22:05:55'),
        (391, 391, 16, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 5, '2019-10-29 17:50:58'),
        (392, 392, 16, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 5, '2020-06-26 09:58:09'),
        (393, 393, 18, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 4, '2020-01-26 14:57:57'),
        (394, 394, 17, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 4, '2020-06-04 13:04:51'),
        (395, 395, 2, 'Really liked the first 30 pages or so, but had to skim the rest.', 4, '2020-09-04 09:40:02'),
        (396, 396, 2, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 2, '2020-08-26 14:34:32'),
        (397, 397, 17, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 3, '2020-01-15 14:31:58'),
        (398, 398, 17, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2020-08-22 16:32:34'),
        (399, 399, 16, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-09-09 07:16:40'),
        (400, 400, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-07-03 17:08:30'),
        (401, 401, 16, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2019-12-12 07:31:52'),
        (402, 402, 18, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 5, '2019-12-22 05:37:55'),
        (403, 403, 5, 'Excellent collection of essays. This is one I wish I had read, I think, but I really enjoyed the audio. I may read it, too, at some point in the future. I do that sometimes.', 4, '2020-03-09 05:48:21'),
        (404, 404, 18, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-07-12 04:17:57'),
        (405, 405, 17, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 2, '2019-12-15 14:43:52'),
        (406, 406, 17, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 2, '2020-09-19 13:38:01'),
        (407, 407, 15, 'I appreciated Frankenstein''s Cat for its fascinating explanation about the often baffling subject of bioengineering and its sister sciences. Emily Anthes explains the many sides of today''s modern technology, such as gene modification, cloning, pharmaceuti', 5, '2020-06-02 19:38:34'),
        (408, 408, 16, 'One of the best, most clear set of reasons and reflections I’ve ever read about why Jews should be proud of Judaism. I’m a little bit obsessed with Rabbi Sacks. Everything he writes is brilliant.', 3, '2020-01-03 14:22:38'),
        (409, 409, 5, 'I was fascinated by this memoir about a man who discovered the world outside of his very strict religious sect. What’s hard for me with memoirs like Deen’s is the all-or-nothing conclusion that seems to arise about Judaism. But knowing the way Deen was li', 4, '2020-09-28 23:27:33'),
        (410, 410, 17, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 4, '2020-08-25 00:31:20'),
        (411, 411, 17, 'Really liked the first 30 pages or so, but had to skim the rest.', 2, '2020-04-01 10:19:43'),
        (412, 412, 15, 'I liked this book. People who are interested in national disasters and US history as well as immigration will most probably be interested in reading this book.

Readers can gain knowledge of what it was like to work in New York City in the early 1900s. On', 2, '2020-09-09 04:06:51'),
        (413, 413, 19, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 2, '2019-12-17 06:45:10'),
        (414, 414, 5, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 4, '2019-11-16 03:08:41'),
        (415, 415, 15, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-04-08 15:54:17'),
        (416, 416, 19, 'I thought this was YA, but there’s so much sex . . . I wouldn’t recommend it for teens. Pearl does a good job dealing with the tough topic of rape and abuse. It was a book that I couldn’t put down. That said it could have been 80 pages shorter.', 5, '2020-01-10 20:28:34'),
        (417, 417, 2, 'This was a really fast read– a memoir in bite-size segments . . . almost like diary entries. I liked it! I could relate to much of the writing angst and decisions about stepping away from the novel writing. Not sure I’d recommend it for non-writers though', 5, '2020-02-23 13:57:48'),
        (418, 418, 14, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 2, '2020-06-23 20:43:27'),
        (419, 419, 18, 'Journey To Juno is the second book of the Galaxy Zack series. It is just as good as the first one. It''s awesome!

Zack joins the Sprockets Academy Explorers Club at school. They fly on a special trip to Juno, a new planet no one has ever visited. Zack get', 5, '2020-08-03 01:03:54'),
        (420, 420, 15, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 3, '2020-02-13 04:37:27'),
        (421, 421, 16, 'The atmosphere of loneliness in this book and the general apathy of the main character, Anna, should have turned me off, but there was something that keep drawing me back to this book. (And it wasn’t just the sex.)  I recommend it, but I can’t exactly say', 3, '2019-10-28 13:59:08'),
        (422, 422, 15, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-06-03 22:45:09'),
        (423, 423, 2, 'Really liked the first 30 pages or so, but had to skim the rest.', 3, '2020-07-07 09:35:55'),
        (424, 424, 15, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 2, '2020-08-14 04:25:54'),
        (425, 425, 5, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-05-30 23:12:54'),
        (426, 426, 18, 'About Marsupials is the title so the book is about...marsupials, of course. It''s non-fiction. I really think everyone would like the book. I think someone who likes animals would especially like to read it.

The glossary of facts in the back of About Mars', 4, '2019-12-11 14:18:41'),
        (427, 427, 2, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 3, '2020-08-08 23:34:13'),
        (428, 428, 14, 'This book was about a bird who didn''t yet know how to fly.

The bird has to decide if it will try to fly, but it was not sure if it wants to. The bird thought, "If I never forever endeavor" then I won''t ever learn. On one wing, he worries he might fail an', 2, '2020-08-02 21:45:54'),
        (429, 429, 17, 'Dodie Smith''s novel I Capture the Castle is a journey through the mind of a young writer as she attempts to chronicle her daily life. Seventeen-year-old Cassandra Mortmain has recently learned to speed-write, and she decides to work on her writing skills ', 4, '2020-07-05 09:34:49'),
        (430, 430, 5, 'Every day, people around the world use maps. Whether it is an airplane pilot or businessman, housewife or museum group, maps have always and will continue to provide useful information for all.

Mapping the World talks about the uses of maps, as well as h', 3, '2020-07-18 11:23:56'),
        (431, 431, 18, 'Breen makes a great point that social media is here to stay and that getting some influence over our kids’ opinions about how to behave online should start early while they’re still listening to us more than they’re listening to their friends. Great advic', 4, '2019-12-20 03:44:30'),
        (432, 432, 19, 'I admire Organ’s ability to write about faith in such a relatable and vulnerable way, and it makes me wonder if I could do the same one day. Really good read.', 2, '2020-06-12 05:13:20');

INSERT INTO `order`(UserID, OrderDate, TotalPrice, Status, ShippingAddress, RecipientName, RecipientPhone)
VALUES (5, '2020-12-15 14:22:20', 155, 'Delivered', 'Quang Nam', 'Vu Nguyen', '113'),
       (5, '2021-1-12 13:38:30', 465, 'Delivered', 'Quang Nam', 'Vu Nguyen', '113');

INSERT INTO orderdetail(OrderID, BookID, Quantity)
VALUES (1, 1, 2),
       (1, 2, 3),
       (2, 1, 1),
       (2, 3, 2),
       (2, 5, 1);