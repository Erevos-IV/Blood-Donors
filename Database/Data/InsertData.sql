-- Sign table
INSERT INTO Signs VALUES(1, "Positive");
INSERT INTO Signs VALUES(2, "Negative");

-- TeamBlood table
INSERT INTO TeamBlood VALUES(1, "A", 1, null);
INSERT INTO TeamBlood VALUES(2, "A", 2, null);
INSERT INTO TeamBlood VALUES(3, "B", 1, null);
INSERT INTO TeamBlood VALUES(4, "B", 2, null);
INSERT INTO TeamBlood VALUES(5, "AB", 1, null);
INSERT INTO TeamBlood VALUES(6, "AB", 2, null);
INSERT INTO TeamBlood VALUES(7, "0", 1, null);
INSERT INTO TeamBlood VALUES(8, "0", 2, null);

-- Address table
INSERT INTO Address VALUES(1, "Peiraias", "Greece", "Korydallos");
INSERT INTO Address VALUES(2, "Peiraias", "Greece", "Kaminia");
INSERT INTO Address VALUES(3, "Peiraias", "Greece", "Neapolh");
INSERT INTO Address VALUES(4, "Peiraias", "Greece", "Nikaia");
INSERT INTO Address VALUES(5, "Peiraias", "Greece", "Drapetswna");
INSERT INTO Address VALUES(6, "Athens", "Greece", "Agia Varvara");
INSERT INTO Address VALUES(7, "Athens", "Greece", "Menidi");
INSERT INTO Address VALUES(8, "Athens", "Greece", "Peristeri");
INSERT INTO Address VALUES(9, "Athens", "Greece", "Syntagma");
INSERT INTO Address VALUES(10, "Athens", "Greece", "Ilion");

-- Employees table
INSERT INTO Employees VALUES(2002190520, "Vasileios", "Goysetis", 19, 2019482944, "Vasilisxr5000@gmail.com", "2019-04-19 12:33:01", 60500); 
INSERT INTO Employees VALUES(2002148129, "Kalliopi", "Papapetrou", 28, 1846291740, "Kalopa@gmail.com", "2019-03-01 06:17:30", 70100); 
INSERT INTO Employees VALUES(2002111040, "Christiana", "Papia", 39, 1648254826, "duckgoeswah38@gmail.com", "2020-01-08 20:46:11", 60500); 
INSERT INTO Employees VALUES(2002199274, "Kwnstantinos", "Katakoyzinos", 26, 2105729483, "Kwstakhsk@hotmail.com", "2019-12-27 18:34:30", 35500); 
INSERT INTO Employees VALUES(2002150392, "Theodwra", "Lafazanh", 24, 2103471937, "laftheo5@laf.gr", "2020-09-19 09:13:01", 44028); 
INSERT INTO Employees VALUES(2002162926, "Lewnidas", "Thermopylas", 31, 6937195739, "fightLewn@gmail.com", "2021-02-20 12:00:00", 99140); 
INSERT INTO Employees VALUES(2002131739, "Klewpatra", "Erhmoy", 42, 8104629472, "Throneismine@proton.prt", "2019-07-10 19:24:20", 60500);
 
-- Donors table
INSERT INTO Donors VALUES
(1,"Bill", "Leonardou", 9201749273, 22, 2002109385, 2,4,2), 
(2, "Spyros", "Gewrgiadhs", 9174629561, 39, 2946281649, 5,8,1),
(3, "Kyriakos", "Tsipras", 9176194025, 44, 6482648194, 1,3,2),
(4, "Aleksis", "Fwtiadhs", 9174629561, 19, 37291648949, 2,1,2),
(5, "Marina", "Pelwnh", 9295629561, 48, 5833829588, 2,3,2),
(6, "Katerina", "Galata", 9164810472, 28, 9274618492, 10,7,1),
(7, "Elpida", "Geronikolaou", 91746295619, 39, 2946281649, 3, 3, 1);

 -- Donations table 
INSERT INTO Donations VALUES
(1,"2002150392", 3, "2020-09-06"),
(2,"2002131739", 1, "2020-02-22"),
(3,"2002148129", 2, "2020-12-23"),
(4,"2002150392", 4, "2021-01-02"),
(5,"2002131739", 5, "2020-03-19"),
(6,"2002150392", 7, "2020-07-28"),
(7,"2002148129", 5, "2020-04-15"),
(8,"2002150392", 6, "2020-05-09");
