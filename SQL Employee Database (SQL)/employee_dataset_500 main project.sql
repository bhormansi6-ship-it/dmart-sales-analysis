
-- =====================================================
-- SAMPLE EMPLOYEE SQL DATASET (500 records)
-- Compatible with MySQL / PostgreSQL / SQLite (minor tweaks may be needed)
-- =====================================================

-- -----------------------------------------------------
-- Table: departments
-- -----------------------------------------------------
USE employee_db;
CREATE TABLE employee (
    employee_id     INT PRIMARY KEY,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    email           VARCHAR(100),
    hire_date       DATE,
    job_title       VARCHAR(50),
    department_id   INT,
    manager_id      INT,
    salary          DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employee (employee_id, first_name, last_name, email, hire_date, job_title, department_id, manager_id, salary) VALUES
(101, 'Aditya', 'Nair', 'aditya.nair101@company.com', '2017-01-31', 'Engineering Manager', 1, NULL, 122244.59),
(102, 'Ishita', 'Chawla', 'ishita.chawla102@company.com', '2015-02-24', 'Sales Manager', 2, NULL, 143834.97),
(103, 'Geeta', 'Kaur', 'geeta.kaur103@company.com', '2018-09-25', 'Marketing Manager', 3, NULL, 111589.13),
(104, 'Pooja', 'Pillai', 'pooja.pillai104@company.com', '2016-08-10', 'HR Manager', 4, NULL, 135267.76),
(105, 'Ananya', 'Ghosh', 'ananya.ghosh105@company.com', '2016-03-25', 'Finance Manager', 5, NULL, 145800.98),
(106, 'Geeta', 'Sinha', 'geeta.sinha106@company.com', '2016-06-21', 'Support Team Lead', 6, NULL, 132460.45),
(107, 'Deepika', 'Sharma', 'deepika.sharma107@company.com', '2015-10-16', 'Product Manager', 7, NULL, 144906.97),
(108, 'Bhavna', 'Bose', 'bhavna.bose108@company.com', '2015-09-29', 'Operations Manager', 8, NULL, 120765.69),
(109, 'Bhavna', 'Malhotra', 'bhavna.malhotra109@company.com', '2015-01-15', 'Legal Counsel', 9, NULL, 128996.37),
(110, 'Juhi', 'Singh', 'juhi.singh110@company.com', '2016-12-19', 'IT Manager', 10, NULL, 150356.41),
(111, 'Kavya', 'Kumar', 'kavya.kumar111@company.com', '2016-11-18', 'Process Executive', 8, 108, 79321.42),
(112, 'Meenal', 'Kapoor', 'meenal.kapoor112@company.com', '2023-11-25', 'System Administrator', 10, 110, 62434.43),
(113, 'Sanjay', 'Rao', 'sanjay.rao113@company.com', '2017-02-17', 'HR Business Partner', 4, 104, 73304.42),
(114, 'Naveen', 'Joshi', 'naveen.joshi114@company.com', '2020-02-25', 'Process Executive', 8, 108, 72434.47),
(115, 'Vandana', 'Rathore', 'vandana.rathore115@company.com', '2017-12-01', 'Financial Analyst', 5, 105, 78694.9),
(116, 'Vidya', 'Kumar', 'vidya.kumar116@company.com', '2019-01-10', 'Recruiter', 4, 104, 94633.32),
(117, 'Komal', 'Dhawan', 'komal.dhawan117@company.com', '2024-09-13', 'Compliance Officer', 9, 109, 61957.83),
(118, 'Aditi', 'Bose', 'aditi.bose118@company.com', '2016-09-28', 'QA Engineer', 1, 101, 67384.4),
(119, 'Harsh', 'Pillai', 'harsh.pillai119@company.com', '2023-05-08', 'Network Engineer', 10, 110, 77473.09),
(120, 'Swati', 'Mehta', 'swati.mehta120@company.com', '2018-10-07', 'Operations Analyst', 8, 108, 86074.61),
(121, 'Deepak', 'Mishra', 'deepak.mishra121@company.com', '2022-07-18', 'Legal Associate', 9, 109, 47988.01),
(122, 'Anita', 'Bhatia', 'anita.bhatia122@company.com', '2017-01-07', 'Recruiter', 4, 104, 86452.38),
(123, 'Manish', 'Ahluwalia', 'manish.ahluwalia123@company.com', '2020-09-25', 'Sales Associate', 2, 102, 51928.18),
(124, 'Sunil', 'Chauhan', 'sunil.chauhan124@company.com', '2021-12-07', 'Associate Product Manager', 7, 107, 122570.71),
(125, 'Aditya', 'Ahluwalia', 'aditya.ahluwalia125@company.com', '2022-01-08', 'Compliance Officer', 9, 109, 86280.72),
(126, 'Preeti', 'Mishra', 'preeti.mishra126@company.com', '2017-10-09', 'Customer Support Rep', 6, 106, 75880.33),
(127, 'Siddharth', 'Malhotra', 'siddharth.malhotra127@company.com', '2023-01-05', 'Accountant', 5, 105, 70445.57),
(128, 'Suresh', 'Krishnan', 'suresh.krishnan128@company.com', '2020-03-11', 'Paralegal', 9, 109, 86687.88),
(129, 'Aarav', 'Dutta', 'aarav.dutta129@company.com', '2019-08-20', 'Paralegal', 9, 109, 77101.2),
(130, 'Radhika', 'Menon', 'radhika.menon130@company.com', '2016-08-25', 'Account Manager', 2, 102, 122043.58),
(131, 'Sanjay', 'Arora', 'sanjay.arora131@company.com', '2021-06-13', 'IT Support Engineer', 10, 110, 88560.81),
(132, 'Nikhil', 'Bajaj', 'nikhil.bajaj132@company.com', '2021-04-30', 'Compliance Officer', 9, 109, 93139.7),
(133, 'Renu', 'Dutta', 'renu.dutta133@company.com', '2020-09-29', 'SEO Analyst', 3, 103, 93752.7),
(134, 'Suresh', 'Khanna', 'suresh.khanna134@company.com', '2019-06-30', 'Paralegal', 9, 109, 73964.73),
(135, 'Vishal', 'Rana', 'vishal.rana135@company.com', '2017-05-10', 'Technical Support Engineer', 6, 106, 68676.7),
(136, 'Rohan', 'Banerjee', 'rohan.banerjee136@company.com', '2022-03-18', 'Account Manager', 2, 102, 121505.74),
(137, 'Divya', 'Khanna', 'divya.khanna137@company.com', '2023-01-28', 'HR Executive', 4, 104, 62060.58),
(138, 'Yash', 'Reddy', 'yash.reddy138@company.com', '2021-10-06', 'Sales Executive', 2, 102, 68330.16),
(139, 'Geeta', 'Mehta', 'geeta.mehta139@company.com', '2024-02-10', 'Operations Analyst', 8, 108, 92743.0),
(140, 'Akash', 'Menon', 'akash.menon140@company.com', '2024-10-18', 'Network Engineer', 10, 110, 76554.05),
(141, 'Rahul', 'Malhotra', 'rahul.malhotra141@company.com', '2023-05-23', 'Product Analyst', 7, 107, 75086.79),
(142, 'Vidya', 'Arora', 'vidya.arora142@company.com', '2016-08-09', 'Associate Product Manager', 7, 107, 143668.23),
(143, 'Aditi', 'Arora', 'aditi.arora143@company.com', '2019-10-21', 'Sales Executive', 2, 102, 88020.74),
(144, 'Ritu', 'Kapoor', 'ritu.kapoor144@company.com', '2022-01-05', 'Sales Associate', 2, 102, 48972.27),
(145, 'Deepika', 'Chauhan', 'deepika.chauhan145@company.com', '2018-10-20', 'Product Analyst', 7, 107, 90607.01),
(146, 'Nitin', 'Malhotra', 'nitin.malhotra146@company.com', '2016-07-26', 'Business Development Executive', 2, 102, 82825.07),
(147, 'Pooja', 'Bhalla', 'pooja.bhalla147@company.com', '2018-08-26', 'Compliance Officer', 9, 109, 65820.89),
(148, 'Vivek', 'Das', 'vivek.das148@company.com', '2016-08-28', 'Logistics Coordinator', 8, 108, 65762.3),
(149, 'Swati', 'Chauhan', 'swati.chauhan149@company.com', '2019-03-14', 'DevOps Engineer', 1, 101, 74805.26),
(150, 'Rajat', 'Krishnan', 'rajat.krishnan150@company.com', '2018-02-16', 'Paralegal', 9, 109, 70384.77),
(151, 'Geeta', 'Iyer', 'geeta.iyer151@company.com', '2024-05-21', 'Junior Developer', 1, 101, 46272.1),
(152, 'Namrata', 'Saxena', 'namrata.saxena152@company.com', '2021-12-15', 'Junior Developer', 1, 101, 43148.65),
(153, 'Dev', 'Reddy', 'dev.reddy153@company.com', '2022-09-03', 'Compliance Officer', 9, 109, 62378.63),
(154, 'Kavya', 'Chatterjee', 'kavya.chatterjee154@company.com', '2018-10-05', 'Talent Acquisition Specialist', 4, 104, 80262.17),
(155, 'Sanjay', 'Sinha', 'sanjay.sinha155@company.com', '2023-05-16', 'Junior Developer', 1, 101, 51673.45),
(156, 'Swati', 'Pillai', 'swati.pillai156@company.com', '2023-07-06', 'Legal Associate', 9, 109, 54323.84),
(157, 'Varun', 'Mehta', 'varun.mehta157@company.com', '2023-07-14', 'HR Business Partner', 4, 104, 82592.53),
(158, 'Divya', 'Sharma', 'divya.sharma158@company.com', '2021-02-20', 'Logistics Coordinator', 8, 108, 81740.57),
(159, 'Divya', 'Pandey', 'divya.pandey159@company.com', '2018-05-23', 'IT Support Engineer', 10, 110, 77705.96),
(160, 'Arjun', 'Menon', 'arjun.menon160@company.com', '2020-02-22', 'SEO Analyst', 3, 103, 69974.56),
(161, 'Sameer', 'Mukherjee', 'sameer.mukherjee161@company.com', '2023-05-02', 'Process Executive', 8, 108, 78512.92),
(162, 'Meera', 'Mehta', 'meera.mehta162@company.com', '2018-12-19', 'Legal Associate', 9, 109, 42308.57),
(163, 'Manoj', 'Khan', 'manoj.khan163@company.com', '2022-10-13', 'Sales Associate', 2, 102, 44212.59),
(164, 'Swati', 'Saxena', 'swati.saxena164@company.com', '2021-06-24', 'Customer Support Rep', 6, 106, 68789.24),
(165, 'Mohit', 'Bose', 'mohit.bose165@company.com', '2016-06-29', 'Software Engineer', 1, 101, 60124.1),
(166, 'Manish', 'Chawla', 'manish.chawla166@company.com', '2020-12-14', 'SEO Analyst', 3, 103, 79308.81),
(167, 'Priya', 'Gupta', 'priya.gupta167@company.com', '2016-11-04', 'Product Designer', 7, 107, 93076.78),
(168, 'Shalini', 'Banerjee', 'shalini.banerjee168@company.com', '2022-03-13', 'Marketing Specialist', 3, 103, 65183.28),
(169, 'Radhika', 'Patel', 'radhika.patel169@company.com', '2024-12-04', 'Marketing Specialist', 3, 103, 94026.87),
(170, 'Anjali', 'Ahluwalia', 'anjali.ahluwalia170@company.com', '2018-10-19', 'QA Engineer', 1, 101, 83342.67),
(171, 'Rakesh', 'Mukherjee', 'rakesh.mukherjee171@company.com', '2024-05-27', 'Customer Success Manager', 6, 106, 117727.67),
(172, 'Ayesha', 'Sinha', 'ayesha.sinha172@company.com', '2016-04-11', 'Recruiter', 4, 104, 66277.62),
(173, 'Nisha', 'Bose', 'nisha.bose173@company.com', '2017-10-14', 'Technical Support Engineer', 6, 106, 87558.11),
(174, 'Karthik', 'Yadav', 'karthik.yadav174@company.com', '2018-06-30', 'Business Development Executive', 2, 102, 66985.05),
(175, 'Radhika', 'Rao', 'radhika.rao175@company.com', '2018-07-02', 'Logistics Coordinator', 8, 108, 60828.26),
(176, 'Yash', 'Bose', 'yash.bose176@company.com', '2016-10-11', 'Talent Acquisition Specialist', 4, 104, 93841.12),
(177, 'Anita', 'Das', 'anita.das177@company.com', '2023-08-15', 'Auditor', 5, 105, 94340.24),
(178, 'Ananya', 'Gupta', 'ananya.gupta178@company.com', '2018-12-05', 'Legal Associate', 9, 109, 43571.36),
(179, 'Meera', 'Dutta', 'meera.dutta179@company.com', '2020-11-14', 'Financial Analyst', 5, 105, 72099.05),
(180, 'Vandana', 'Saxena', 'vandana.saxena180@company.com', '2017-04-18', 'Technical Support Engineer', 6, 106, 73481.84),
(181, 'Rajesh', 'Verma', 'rajesh.verma181@company.com', '2023-12-13', 'IT Support Engineer', 10, 110, 75262.01),
(182, 'Suresh', 'Patel', 'suresh.patel182@company.com', '2020-11-01', 'Paralegal', 9, 109, 62449.08),
(183, 'Harsh', 'Bajaj', 'harsh.bajaj183@company.com', '2017-05-25', 'Customer Success Manager', 6, 106, 145987.71),
(184, 'Rakesh', 'Trivedi', 'rakesh.trivedi184@company.com', '2020-07-06', 'Auditor', 5, 105, 84402.29),
(185, 'Ritu', 'Sinha', 'ritu.sinha185@company.com', '2023-06-16', 'Compliance Officer', 9, 109, 92912.73),
(186, 'Aditi', 'Ghosh', 'aditi.ghosh186@company.com', '2016-01-02', 'SEO Analyst', 3, 103, 70635.62),
(187, 'Deepak', 'Dutta', 'deepak.dutta187@company.com', '2023-05-05', 'Talent Acquisition Specialist', 4, 104, 71278.72),
(188, 'Vivek', 'Saxena', 'vivek.saxena188@company.com', '2021-04-22', 'Logistics Coordinator', 8, 108, 87780.74),
(189, 'Ajay', 'Saxena', 'ajay.saxena189@company.com', '2023-06-12', 'Marketing Specialist', 3, 103, 82152.93),
(190, 'Kiran', 'Ahluwalia', 'kiran.ahluwalia190@company.com', '2019-06-25', 'Customer Support Rep', 6, 106, 67862.42),
(191, 'Ananya', 'Verma', 'ananya.verma191@company.com', '2018-09-29', 'Recruiter', 4, 104, 94437.76),
(192, 'Sandeep', 'Sinha', 'sandeep.sinha192@company.com', '2023-01-23', 'IT Support Engineer', 10, 110, 80148.48),
(193, 'Aditi', 'Menon', 'aditi.menon193@company.com', '2017-08-27', 'Associate Product Manager', 7, 107, 142802.9),
(194, 'Mohit', 'Rao', 'mohit.rao194@company.com', '2017-12-21', 'Software Engineer', 1, 101, 88143.84),
(195, 'Vikram', 'Ghosh', 'vikram.ghosh195@company.com', '2018-10-17', 'Legal Associate', 9, 109, 58349.4),
(196, 'Ishita', 'Chauhan', 'ishita.chauhan196@company.com', '2023-06-27', 'Business Development Executive', 2, 102, 78589.62),
(197, 'Harsh', 'Bhalla', 'harsh.bhalla197@company.com', '2020-12-17', 'Paralegal', 9, 109, 81442.83),
(198, 'Nitin', 'Rana', 'nitin.rana198@company.com', '2017-10-13', 'Legal Associate', 9, 109, 54873.11),
(199, 'Swati', 'Bhalla', 'swati.bhalla199@company.com', '2018-10-09', 'Logistics Coordinator', 8, 108, 89395.2),
(200, 'Kiran', 'Bose', 'kiran.bose200@company.com', '2020-12-06', 'Payroll Specialist', 5, 105, 62711.92),
(201, 'Manoj', 'Bhatt', 'manoj.bhatt201@company.com', '2019-08-02', 'Accountant', 5, 105, 91255.94),
(202, 'Shreya', 'Rao', 'shreya.rao202@company.com', '2020-04-17', 'Sales Associate', 2, 102, 53879.0),
(203, 'Sunita', 'Sinha', 'sunita.sinha203@company.com', '2019-09-17', 'HR Executive', 4, 104, 78991.39),
(204, 'Anjali', 'Sinha', 'anjali.sinha204@company.com', '2020-05-14', 'Product Analyst', 7, 107, 91669.35),
(205, 'Rohan', 'Bhalla', 'rohan.bhalla205@company.com', '2022-06-16', 'Network Engineer', 10, 110, 73313.34),
(206, 'Sameer', 'Bhalla', 'sameer.bhalla206@company.com', '2020-05-16', 'QA Engineer', 1, 101, 89870.68),
(207, 'Geeta', 'Dutta', 'geeta.dutta207@company.com', '2018-06-22', 'Product Designer', 7, 107, 77088.03),
(208, 'Rajat', 'Nair', 'rajat.nair208@company.com', '2020-05-11', 'Payroll Specialist', 5, 105, 71764.53),
(209, 'Tanya', 'Chauhan', 'tanya.chauhan209@company.com', '2017-06-06', 'Product Designer', 7, 107, 94325.27),
(210, 'Varun', 'Banerjee', 'varun.banerjee210@company.com', '2022-04-30', 'Compliance Officer', 9, 109, 83204.99),
(211, 'Ishita', 'Chauhan', 'ishita.chauhan211@company.com', '2018-01-14', 'Business Development Executive', 2, 102, 61759.96),
(212, 'Vivek', 'Chauhan', 'vivek.chauhan212@company.com', '2019-08-31', 'Associate Product Manager', 7, 107, 126875.03),
(213, 'Sunita', 'Chopra', 'sunita.chopra213@company.com', '2016-12-01', 'Associate Product Manager', 7, 107, 133515.34),
(214, 'Gaurav', 'Rao', 'gaurav.rao214@company.com', '2023-04-16', 'Compliance Officer', 9, 109, 62401.64),
(215, 'Nisha', 'Kapoor', 'nisha.kapoor215@company.com', '2016-03-24', 'Software Engineer', 1, 101, 81746.75),
(216, 'Akash', 'Bajaj', 'akash.bajaj216@company.com', '2017-04-13', 'Recruiter', 4, 104, 79738.94),
(217, 'Rajesh', 'Dhawan', 'rajesh.dhawan217@company.com', '2020-02-19', 'Talent Acquisition Specialist', 4, 104, 65872.62),
(218, 'Aditya', 'Dhawan', 'aditya.dhawan218@company.com', '2017-11-01', 'Network Engineer', 10, 110, 93765.23),
(219, 'Radhika', 'Chatterjee', 'radhika.chatterjee219@company.com', '2023-08-06', 'Sales Executive', 2, 102, 91780.92),
(220, 'Suresh', 'Reddy', 'suresh.reddy220@company.com', '2022-08-22', 'Associate Product Manager', 7, 107, 144530.72),
(221, 'Sameer', 'Ahluwalia', 'sameer.ahluwalia221@company.com', '2022-09-25', 'HR Executive', 4, 104, 88193.48),
(222, 'Gaurav', 'Pandey', 'gaurav.pandey222@company.com', '2020-10-20', 'IT Support Engineer', 10, 110, 83153.25),
(223, 'Priya', 'Sinha', 'priya.sinha223@company.com', '2021-06-30', 'Account Manager', 2, 102, 115276.94),
(224, 'Sandeep', 'Khanna', 'sandeep.khanna224@company.com', '2017-09-18', 'Customer Success Manager', 6, 106, 131774.36),
(225, 'Manoj', 'Mukherjee', 'manoj.mukherjee225@company.com', '2022-01-13', 'Paralegal', 9, 109, 87112.45),
(226, 'Rekha', 'Bose', 'rekha.bose226@company.com', '2019-08-13', 'Logistics Coordinator', 8, 108, 89809.96),
(227, 'Payal', 'Menon', 'payal.menon227@company.com', '2024-05-31', 'Account Manager', 2, 102, 133235.42),
(228, 'Pankaj', 'Bhatt', 'pankaj.bhatt228@company.com', '2016-04-27', 'Network Engineer', 10, 110, 77300.73),
(229, 'Rajat', 'Pillai', 'rajat.pillai229@company.com', '2019-12-24', 'Customer Support Rep', 6, 106, 87924.13),
(230, 'Sunil', 'Sethi', 'sunil.sethi230@company.com', '2019-02-05', 'Technical Support Engineer', 6, 106, 79452.69),
(231, 'Sanjay', 'Menon', 'sanjay.menon231@company.com', '2024-01-28', 'Compliance Officer', 9, 109, 74224.98),
(232, 'Akash', 'Chandra', 'akash.chandra232@company.com', '2023-12-25', 'Compliance Officer', 9, 109, 77178.75),
(233, 'Preeti', 'Rao', 'preeti.rao233@company.com', '2020-07-14', 'Software Engineer', 1, 101, 84212.55),
(234, 'Akash', 'Ghosh', 'akash.ghosh234@company.com', '2021-12-14', 'Auditor', 5, 105, 72031.51),
(235, 'Juhi', 'Sethi', 'juhi.sethi235@company.com', '2021-02-01', 'Legal Associate', 9, 109, 45418.33),
(236, 'Kavya', 'Arora', 'kavya.arora236@company.com', '2018-02-27', 'Accountant', 5, 105, 71044.18),
(237, 'Dev', 'Kapoor', 'dev.kapoor237@company.com', '2018-06-05', 'Paralegal', 9, 109, 85851.16),
(238, 'Rahul', 'Kapoor', 'rahul.kapoor238@company.com', '2019-04-28', 'Auditor', 5, 105, 67961.91),
(239, 'Priya', 'Khanna', 'priya.khanna239@company.com', '2021-12-27', 'SEO Analyst', 3, 103, 64430.4),
(240, 'Nitin', 'Khan', 'nitin.khan240@company.com', '2023-10-27', 'Software Engineer', 1, 101, 93043.14),
(241, 'Priya', 'Chatterjee', 'priya.chatterjee241@company.com', '2019-03-10', 'Operations Analyst', 8, 108, 76428.89),
(242, 'Dev', 'Iyer', 'dev.iyer242@company.com', '2018-10-31', 'Logistics Coordinator', 8, 108, 92937.23),
(243, 'Arjun', 'Das', 'arjun.das243@company.com', '2021-07-07', 'Operations Analyst', 8, 108, 62592.88),
(244, 'Shreya', 'Chatterjee', 'shreya.chatterjee244@company.com', '2019-05-29', 'Senior Software Engineer', 1, 101, 98833.14),
(245, 'Sarika', 'Bhalla', 'sarika.bhalla245@company.com', '2020-08-31', 'HR Executive', 4, 104, 81221.12),
(246, 'Vishal', 'Kumar', 'vishal.kumar246@company.com', '2021-01-19', 'IT Support Engineer', 10, 110, 91797.65),
(247, 'Radhika', 'Chatterjee', 'radhika.chatterjee247@company.com', '2022-12-18', 'Payroll Specialist', 5, 105, 62108.06),
(248, 'Vivek', 'Chopra', 'vivek.chopra248@company.com', '2023-05-29', 'Sales Associate', 2, 102, 41623.75),
(249, 'Nitin', 'Reddy', 'nitin.reddy249@company.com', '2017-10-03', 'Recruiter', 4, 104, 60093.65),
(250, 'Sunil', 'Yadav', 'sunil.yadav250@company.com', '2019-04-07', 'Process Executive', 8, 108, 61142.39),
(251, 'Sandeep', 'Reddy', 'sandeep.reddy251@company.com', '2023-09-16', 'Auditor', 5, 105, 68169.83),
(252, 'Mohit', 'Gupta', 'mohit.gupta252@company.com', '2022-02-08', 'Accountant', 5, 105, 67868.33),
(253, 'Farhan', 'Reddy', 'farhan.reddy253@company.com', '2016-09-01', 'SEO Analyst', 3, 103, 65807.3),
(254, 'Abhishek', 'Gupta', 'abhishek.gupta254@company.com', '2021-04-03', 'Auditor', 5, 105, 84103.73),
(255, 'Siddharth', 'Pandey', 'siddharth.pandey255@company.com', '2021-07-15', 'Associate Product Manager', 7, 107, 131887.94),
(256, 'Kirti', 'Chawla', 'kirti.chawla256@company.com', '2019-08-13', 'IT Support Engineer', 10, 110, 81129.98),
(257, 'Amit', 'Ahluwalia', 'amit.ahluwalia257@company.com', '2022-06-14', 'Software Engineer', 1, 101, 80549.3),
(258, 'Meenal', 'Verma', 'meenal.verma258@company.com', '2024-07-22', 'QA Engineer', 1, 101, 86469.41),
(259, 'Abhishek', 'Bose', 'abhishek.bose259@company.com', '2018-01-13', 'Process Executive', 8, 108, 94893.09),
(260, 'Rajat', 'Kaur', 'rajat.kaur260@company.com', '2021-04-09', 'Product Designer', 7, 107, 72178.64),
(261, 'Meera', 'Joshi', 'meera.joshi261@company.com', '2019-09-12', 'Technical Support Engineer', 6, 106, 74407.58),
(262, 'Aditi', 'Bhalla', 'aditi.bhalla262@company.com', '2022-03-03', 'Logistics Coordinator', 8, 108, 61284.4),
(263, 'Rajesh', 'Trivedi', 'rajesh.trivedi263@company.com', '2017-04-19', 'Account Manager', 2, 102, 158509.24),
(264, 'Aarav', 'Bajaj', 'aarav.bajaj264@company.com', '2022-01-31', 'Product Designer', 7, 107, 76169.17),
(265, 'Vishal', 'Patel', 'vishal.patel265@company.com', '2022-12-25', 'Senior Software Engineer', 1, 101, 129039.94),
(266, 'Anjali', 'Bose', 'anjali.bose266@company.com', '2022-02-27', 'Operations Analyst', 8, 108, 64585.46),
(267, 'Rajat', 'Gupta', 'rajat.gupta267@company.com', '2016-04-28', 'Payroll Specialist', 5, 105, 94060.14),
(268, 'Manish', 'Agarwal', 'manish.agarwal268@company.com', '2022-03-06', 'IT Support Engineer', 10, 110, 60478.61),
(269, 'Sneha', 'Gupta', 'sneha.gupta269@company.com', '2021-03-05', 'Product Analyst', 7, 107, 93147.13),
(270, 'Preeti', 'Saxena', 'preeti.saxena270@company.com', '2023-11-29', 'Brand Manager', 3, 103, 123671.24),
(271, 'Nisha', 'Chauhan', 'nisha.chauhan271@company.com', '2022-03-07', 'Logistics Coordinator', 8, 108, 65062.47),
(272, 'Arjun', 'Bose', 'arjun.bose272@company.com', '2024-08-30', 'Recruiter', 4, 104, 87650.22),
(273, 'Siddharth', 'Bose', 'siddharth.bose273@company.com', '2016-01-11', 'Associate Product Manager', 7, 107, 124141.95),
(274, 'Shreya', 'Rana', 'shreya.rana274@company.com', '2022-01-15', 'Payroll Specialist', 5, 105, 76951.95),
(275, 'Geeta', 'Kumar', 'geeta.kumar275@company.com', '2021-02-08', 'Customer Success Manager', 6, 106, 156642.61),
(276, 'Meenal', 'Kumar', 'meenal.kumar276@company.com', '2018-08-14', 'Recruiter', 4, 104, 89960.45),
(277, 'Harsh', 'Chawla', 'harsh.chawla277@company.com', '2021-04-21', 'Product Analyst', 7, 107, 84682.98),
(278, 'Shreya', 'Bhatia', 'shreya.bhatia278@company.com', '2016-05-31', 'Associate Product Manager', 7, 107, 116312.31),
(279, 'Rahul', 'Rana', 'rahul.rana279@company.com', '2017-02-12', 'System Administrator', 10, 110, 78408.29),
(280, 'Farhan', 'Sinha', 'farhan.sinha280@company.com', '2023-05-05', 'Operations Analyst', 8, 108, 93948.49),
(281, 'Swati', 'Bhatt', 'swati.bhatt281@company.com', '2022-12-27', 'Business Development Executive', 2, 102, 84244.66),
(282, 'Ashish', 'Kumar', 'ashish.kumar282@company.com', '2019-07-21', 'Account Manager', 2, 102, 141339.96),
(283, 'Karthik', 'Mukherjee', 'karthik.mukherjee283@company.com', '2016-10-07', 'Process Executive', 8, 108, 68216.96),
(284, 'Pooja', 'Mishra', 'pooja.mishra284@company.com', '2017-02-07', 'Accountant', 5, 105, 86612.94),
(285, 'Tanya', 'Sethi', 'tanya.sethi285@company.com', '2019-05-11', 'Business Development Executive', 2, 102, 91619.84),
(286, 'Neha', 'Khan', 'neha.khan286@company.com', '2020-01-08', 'QA Engineer', 1, 101, 73119.44),
(287, 'Renu', 'Sinha', 'renu.sinha287@company.com', '2022-05-07', 'Content Strategist', 3, 103, 83863.01),
(288, 'Ayesha', 'Kaur', 'ayesha.kaur288@company.com', '2022-11-01', 'Content Strategist', 3, 103, 90479.39),
(289, 'Kiran', 'Bhatia', 'kiran.bhatia289@company.com', '2022-07-16', 'Network Engineer', 10, 110, 65009.12),
(290, 'Rajesh', 'Chauhan', 'rajesh.chauhan290@company.com', '2018-11-11', 'Process Executive', 8, 108, 83339.43),
(291, 'Geeta', 'Joshi', 'geeta.joshi291@company.com', '2016-10-29', 'Logistics Coordinator', 8, 108, 75460.54),
(292, 'Sameer', 'Rathore', 'sameer.rathore292@company.com', '2020-10-03', 'Customer Success Manager', 6, 106, 144515.68),
(293, 'Suresh', 'Kumar', 'suresh.kumar293@company.com', '2021-06-02', 'Logistics Coordinator', 8, 108, 63732.86),
(294, 'Juhi', 'Chatterjee', 'juhi.chatterjee294@company.com', '2019-04-26', 'Product Designer', 7, 107, 94744.22),
(295, 'Varun', 'Bose', 'varun.bose295@company.com', '2016-02-03', 'Financial Analyst', 5, 105, 79807.52),
(296, 'Poonam', 'Khan', 'poonam.khan296@company.com', '2024-09-12', 'Junior Developer', 1, 101, 55977.2),
(297, 'Sneha', 'Rathore', 'sneha.rathore297@company.com', '2018-02-17', 'System Administrator', 10, 110, 81731.19),
(298, 'Simran', 'Agarwal', 'simran.agarwal298@company.com', '2024-11-04', 'Marketing Specialist', 3, 103, 75428.81),
(299, 'Nikhil', 'Kaur', 'nikhil.kaur299@company.com', '2019-04-23', 'System Administrator', 10, 110, 71435.17),
(300, 'Suresh', 'Mehta', 'suresh.mehta300@company.com', '2024-10-26', 'Product Analyst', 7, 107, 78879.27),
(301, 'Siddharth', 'Bose', 'siddharth.bose301@company.com', '2017-11-04', 'Customer Success Manager', 6, 106, 122848.5),
(302, 'Bhavna', 'Gupta', 'bhavna.gupta302@company.com', '2021-04-02', 'Logistics Coordinator', 8, 108, 93701.27),
(303, 'Varun', 'Ghosh', 'varun.ghosh303@company.com', '2020-02-07', 'Content Strategist', 3, 103, 63160.6),
(304, 'Swati', 'Pandey', 'swati.pandey304@company.com', '2017-05-21', 'Product Analyst', 7, 107, 75917.51),
(305, 'Shalini', 'Malhotra', 'shalini.malhotra305@company.com', '2023-07-27', 'Payroll Specialist', 5, 105, 68183.77),
(306, 'Sarika', 'Trivedi', 'sarika.trivedi306@company.com', '2022-11-03', 'Junior Developer', 1, 101, 44427.34),
(307, 'Sameer', 'Chandra', 'sameer.chandra307@company.com', '2020-07-30', 'Business Development Executive', 2, 102, 64083.66),
(308, 'Sameer', 'Bhatia', 'sameer.bhatia308@company.com', '2017-04-20', 'Software Engineer', 1, 101, 63401.72),
(309, 'Ritika', 'Chauhan', 'ritika.chauhan309@company.com', '2020-02-28', 'Compliance Officer', 9, 109, 83467.02),
(310, 'Rekha', 'Chawla', 'rekha.chawla310@company.com', '2024-02-24', 'Legal Associate', 9, 109, 43090.46),
(311, 'Rahul', 'Bhatia', 'rahul.bhatia311@company.com', '2022-11-26', 'Product Designer', 7, 107, 74284.06),
(312, 'Shalini', 'Pillai', 'shalini.pillai312@company.com', '2020-12-21', 'Financial Analyst', 5, 105, 75564.36),
(313, 'Rahul', 'Ahluwalia', 'rahul.ahluwalia313@company.com', '2020-02-13', 'HR Business Partner', 4, 104, 79056.31),
(314, 'Varun', 'Bose', 'varun.bose314@company.com', '2018-02-16', 'Customer Support Rep', 6, 106, 93887.24),
(315, 'Vivek', 'Chandra', 'vivek.chandra315@company.com', '2023-03-04', 'Operations Analyst', 8, 108, 80900.11),
(316, 'Yash', 'Menon', 'yash.menon316@company.com', '2017-05-30', 'Software Engineer', 1, 101, 87544.23),
(317, 'Nitin', 'Pillai', 'nitin.pillai317@company.com', '2022-07-29', 'HR Executive', 4, 104, 67558.3),
(318, 'Farhan', 'Dutta', 'farhan.dutta318@company.com', '2016-01-12', 'HR Business Partner', 4, 104, 69704.62),
(319, 'Geeta', 'Chopra', 'geeta.chopra319@company.com', '2024-12-14', 'Content Strategist', 3, 103, 66107.4),
(320, 'Priya', 'Singh', 'priya.singh320@company.com', '2024-11-09', 'Senior Software Engineer', 1, 101, 130479.42),
(321, 'Rohan', 'Desai', 'rohan.desai321@company.com', '2018-12-22', 'System Administrator', 10, 110, 61833.97),
(322, 'Aditya', 'Chawla', 'aditya.chawla322@company.com', '2016-09-17', 'Product Designer', 7, 107, 76668.61),
(323, 'Rekha', 'Malhotra', 'rekha.malhotra323@company.com', '2021-01-25', 'Customer Success Manager', 6, 106, 135191.93),
(324, 'Vishal', 'Agarwal', 'vishal.agarwal324@company.com', '2021-02-19', 'IT Support Engineer', 10, 110, 82516.92),
(325, 'Namrata', 'Das', 'namrata.das325@company.com', '2020-10-12', 'Software Engineer', 1, 101, 84013.41),
(326, 'Abhishek', 'Reddy', 'abhishek.reddy326@company.com', '2016-11-26', 'Process Executive', 8, 108, 71273.91),
(327, 'Nikhil', 'Bose', 'nikhil.bose327@company.com', '2023-01-01', 'Marketing Specialist', 3, 103, 82157.69),
(328, 'Komal', 'Kumar', 'komal.kumar328@company.com', '2022-09-12', 'Paralegal', 9, 109, 78569.49),
(329, 'Vandana', 'Mishra', 'vandana.mishra329@company.com', '2017-02-10', 'Process Executive', 8, 108, 87758.36),
(330, 'Kirti', 'Rana', 'kirti.rana330@company.com', '2018-07-24', 'Sales Associate', 2, 102, 48276.27),
(331, 'Sunita', 'Arora', 'sunita.arora331@company.com', '2017-01-24', 'Logistics Coordinator', 8, 108, 70939.19),
(332, 'Rajesh', 'Patel', 'rajesh.patel332@company.com', '2017-09-17', 'Customer Success Manager', 6, 106, 144341.05),
(333, 'Pooja', 'Kaur', 'pooja.kaur333@company.com', '2017-01-16', 'Operations Analyst', 8, 108, 75115.68),
(334, 'Sarika', 'Iyer', 'sarika.iyer334@company.com', '2022-07-30', 'Customer Support Rep', 6, 106, 93481.86),
(335, 'Kavya', 'Sinha', 'kavya.sinha335@company.com', '2019-12-19', 'Legal Associate', 9, 109, 57472.15),
(336, 'Vikram', 'Khan', 'vikram.khan336@company.com', '2022-09-25', 'Product Designer', 7, 107, 70935.71),
(337, 'Shreya', 'Bajaj', 'shreya.bajaj337@company.com', '2021-05-29', 'Sales Associate', 2, 102, 44484.9),
(338, 'Sarika', 'Patel', 'sarika.patel338@company.com', '2017-04-15', 'Account Manager', 2, 102, 148130.28),
(339, 'Mohit', 'Ghosh', 'mohit.ghosh339@company.com', '2024-08-09', 'IT Support Engineer', 10, 110, 88644.94),
(340, 'Sarika', 'Nair', 'sarika.nair340@company.com', '2022-10-30', 'Network Engineer', 10, 110, 92517.95),
(341, 'Dev', 'Bose', 'dev.bose341@company.com', '2023-11-18', 'Financial Analyst', 5, 105, 86684.33),
(342, 'Aarav', 'Desai', 'aarav.desai342@company.com', '2017-08-09', 'Technical Support Engineer', 6, 106, 79821.24),
(343, 'Farhan', 'Chawla', 'farhan.chawla343@company.com', '2023-02-06', 'Product Analyst', 7, 107, 94013.36),
(344, 'Pankaj', 'Sinha', 'pankaj.sinha344@company.com', '2021-02-01', 'Sales Associate', 2, 102, 46817.92),
(345, 'Komal', 'Dhawan', 'komal.dhawan345@company.com', '2022-05-13', 'Technical Support Engineer', 6, 106, 80867.83),
(346, 'Manish', 'Bhalla', 'manish.bhalla346@company.com', '2022-12-05', 'Senior Software Engineer', 1, 101, 97239.31),
(347, 'Abhishek', 'Bajaj', 'abhishek.bajaj347@company.com', '2020-10-02', 'Account Manager', 2, 102, 134283.09),
(348, 'Manoj', 'Pillai', 'manoj.pillai348@company.com', '2024-06-19', 'Logistics Coordinator', 8, 108, 77932.12),
(349, 'Aditya', 'Khan', 'aditya.khan349@company.com', '2023-08-09', 'Technical Support Engineer', 6, 106, 83747.02),
(350, 'Radhika', 'Verma', 'radhika.verma350@company.com', '2018-06-22', 'Process Executive', 8, 108, 73834.22),
(351, 'Aarav', 'Pillai', 'aarav.pillai351@company.com', '2019-05-19', 'IT Support Engineer', 10, 110, 93086.34),
(352, 'Preeti', 'Trivedi', 'preeti.trivedi352@company.com', '2017-05-06', 'SEO Analyst', 3, 103, 60270.55),
(353, 'Nikhil', 'Kumar', 'nikhil.kumar353@company.com', '2021-12-21', 'Product Analyst', 7, 107, 84628.49),
(354, 'Juhi', 'Reddy', 'juhi.reddy354@company.com', '2020-06-14', 'Paralegal', 9, 109, 90161.75),
(355, 'Rohan', 'Chauhan', 'rohan.chauhan355@company.com', '2016-11-14', 'DevOps Engineer', 1, 101, 90173.85),
(356, 'Meenal', 'Das', 'meenal.das356@company.com', '2023-12-16', 'System Administrator', 10, 110, 82404.96),
(357, 'Aditi', 'Nair', 'aditi.nair357@company.com', '2019-08-23', 'Financial Analyst', 5, 105, 66015.56),
(358, 'Naveen', 'Kaur', 'naveen.kaur358@company.com', '2020-11-23', 'System Administrator', 10, 110, 89556.95),
(359, 'Rekha', 'Das', 'rekha.das359@company.com', '2021-11-16', 'Talent Acquisition Specialist', 4, 104, 62752.65),
(360, 'Sneha', 'Bhatt', 'sneha.bhatt360@company.com', '2024-09-26', 'Auditor', 5, 105, 65884.64),
(361, 'Aditya', 'Tiwari', 'aditya.tiwari361@company.com', '2021-09-19', 'Paralegal', 9, 109, 66786.63),
(362, 'Farhan', 'Menon', 'farhan.menon362@company.com', '2017-02-25', 'Technical Support Engineer', 6, 106, 65125.55),
(363, 'Vandana', 'Krishnan', 'vandana.krishnan363@company.com', '2024-07-10', 'Recruiter', 4, 104, 86570.33),
(364, 'Poonam', 'Chauhan', 'poonam.chauhan364@company.com', '2024-06-17', 'Sales Associate', 2, 102, 51274.71),
(365, 'Alok', 'Chandra', 'alok.chandra365@company.com', '2023-02-15', 'System Administrator', 10, 110, 94528.62),
(366, 'Harsh', 'Krishnan', 'harsh.krishnan366@company.com', '2020-12-06', 'Customer Success Manager', 6, 106, 113414.31),
(367, 'Sameer', 'Bose', 'sameer.bose367@company.com', '2022-08-19', 'Process Executive', 8, 108, 61966.02),
(368, 'Radhika', 'Chauhan', 'radhika.chauhan368@company.com', '2021-01-25', 'Compliance Officer', 9, 109, 61316.25),
(369, 'Divya', 'Chandra', 'divya.chandra369@company.com', '2017-01-04', 'Technical Support Engineer', 6, 106, 81525.29),
(370, 'Vidya', 'Banerjee', 'vidya.banerjee370@company.com', '2022-03-20', 'Legal Associate', 9, 109, 59084.63),
(371, 'Meenal', 'Chandra', 'meenal.chandra371@company.com', '2018-02-10', 'DevOps Engineer', 1, 101, 71253.44),
(372, 'Shreya', 'Iyer', 'shreya.iyer372@company.com', '2021-01-19', 'Process Executive', 8, 108, 63622.57),
(373, 'Sanjay', 'Saxena', 'sanjay.saxena373@company.com', '2023-03-31', 'Customer Success Manager', 6, 106, 118627.95),
(374, 'Abhishek', 'Tiwari', 'abhishek.tiwari374@company.com', '2021-11-11', 'Talent Acquisition Specialist', 4, 104, 81343.19),
(375, 'Ajay', 'Kumar', 'ajay.kumar375@company.com', '2020-08-01', 'Technical Support Engineer', 6, 106, 87106.27),
(376, 'Yash', 'Reddy', 'yash.reddy376@company.com', '2019-09-12', 'IT Support Engineer', 10, 110, 63307.71),
(377, 'Rajesh', 'Arora', 'rajesh.arora377@company.com', '2023-05-13', 'Associate Product Manager', 7, 107, 158220.5),
(378, 'Yash', 'Kaur', 'yash.kaur378@company.com', '2022-07-14', 'IT Support Engineer', 10, 110, 83226.42),
(379, 'Varun', 'Mehta', 'varun.mehta379@company.com', '2022-09-03', 'Technical Support Engineer', 6, 106, 84809.19),
(380, 'Sarika', 'Kumar', 'sarika.kumar380@company.com', '2023-03-20', 'Account Manager', 2, 102, 149583.1),
(381, 'Mohit', 'Saxena', 'mohit.saxena381@company.com', '2020-01-22', 'Marketing Specialist', 3, 103, 60638.07),
(382, 'Vivek', 'Bhatt', 'vivek.bhatt382@company.com', '2024-08-04', 'Accountant', 5, 105, 77019.48),
(383, 'Shreya', 'Reddy', 'shreya.reddy383@company.com', '2019-04-26', 'Recruiter', 4, 104, 89554.99),
(384, 'Bhavna', 'Dhawan', 'bhavna.dhawan384@company.com', '2022-12-06', 'Sales Executive', 2, 102, 64586.72),
(385, 'Manish', 'Desai', 'manish.desai385@company.com', '2023-10-08', 'Product Analyst', 7, 107, 86988.42),
(386, 'Simran', 'Sinha', 'simran.sinha386@company.com', '2020-02-01', 'Brand Manager', 3, 103, 143818.15),
(387, 'Manish', 'Khan', 'manish.khan387@company.com', '2024-06-08', 'Talent Acquisition Specialist', 4, 104, 86198.78),
(388, 'Ashish', 'Menon', 'ashish.menon388@company.com', '2019-06-21', 'Operations Analyst', 8, 108, 93795.88),
(389, 'Shalini', 'Ahluwalia', 'shalini.ahluwalia389@company.com', '2022-05-25', 'Operations Analyst', 8, 108, 94455.39),
(390, 'Pankaj', 'Saxena', 'pankaj.saxena390@company.com', '2021-11-30', 'Logistics Coordinator', 8, 108, 74653.13),
(391, 'Vandana', 'Mehta', 'vandana.mehta391@company.com', '2018-10-21', 'Content Strategist', 3, 103, 61826.29),
(392, 'Nitin', 'Malhotra', 'nitin.malhotra392@company.com', '2023-12-23', 'Logistics Coordinator', 8, 108, 89606.23),
(393, 'Sanjay', 'Bhalla', 'sanjay.bhalla393@company.com', '2017-10-18', 'Account Manager', 2, 102, 123639.56),
(394, 'Kirti', 'Kaur', 'kirti.kaur394@company.com', '2018-06-28', 'Compliance Officer', 9, 109, 88584.61),
(395, 'Sunita', 'Iyer', 'sunita.iyer395@company.com', '2020-06-11', 'Customer Support Rep', 6, 106, 77570.25),
(396, 'Sanjay', 'Patel', 'sanjay.patel396@company.com', '2018-07-08', 'Talent Acquisition Specialist', 4, 104, 60986.56),
(397, 'Farhan', 'Mehta', 'farhan.mehta397@company.com', '2016-06-05', 'Account Manager', 2, 102, 124343.97),
(398, 'Ishita', 'Bhalla', 'ishita.bhalla398@company.com', '2023-11-29', 'Process Executive', 8, 108, 76418.85),
(399, 'Sanjay', 'Nair', 'sanjay.nair399@company.com', '2018-11-14', 'IT Support Engineer', 10, 110, 67547.92),
(400, 'Aditya', 'Dhawan', 'aditya.dhawan400@company.com', '2019-03-26', 'Brand Manager', 3, 103, 121882.01),
(401, 'Kiran', 'Sinha', 'kiran.sinha401@company.com', '2023-03-02', 'Sales Executive', 2, 102, 87786.47),
(402, 'Aditya', 'Bhatia', 'aditya.bhatia402@company.com', '2022-09-10', 'Operations Analyst', 8, 108, 78761.88),
(403, 'Kiran', 'Khanna', 'kiran.khanna403@company.com', '2017-08-11', 'Paralegal', 9, 109, 70194.52),
(404, 'Juhi', 'Menon', 'juhi.menon404@company.com', '2022-05-26', 'Junior Developer', 1, 101, 48331.35),
(405, 'Arjun', 'Tiwari', 'arjun.tiwari405@company.com', '2022-02-06', 'Account Manager', 2, 102, 135366.38),
(406, 'Rohan', 'Kumar', 'rohan.kumar406@company.com', '2021-04-09', 'Paralegal', 9, 109, 61523.7),
(407, 'Rajesh', 'Chawla', 'rajesh.chawla407@company.com', '2016-03-07', 'Associate Product Manager', 7, 107, 127854.69),
(408, 'Kiran', 'Arora', 'kiran.arora408@company.com', '2023-05-15', 'Account Manager', 2, 102, 141412.85),
(409, 'Yash', 'Mehta', 'yash.mehta409@company.com', '2016-06-30', 'Network Engineer', 10, 110, 72330.47),
(410, 'Ayesha', 'Dhawan', 'ayesha.dhawan410@company.com', '2023-09-05', 'Customer Success Manager', 6, 106, 133231.14),
(411, 'Dev', 'Mehta', 'dev.mehta411@company.com', '2016-09-15', 'Process Executive', 8, 108, 85061.58),
(412, 'Preeti', 'Kapoor', 'preeti.kapoor412@company.com', '2016-06-28', 'Operations Analyst', 8, 108, 87688.82),
(413, 'Radhika', 'Saxena', 'radhika.saxena413@company.com', '2020-06-19', 'QA Engineer', 1, 101, 94619.29),
(414, 'Rajesh', 'Verma', 'rajesh.verma414@company.com', '2024-06-12', 'Legal Associate', 9, 109, 52938.01),
(415, 'Vikram', 'Chandra', 'vikram.chandra415@company.com', '2019-09-21', 'Auditor', 5, 105, 69562.58),
(416, 'Aditi', 'Chawla', 'aditi.chawla416@company.com', '2020-12-06', 'Technical Support Engineer', 6, 106, 91312.31),
(417, 'Dev', 'Bhatia', 'dev.bhatia417@company.com', '2023-10-05', 'Associate Product Manager', 7, 107, 134876.17),
(418, 'Sanjay', 'Arora', 'sanjay.arora418@company.com', '2020-10-04', 'Legal Associate', 9, 109, 41578.54),
(419, 'Geeta', 'Khan', 'geeta.khan419@company.com', '2019-08-08', 'IT Support Engineer', 10, 110, 63590.93),
(420, 'Preeti', 'Agarwal', 'preeti.agarwal420@company.com', '2020-12-31', 'Customer Success Manager', 6, 106, 140131.08),
(421, 'Abhishek', 'Singh', 'abhishek.singh421@company.com', '2021-01-05', 'Product Analyst', 7, 107, 61482.43),
(422, 'Kirti', 'Bose', 'kirti.bose422@company.com', '2023-03-04', 'Customer Success Manager', 6, 106, 159001.36),
(423, 'Aditi', 'Patel', 'aditi.patel423@company.com', '2021-10-02', 'Software Engineer', 1, 101, 88038.36),
(424, 'Farhan', 'Dutta', 'farhan.dutta424@company.com', '2023-08-09', 'Marketing Specialist', 3, 103, 87345.92),
(425, 'Arjun', 'Menon', 'arjun.menon425@company.com', '2024-09-23', 'Senior Software Engineer', 1, 101, 124032.33),
(426, 'Alok', 'Verma', 'alok.verma426@company.com', '2022-10-14', 'Technical Support Engineer', 6, 106, 65370.34),
(427, 'Shalini', 'Rana', 'shalini.rana427@company.com', '2024-07-22', 'Logistics Coordinator', 8, 108, 62690.99),
(428, 'Varun', 'Trivedi', 'varun.trivedi428@company.com', '2023-04-14', 'SEO Analyst', 3, 103, 69754.14),
(429, 'Dev', 'Bhatia', 'dev.bhatia429@company.com', '2021-10-21', 'Sales Executive', 2, 102, 73544.56),
(430, 'Swati', 'Dhawan', 'swati.dhawan430@company.com', '2018-12-02', 'Compliance Officer', 9, 109, 84641.32),
(431, 'Rajat', 'Kapoor', 'rajat.kapoor431@company.com', '2017-05-17', 'HR Business Partner', 4, 104, 64750.49),
(432, 'Ayesha', 'Khanna', 'ayesha.khanna432@company.com', '2020-12-28', 'Business Development Executive', 2, 102, 94904.18),
(433, 'Gaurav', 'Khanna', 'gaurav.khanna433@company.com', '2016-09-22', 'Customer Success Manager', 6, 106, 137499.86),
(434, 'Manish', 'Khanna', 'manish.khanna434@company.com', '2023-12-16', 'Auditor', 5, 105, 92456.36),
(435, 'Anita', 'Rao', 'anita.rao435@company.com', '2017-05-12', 'SEO Analyst', 3, 103, 94479.64),
(436, 'Poonam', 'Nair', 'poonam.nair436@company.com', '2020-01-18', 'Content Strategist', 3, 103, 79390.75),
(437, 'Nitin', 'Mehta', 'nitin.mehta437@company.com', '2022-11-11', 'Technical Support Engineer', 6, 106, 90948.63),
(438, 'Varun', 'Khanna', 'varun.khanna438@company.com', '2024-01-23', 'Account Manager', 2, 102, 133933.26),
(439, 'Meenal', 'Reddy', 'meenal.reddy439@company.com', '2017-05-28', 'Associate Product Manager', 7, 107, 158618.99),
(440, 'Vidya', 'Ahluwalia', 'vidya.ahluwalia440@company.com', '2021-10-20', 'Business Development Executive', 2, 102, 72058.02),
(441, 'Rekha', 'Desai', 'rekha.desai441@company.com', '2024-08-10', 'Paralegal', 9, 109, 93819.26),
(442, 'Neha', 'Gupta', 'neha.gupta442@company.com', '2021-10-23', 'Product Designer', 7, 107, 65355.54),
(443, 'Komal', 'Khanna', 'komal.khanna443@company.com', '2018-07-12', 'Content Strategist', 3, 103, 72110.81),
(444, 'Sanjay', 'Chopra', 'sanjay.chopra444@company.com', '2018-03-15', 'Legal Associate', 9, 109, 52701.14),
(445, 'Nikhil', 'Rathore', 'nikhil.rathore445@company.com', '2019-05-25', 'Legal Associate', 9, 109, 52288.57),
(446, 'Rekha', 'Banerjee', 'rekha.banerjee446@company.com', '2017-09-23', 'Sales Associate', 2, 102, 43424.01),
(447, 'Vandana', 'Bhatt', 'vandana.bhatt447@company.com', '2022-04-27', 'Network Engineer', 10, 110, 61441.8),
(448, 'Simran', 'Chandra', 'simran.chandra448@company.com', '2024-08-24', 'Software Engineer', 1, 101, 80186.99),
(449, 'Shweta', 'Rathore', 'shweta.rathore449@company.com', '2016-05-04', 'Talent Acquisition Specialist', 4, 104, 77431.33),
(450, 'Sameer', 'Yadav', 'sameer.yadav450@company.com', '2018-09-30', 'Legal Associate', 9, 109, 56093.76),
(451, 'Sandeep', 'Reddy', 'sandeep.reddy451@company.com', '2023-09-21', 'Associate Product Manager', 7, 107, 112995.65),
(452, 'Namrata', 'Chauhan', 'namrata.chauhan452@company.com', '2018-04-15', 'Logistics Coordinator', 8, 108, 71906.74),
(453, 'Harsh', 'Arora', 'harsh.arora453@company.com', '2019-11-15', 'SEO Analyst', 3, 103, 94138.09),
(454, 'Anita', 'Ghosh', 'anita.ghosh454@company.com', '2017-03-10', 'SEO Analyst', 3, 103, 71169.06),
(455, 'Manoj', 'Rana', 'manoj.rana455@company.com', '2018-10-12', 'Operations Analyst', 8, 108, 64930.72),
(456, 'Ritika', 'Mukherjee', 'ritika.mukherjee456@company.com', '2020-09-08', 'QA Engineer', 1, 101, 68689.46),
(457, 'Meenal', 'Arora', 'meenal.arora457@company.com', '2019-07-04', 'SEO Analyst', 3, 103, 66644.19),
(458, 'Anita', 'Chauhan', 'anita.chauhan458@company.com', '2021-08-04', 'Brand Manager', 3, 103, 153953.78),
(459, 'Pooja', 'Das', 'pooja.das459@company.com', '2021-09-01', 'Operations Analyst', 8, 108, 76003.07),
(460, 'Deepak', 'Singh', 'deepak.singh460@company.com', '2016-07-18', 'Recruiter', 4, 104, 61768.91),
(461, 'Akash', 'Khan', 'akash.khan461@company.com', '2022-01-07', 'Process Executive', 8, 108, 60286.21),
(462, 'Ishita', 'Chopra', 'ishita.chopra462@company.com', '2024-02-27', 'Business Development Executive', 2, 102, 72802.22),
(463, 'Simran', 'Das', 'simran.das463@company.com', '2016-07-28', 'Associate Product Manager', 7, 107, 138514.08),
(464, 'Nitin', 'Khan', 'nitin.khan464@company.com', '2016-10-28', 'HR Business Partner', 4, 104, 73522.21),
(465, 'Deepika', 'Mukherjee', 'deepika.mukherjee465@company.com', '2023-08-18', 'Process Executive', 8, 108, 81386.51),
(466, 'Varun', 'Patel', 'varun.patel466@company.com', '2024-11-29', 'Marketing Specialist', 3, 103, 94537.57),
(467, 'Farhan', 'Kapoor', 'farhan.kapoor467@company.com', '2022-10-03', 'Legal Associate', 9, 109, 50182.45),
(468, 'Simran', 'Verma', 'simran.verma468@company.com', '2017-07-15', 'Compliance Officer', 9, 109, 84975.71),
(469, 'Sandeep', 'Krishnan', 'sandeep.krishnan469@company.com', '2022-10-19', 'Process Executive', 8, 108, 91259.61),
(470, 'Manish', 'Trivedi', 'manish.trivedi470@company.com', '2017-10-27', 'SEO Analyst', 3, 103, 73753.41),
(471, 'Sameer', 'Banerjee', 'sameer.banerjee471@company.com', '2019-10-09', 'Network Engineer', 10, 110, 77756.02),
(472, 'Rajat', 'Khanna', 'rajat.khanna472@company.com', '2022-04-24', 'Paralegal', 9, 109, 70492.67),
(473, 'Yash', 'Ahluwalia', 'yash.ahluwalia473@company.com', '2017-03-24', 'QA Engineer', 1, 101, 94296.43),
(474, 'Ananya', 'Dutta', 'ananya.dutta474@company.com', '2021-04-27', 'System Administrator', 10, 110, 69293.57),
(475, 'Amit', 'Arora', 'amit.arora475@company.com', '2016-07-29', 'Network Engineer', 10, 110, 80423.31),
(476, 'Farhan', 'Ahluwalia', 'farhan.ahluwalia476@company.com', '2018-09-19', 'Brand Manager', 3, 103, 111578.53),
(477, 'Rohan', 'Rana', 'rohan.rana477@company.com', '2019-07-08', 'Sales Associate', 2, 102, 48375.61),
(478, 'Anjali', 'Sinha', 'anjali.sinha478@company.com', '2021-08-17', 'Product Designer', 7, 107, 87124.03),
(479, 'Neha', 'Khanna', 'neha.khanna479@company.com', '2017-07-19', 'Process Executive', 8, 108, 78153.91),
(480, 'Namrata', 'Tiwari', 'namrata.tiwari480@company.com', '2020-03-23', 'Legal Associate', 9, 109, 46275.05),
(481, 'Ashish', 'Bhatt', 'ashish.bhatt481@company.com', '2022-02-15', 'Brand Manager', 3, 103, 127714.35),
(482, 'Ritu', 'Menon', 'ritu.menon482@company.com', '2019-02-16', 'Payroll Specialist', 5, 105, 79533.03),
(483, 'Ajay', 'Khanna', 'ajay.khanna483@company.com', '2018-04-29', 'HR Business Partner', 4, 104, 84158.4),
(484, 'Namrata', 'Singh', 'namrata.singh484@company.com', '2022-04-14', 'Logistics Coordinator', 8, 108, 92679.51),
(485, 'Kavya', 'Chatterjee', 'kavya.chatterjee485@company.com', '2023-08-03', 'Auditor', 5, 105, 79011.68),
(486, 'Farhan', 'Khan', 'farhan.khan486@company.com', '2016-06-21', 'Associate Product Manager', 7, 107, 124381.52),
(487, 'Abhishek', 'Chandra', 'abhishek.chandra487@company.com', '2018-11-16', 'Account Manager', 2, 102, 147366.92),
(488, 'Ashish', 'Bose', 'ashish.bose488@company.com', '2022-04-21', 'Recruiter', 4, 104, 84366.0),
(489, 'Manish', 'Chawla', 'manish.chawla489@company.com', '2022-07-31', 'Marketing Specialist', 3, 103, 68374.87),
(490, 'Sneha', 'Rathore', 'sneha.rathore490@company.com', '2018-08-11', 'Junior Developer', 1, 101, 41049.82),
(491, 'Akash', 'Malhotra', 'akash.malhotra491@company.com', '2023-08-22', 'Associate Product Manager', 7, 107, 148538.3),
(492, 'Manish', 'Sinha', 'manish.sinha492@company.com', '2023-04-28', 'Junior Developer', 1, 101, 58700.64),
(493, 'Suresh', 'Bhalla', 'suresh.bhalla493@company.com', '2019-03-22', 'Logistics Coordinator', 8, 108, 71240.87),
(494, 'Meenal', 'Rao', 'meenal.rao494@company.com', '2021-12-31', 'Software Engineer', 1, 101, 85854.03),
(495, 'Sunita', 'Desai', 'sunita.desai495@company.com', '2016-05-28', 'Senior Software Engineer', 1, 101, 139872.73),
(496, 'Dev', 'Chawla', 'dev.chawla496@company.com', '2019-03-31', 'Associate Product Manager', 7, 107, 153837.16),
(497, 'Alok', 'Dutta', 'alok.dutta497@company.com', '2017-03-15', 'QA Engineer', 1, 101, 92495.92),
(498, 'Sandeep', 'Chandra', 'sandeep.chandra498@company.com', '2022-02-03', 'Technical Support Engineer', 6, 106, 78351.15),
(499, 'Manoj', 'Kapoor', 'manoj.kapoor499@company.com', '2017-04-06', 'Brand Manager', 3, 103, 126534.2),
(500, 'Rajesh', 'Khanna', 'rajesh.khanna500@company.com', '2018-02-01', 'Process Executive', 8, 108, 60492.95),
(501, 'Alok', 'Ahluwalia', 'alok.ahluwalia501@company.com', '2024-06-28', 'Technical Support Engineer', 6, 106, 66760.65),
(502, 'Aditi', 'Mishra', 'aditi.mishra502@company.com', '2021-10-11', 'Network Engineer', 10, 110, 71477.43),
(503, 'Rahul', 'Desai', 'rahul.desai503@company.com', '2017-07-29', 'Product Designer', 7, 107, 76710.89),
(504, 'Swati', 'Kumar', 'swati.kumar504@company.com', '2018-08-22', 'HR Executive', 4, 104, 75635.74),
(505, 'Sameer', 'Banerjee', 'sameer.banerjee505@company.com', '2024-02-08', 'Auditor', 5, 105, 80050.71),
(506, 'Kiran', 'Iyer', 'kiran.iyer506@company.com', '2023-06-28', 'Auditor', 5, 105, 64137.87),
(507, 'Aditi', 'Ahluwalia', 'aditi.ahluwalia507@company.com', '2021-08-20', 'Accountant', 5, 105, 92308.71),
(508, 'Preeti', 'Patel', 'preeti.patel508@company.com', '2022-11-22', 'Financial Analyst', 5, 105, 67729.72),
(509, 'Shreya', 'Chauhan', 'shreya.chauhan509@company.com', '2024-05-20', 'Brand Manager', 3, 103, 159441.9),
(510, 'Nitin', 'Yadav', 'nitin.yadav510@company.com', '2024-06-29', 'Technical Support Engineer', 6, 106, 78813.12),
(511, 'Sunil', 'Kaur', 'sunil.kaur511@company.com', '2021-11-22', 'Recruiter', 4, 104, 75636.18),
(512, 'Alok', 'Gupta', 'alok.gupta512@company.com', '2016-09-09', 'Customer Support Rep', 6, 106, 89007.09),
(513, 'Meenal', 'Pandey', 'meenal.pandey513@company.com', '2017-09-05', 'Compliance Officer', 9, 109, 65758.8),
(514, 'Aditya', 'Ahluwalia', 'aditya.ahluwalia514@company.com', '2018-04-21', 'Legal Associate', 9, 109, 54338.36),
(515, 'Anita', 'Rana', 'anita.rana515@company.com', '2016-08-15', 'Operations Analyst', 8, 108, 75870.13),
(516, 'Sandeep', 'Chatterjee', 'sandeep.chatterjee516@company.com', '2016-08-24', 'Legal Associate', 9, 109, 51175.94),
(517, 'Varun', 'Chopra', 'varun.chopra517@company.com', '2016-01-13', 'Financial Analyst', 5, 105, 86103.16),
(518, 'Simran', 'Mishra', 'simran.mishra518@company.com', '2019-11-12', 'IT Support Engineer', 10, 110, 84513.47),
(519, 'Arjun', 'Yadav', 'arjun.yadav519@company.com', '2016-05-09', 'Compliance Officer', 9, 109, 70048.17),
(520, 'Sunita', 'Patel', 'sunita.patel520@company.com', '2020-04-15', 'Content Strategist', 3, 103, 75698.8),
(521, 'Sanjay', 'Ahluwalia', 'sanjay.ahluwalia521@company.com', '2023-06-03', 'Associate Product Manager', 7, 107, 153727.69),
(522, 'Kavya', 'Desai', 'kavya.desai522@company.com', '2022-01-09', 'SEO Analyst', 3, 103, 73757.05),
(523, 'Aarav', 'Bhalla', 'aarav.bhalla523@company.com', '2016-04-03', 'Content Strategist', 3, 103, 94247.17),
(524, 'Geeta', 'Mishra', 'geeta.mishra524@company.com', '2021-12-18', 'Process Executive', 8, 108, 73274.68),
(525, 'Sandeep', 'Singh', 'sandeep.singh525@company.com', '2017-09-27', 'Recruiter', 4, 104, 69647.74),
(526, 'Sunita', 'Mukherjee', 'sunita.mukherjee526@company.com', '2024-08-03', 'Sales Executive', 2, 102, 92768.33),
(527, 'Anjali', 'Reddy', 'anjali.reddy527@company.com', '2017-02-17', 'Senior Software Engineer', 1, 101, 121727.49),
(528, 'Vikram', 'Menon', 'vikram.menon528@company.com', '2024-04-21', 'Process Executive', 8, 108, 61548.29),
(529, 'Geeta', 'Pillai', 'geeta.pillai529@company.com', '2024-06-16', 'Operations Analyst', 8, 108, 90230.56),
(530, 'Siddharth', 'Khan', 'siddharth.khan530@company.com', '2018-08-17', 'Senior Software Engineer', 1, 101, 131710.38),
(531, 'Meenal', 'Dutta', 'meenal.dutta531@company.com', '2024-08-30', 'System Administrator', 10, 110, 83538.62),
(532, 'Sameer', 'Krishnan', 'sameer.krishnan532@company.com', '2023-05-28', 'Customer Support Rep', 6, 106, 78243.79),
(533, 'Deepika', 'Iyer', 'deepika.iyer533@company.com', '2022-03-30', 'Associate Product Manager', 7, 107, 157426.01),
(534, 'Sarika', 'Bhatia', 'sarika.bhatia534@company.com', '2016-07-11', 'Brand Manager', 3, 103, 158614.51),
(535, 'Harsh', 'Sethi', 'harsh.sethi535@company.com', '2020-09-01', 'Product Designer', 7, 107, 74289.07),
(536, 'Dev', 'Bhalla', 'dev.bhalla536@company.com', '2022-01-12', 'Payroll Specialist', 5, 105, 76573.16),
(537, 'Farhan', 'Chauhan', 'farhan.chauhan537@company.com', '2016-08-24', 'HR Business Partner', 4, 104, 79683.51),
(538, 'Renu', 'Mehta', 'renu.mehta538@company.com', '2020-05-09', 'Product Designer', 7, 107, 68500.05),
(539, 'Sanjay', 'Rana', 'sanjay.rana539@company.com', '2020-02-28', 'HR Business Partner', 4, 104, 63236.24),
(540, 'Manoj', 'Kumar', 'manoj.kumar540@company.com', '2023-07-22', 'HR Executive', 4, 104, 81173.93),
(541, 'Ritu', 'Bhalla', 'ritu.bhalla541@company.com', '2022-08-03', 'Software Engineer', 1, 101, 85350.68),
(542, 'Namrata', 'Pillai', 'namrata.pillai542@company.com', '2019-09-25', 'Compliance Officer', 9, 109, 70611.58),
(543, 'Ritu', 'Chawla', 'ritu.chawla543@company.com', '2017-04-25', 'Senior Software Engineer', 1, 101, 128609.57),
(544, 'Vandana', 'Khanna', 'vandana.khanna544@company.com', '2018-04-17', 'Operations Analyst', 8, 108, 73882.12),
(545, 'Ajay', 'Kumar', 'ajay.kumar545@company.com', '2021-03-24', 'HR Business Partner', 4, 104, 78677.75),
(546, 'Swati', 'Patel', 'swati.patel546@company.com', '2021-10-01', 'Technical Support Engineer', 6, 106, 90898.42),
(547, 'Akash', 'Bhalla', 'akash.bhalla547@company.com', '2019-08-04', 'Operations Analyst', 8, 108, 92001.57),
(548, 'Rakesh', 'Verma', 'rakesh.verma548@company.com', '2022-04-23', 'Technical Support Engineer', 6, 106, 90242.97),
(549, 'Swati', 'Ghosh', 'swati.ghosh549@company.com', '2022-07-20', 'Marketing Specialist', 3, 103, 80270.0),
(550, 'Shreya', 'Kapoor', 'shreya.kapoor550@company.com', '2019-09-13', 'Associate Product Manager', 7, 107, 121500.93),
(551, 'Poonam', 'Ghosh', 'poonam.ghosh551@company.com', '2023-05-05', 'IT Support Engineer', 10, 110, 93021.26),
(552, 'Rajat', 'Arora', 'rajat.arora552@company.com', '2023-03-13', 'Technical Support Engineer', 6, 106, 85885.79),
(553, 'Juhi', 'Joshi', 'juhi.joshi553@company.com', '2017-07-27', 'Operations Analyst', 8, 108, 85210.97),
(554, 'Geeta', 'Chandra', 'geeta.chandra554@company.com', '2016-08-28', 'Operations Analyst', 8, 108, 78338.05),
(555, 'Aarav', 'Sinha', 'aarav.sinha555@company.com', '2017-07-17', 'Sales Executive', 2, 102, 89489.07),
(556, 'Shreya', 'Sharma', 'shreya.sharma556@company.com', '2018-06-14', 'HR Executive', 4, 104, 77700.65),
(557, 'Shweta', 'Rathore', 'shweta.rathore557@company.com', '2023-06-24', 'Customer Support Rep', 6, 106, 92686.63),
(558, 'Rajat', 'Nair', 'rajat.nair558@company.com', '2016-01-28', 'Process Executive', 8, 108, 78627.44),
(559, 'Rohan', 'Tiwari', 'rohan.tiwari559@company.com', '2024-02-06', 'Product Analyst', 7, 107, 69615.93),
(560, 'Siddharth', 'Sethi', 'siddharth.sethi560@company.com', '2023-07-23', 'Financial Analyst', 5, 105, 75070.06),
(561, 'Rahul', 'Tiwari', 'rahul.tiwari561@company.com', '2017-09-01', 'Marketing Specialist', 3, 103, 68433.91),
(562, 'Rajesh', 'Singh', 'rajesh.singh562@company.com', '2018-12-30', 'Network Engineer', 10, 110, 87822.77),
(563, 'Aditi', 'Chauhan', 'aditi.chauhan563@company.com', '2022-05-03', 'Account Manager', 2, 102, 122160.39),
(564, 'Sanjay', 'Chandra', 'sanjay.chandra564@company.com', '2023-04-15', 'HR Business Partner', 4, 104, 86585.5),
(565, 'Pankaj', 'Kumar', 'pankaj.kumar565@company.com', '2022-03-13', 'Business Development Executive', 2, 102, 76660.18),
(566, 'Sanjay', 'Bhatia', 'sanjay.bhatia566@company.com', '2020-11-12', 'Senior Software Engineer', 1, 101, 124020.83),
(567, 'Rahul', 'Tiwari', 'rahul.tiwari567@company.com', '2016-06-23', 'Customer Success Manager', 6, 106, 121488.32),
(568, 'Manoj', 'Verma', 'manoj.verma568@company.com', '2016-10-31', 'System Administrator', 10, 110, 83955.01),
(569, 'Ayesha', 'Trivedi', 'ayesha.trivedi569@company.com', '2016-03-05', 'Financial Analyst', 5, 105, 93651.42),
(570, 'Varun', 'Reddy', 'varun.reddy570@company.com', '2019-05-10', 'IT Support Engineer', 10, 110, 65685.76),
(571, 'Geeta', 'Bhatt', 'geeta.bhatt571@company.com', '2020-04-21', 'Talent Acquisition Specialist', 4, 104, 86446.32),
(572, 'Siddharth', 'Chawla', 'siddharth.chawla572@company.com', '2019-11-17', 'Marketing Specialist', 3, 103, 61879.38),
(573, 'Divya', 'Bhatt', 'divya.bhatt573@company.com', '2022-10-14', 'Product Analyst', 7, 107, 86915.2),
(574, 'Komal', 'Nair', 'komal.nair574@company.com', '2023-02-10', 'System Administrator', 10, 110, 69566.45),
(575, 'Amit', 'Singh', 'amit.singh575@company.com', '2022-03-15', 'Logistics Coordinator', 8, 108, 92940.0),
(576, 'Deepak', 'Bajaj', 'deepak.bajaj576@company.com', '2020-04-05', 'Product Analyst', 7, 107, 62999.29),
(577, 'Nisha', 'Khanna', 'nisha.khanna577@company.com', '2016-10-28', 'System Administrator', 10, 110, 62871.33),
(578, 'Shreya', 'Chawla', 'shreya.chawla578@company.com', '2020-05-14', 'Brand Manager', 3, 103, 125833.91),
(579, 'Aarav', 'Agarwal', 'aarav.agarwal579@company.com', '2020-12-26', 'Sales Executive', 2, 102, 72597.11),
(580, 'Nikhil', 'Kaur', 'nikhil.kaur580@company.com', '2018-02-06', 'Financial Analyst', 5, 105, 75084.28),
(581, 'Anita', 'Sinha', 'anita.sinha581@company.com', '2017-02-27', 'Paralegal', 9, 109, 60919.17),
(582, 'Pooja', 'Dutta', 'pooja.dutta582@company.com', '2022-09-15', 'Customer Success Manager', 6, 106, 149221.94),
(583, 'Preeti', 'Sinha', 'preeti.sinha583@company.com', '2020-05-07', 'Product Analyst', 7, 107, 87270.92),
(584, 'Meenal', 'Tiwari', 'meenal.tiwari584@company.com', '2017-11-25', 'Compliance Officer', 9, 109, 83986.06),
(585, 'Manoj', 'Agarwal', 'manoj.agarwal585@company.com', '2019-01-04', 'Content Strategist', 3, 103, 77259.34),
(586, 'Kirti', 'Bose', 'kirti.bose586@company.com', '2020-09-20', 'Sales Associate', 2, 102, 45995.05),
(587, 'Rajesh', 'Menon', 'rajesh.menon587@company.com', '2024-01-31', 'Account Manager', 2, 102, 141251.68),
(588, 'Suresh', 'Chauhan', 'suresh.chauhan588@company.com', '2017-03-14', 'Network Engineer', 10, 110, 64742.13),
(589, 'Yash', 'Mukherjee', 'yash.mukherjee589@company.com', '2020-04-05', 'DevOps Engineer', 1, 101, 88142.68),
(590, 'Yash', 'Mishra', 'yash.mishra590@company.com', '2023-04-20', 'Technical Support Engineer', 6, 106, 94097.89),
(591, 'Komal', 'Dutta', 'komal.dutta591@company.com', '2023-10-18', 'SEO Analyst', 3, 103, 67029.8),
(592, 'Varun', 'Trivedi', 'varun.trivedi592@company.com', '2019-04-08', 'Customer Support Rep', 6, 106, 85720.6),
(593, 'Nisha', 'Trivedi', 'nisha.trivedi593@company.com', '2020-03-20', 'Process Executive', 8, 108, 69810.51),
(594, 'Aditya', 'Chatterjee', 'aditya.chatterjee594@company.com', '2018-03-29', 'Associate Product Manager', 7, 107, 139611.35),
(595, 'Nitin', 'Nair', 'nitin.nair595@company.com', '2024-02-26', 'Compliance Officer', 9, 109, 76156.78),
(596, 'Preeti', 'Sethi', 'preeti.sethi596@company.com', '2016-10-10', 'Talent Acquisition Specialist', 4, 104, 88663.79),
(597, 'Poonam', 'Mehta', 'poonam.mehta597@company.com', '2023-02-07', 'Product Designer', 7, 107, 70599.14),
(598, 'Mohit', 'Kumar', 'mohit.kumar598@company.com', '2016-10-29', 'Accountant', 5, 105, 75717.34),
(599, 'Deepak', 'Das', 'deepak.das599@company.com', '2021-12-28', 'System Administrator', 10, 110, 77731.44),
(600, 'Karthik', 'Patel', 'karthik.patel600@company.com', '2023-11-13', 'Product Designer', 7, 107, 91342.55);

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO department VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Sales'),
(5, 'Marketing');

SELECT * FROM employee;
SELECT COUNT(*) FROM employee;

-- update manager id where employee id is 103;
update employee
set manager_id=105
where employee_id =103;


-- *IMP BUSINESS QUERIES QUESTIONS;
-- 1.How many total employees work in the company? 
SELECT COUNT(*) AS total_employees 
FROM employee;

-- 2.What is the company's total salary expense?
SELECT SUM(salary) AS total_salary_expense
 FROM employee;
 
 -- 3.What is the average salary of all employees?
 select avg(salary) AS average_salary 
 FROM employee;
 
 -- 4.Who is the employee with the highest salary?
 SELECT first_name, last_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 1;
 
 -- 5.Who is the employee with the lowest salary?
 SELECT first_name, last_name, salary
FROM employee
ORDER BY salary ASC
LIMIT 1;

-- *Department-wise Business Analysis;
-- 1.How many employees are there in each department?
SELECT department_id, 
COUNT(*) AS employee_count
FROM employee
GROUP BY department_id
ORDER BY employee_count DESC;

-- 2. What is the total salary cost of each department?
SELECT department_id, 
SUM(salary) AS total_dept_salary
FROM employee
GROUP BY department_id
ORDER BY total_dept_salary DESC;
 
 -- 3.Which department has the highest average salary?
SELECT department_id, 
round(AVG(salary),2) AS avg_salary
FROM employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;
 
 -- 4.Which department has the fewest employees? (Understaffed department)
 SELECT department_id, COUNT(*) AS employee_count
FROM employee
GROUP BY department_id
ORDER BY employee_count ASC
LIMIT 1;

-- Salary / Compensation Analysis (Business Critical)
-- 1.How many employees earn a salary greater than ₹1,00,000?
SELECT COUNT(*) AS high_earners
FROM employee
WHERE salary > 100000;

-- 2.Display the highest, lowest, and average salary for each job title.
SELECT job_title,
       MAX(salary) AS highest,
       MIN(salary) AS lowest,
       ROUND(AVG(salary),2) AS average
FROM employee
GROUP BY job_title;

-- 3.Which employees earn a salary higher than the company's average salary?
SELECT first_name, last_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

-- 4.What is the salary range (maximum salary - minimum salary difference) in each department? (Pay gap check)
SELECT department_id,
       MAX(salary) - MIN(salary) AS salary_gap
FROM employee
GROUP BY department_id
ORDER BY salary_gap DESC;

-- 5.Divide employees into 3 salary bands: Low (<60000), Mid (60000-100000), and High (>100000).
SELECT
  CASE
    WHEN salary < 60000 THEN 'Low'
    WHEN salary BETWEEN 60000 AND 100000 THEN 'Mid'
    ELSE 'High'
  END AS salary_band,
  COUNT(*) AS employee_count
FROM employee
GROUP BY salary_band;

-- Hiring / HR Trends
-- 1.How many employees were hired in each year?
SELECT YEAR(hire_date) AS hire_year, 
COUNT(*) AS employees_hired
FROM employee
GROUP BY hire_year
ORDER BY hire_year;

-- 2.Display employees who joined in the last 2 years (2024-2025).
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date >= '2024-01-01';

-- 3.Who is the oldest (senior-most / longest-serving) employee in the company?
SELECT first_name, last_name, hire_date
FROM employee
ORDER BY hire_date ASC
LIMIT 1;

-- String / Data Cleaning (Business Use — Email & Names)
-- 1.Extract the official email username (without the domain) of each employee.
SELECT first_name, last_name,
SUBSTRING_INDEX(email, '@', 1) AS username
FROM employee;

-- 2.Generate the full name (First + Last) in uppercase letters.
SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS full_name
FROM employee;

-- 3.Find employees with duplicate first names (multiple employees having the same first name).
SELECT first_name, 
COUNT(*) AS count_same_name
FROM employee
GROUP BY first_name
HAVING COUNT(*) > 1
ORDER BY count_same_name DESC;

-- Advanced / Ranking Queries (Window Functions — Project Highlight)
-- 1.Find the top-paid employee in each department (Rank 1 per department).
SELECT *
FROM (
  SELECT employee_id, first_name, last_name, department_id, salary,
         RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
  FROM employee
) ranked
WHERE rnk = 1;

-- 2.Display the top 3 highest-paid employees in each department.
SELECT *
FROM (
  SELECT employee_id, first_name, last_name, department_id, salary,
         DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
  FROM employee
) ranked
WHERE rnk <= 3;

-- 3.Calculate the difference between each employee's salary and their department's average salary.
SELECT employee_id, first_name, department_id, salary,
 AVG(salary) OVER (PARTITION BY department_id) AS diff_from_dept_avg
FROM employee;

-- 4.Rank all employees based on salary across the company (Top earner = Rank 1).
SELECT employee_id, first_name, last_name, salary,
RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;


-- sample questions;
-- *(select) queries questions
-- 1.WAQ Display all employee details;
select*
from employee;

-- 2.WAQ Display only the first_name and salary;
select first_name , salary
from employee;

-- 3.WAQ Display only the employee_id, job_title, and department_id.
select employee_id, job_title,department_id
from employee;

-- 4.WAQ Display the email addresses of all employees;
select email address
from employee;

-- 5.Display the hire dates of all employees;
select hire_date
from employee;

-- *(where) queries questions
-- 1.WAQ Display employees whose salary is less than 600000;
select salary
from employee
where salary<600000;

-- 2.WAQ Display employees whose Department ID is 3.
select first_name,last_name,department_id
from employee
where department_id =3;

-- 3.WAQ Display employees whose Manager ID is 105;
select first_name,last_name,manager_id
from employee
where manager_id =105;

-- 4.WAQ Display employees whose Job Title is 'SEO ANALYST';
select first_name,last_name,job_title
from employee
where job_title ='seo analyst';

-- 5.WAQ Display employees whose salary is greater than 30000;
select first_name,last_name,salary
from employee
where salary>30000;

-- 6.WAQ Display employees whose email is not NULL;
select first_name,last_name,email
from employee
where email is not null;

-- 7.WAQ Display employees who were hired after '2020-11-01'.
select first_name,last_name,hire_date
from employee 
where hire_date ='2020-11-01';

-- *(order by)queries questions
-- 1.WAQ Sort employees by salary in ascending order;
select first_name,last_name,salary
from employee
order by salary asc;

-- 2.WAQ Sort employees by salary in descending order.
SELECT first_name,last_name,salary
from employee
order by salary desc;

-- 3.WAQ Sort employees by hire date from oldest to newest.
select first_name,last_name,hire_date
from employee
order by hire_date asc;

-- 4.WAQ Sort employees by hire date from newest to oldest;
select first_name,last_name,hire_date
from employee
order by hire_date desc;

-- 5.WAQ Sort employees by first name in alphabetical order;
select first_name
from employee
order by first_name asc;

-- 6.WAQ Sort employees by last name in reverse alphabetical order;
select last_name
from employee
order by last_name desc;

-- 7.Sort employees by department_id;
select first_name,last_name,department_id
from employee
order by department_id asc;

-- 8.Sort employees by job title;
select first_name,last_name,job_title
from employee
order by job_title asc;

-- *(GROUP BY) queries question
-- 1.WAQ Display the number of employees in each department;
SELECT department_id,
COUNT(*) AS total_employees
FROM employee
GROUP BY department_id;

-- 2.WAQ Display the number of employees for each job title;
select job_title,
count(*)as total_employees
from employee
group by job_title;

-- 3.Display the total salary for each department.
select department_id,
sum(salary)as total_salary
from employee
group by department_id;

-- 4.WAQ Display the average salary for each department;
Select department_id,
avg(salary)as total_salary
from employee
group by department_id;

-- 5.WAQ Display the number of employees under each job titles;
select job_title,
count(*)as total_employees
from employee
group by job_title;

-- 6.WAQ Display the highest salary for each job title.
select job_title,
max(salary)as highest_salary
from employee
group by job_title

-- 7.WAQ Display the lowest salary for each job title;
SELECT job_title,
MIN(salary) AS lowest_salary
FROM employee
GROUP BY job_title;

-- 8.WAQ Display the minimum salary for each department.
select department_id,
min(Salary)as minimum_salary
from employee
group by department_id;

-- 9.WAQ Display the number of employees in each department.
select department_id,
count(*)as total_employee
from employee
group by department_id;

-- *(Having) queries question
-- 1.WAQ Display departments having more than 10 employees
select department_id,
count(*) as total_employee
from employee
group by department_id
having count(*) > 10;

-- WAQ Display departments with an average salary greater than 500000
select department_id,
avg(Salary)as average_salary
from employee
group by department_id
having avg(salary)>50000;

-- 3.WAQ Display departments with a total salary greater than 500000;
select department_id,
max(salary)as total_salary
from employee
group by department_id
having max(salary)>50000;

-- 4.WAQ Display job titles with an average salary less than 400,000;
select job_title,
avg(salary)as average_salary
from employee
group by job_title
having avg(salary)<30000;

-- 5.WAQ Display departments where the minimum salary is greater than 20000;
select department_id,
min(salary)as minimumm_salary
from employee
group by department_id
having min(salary)>20000;

-- *(Distinct) Queries questions
-- 1.WAQ Display unique department IDs;
select distinct department_id
from employee;

-- 2.WAQ Display unique job titles.
select distinct job_title
from employee;

-- 3.WAQ Display employee_id.
select distinct employee_id
from employee;

-- 4.WAQ Find unique hire years;
select distinct hire_date
from employee;

-- 5.WAQ Display unique salaries;
select distinct salary
from employee;

-- *(Limit) Queries question
-- 1.WAQ Display the first 10 employees;
select *
from employee
limit 10;

-- 2.WAQ Display the Top 5 employees with the highest salary.
select *
from employee
order by salary desc
limit 5;

-- 3.WAQ Display the Top 10 employees with the lowest salary.
select salary
from employee
order by salary asc
limit 10;

-- 4.WAQ Display the Top 15 newly joined employees.
select hire_date
from employee
order by hire_date desc
limit 15;

-- 5.WAQ Display the first 5 employees.
SELECT *
FROM EMPLOYEE
LIMIT 5;

-- 6.WAQ Display the 5th to 10th employees. (Using OFFSET)
select *
from employee
limit 10 offset 5;


-- 7.WAQ select uniques departmenyt id of top 5;
SELECT DISTINCT department_ID
FROM employee
order by department_id asc
limit 5;

-- *(like) Queries questions
-- 1.WAQ Display employees whose first name starts with 'A';
select first_name
from employee
where first_name like 'A%';
 
 -- 2.WAQ Display employees whose last name starts with 'S';
 select last_name
 from employee
 where last_name like '%s';
 
 -- 3.WAQ Display employees whose email contains '@company.com';
 select email
 from employee
 where email like '%@company.com%';

-- 4.WAQ Display employees whose first name ends with 'a';
SELECT FIRST_NAME
from employee
where first_name like '%a';

-- 5.WAQ Display employees whose first name contains 'an';
select first_name
from employee
where first_name like '%an%';

-- 6.WAQ Display employees whose job title starts with 'Developer';
select job_title
from employee
where job_title like 'Developer%';

-- *(IN) Queries questions
-- 1.WAQ Display employees belonging to departments 1, 2, and 3;
select  department_id
from employee
where department_id in(1,2,3);

-- 2.WAQ Display employees belonging to departments 4, 6, and 8;
SELECT DEPARTMENT_ID
FROM EMPLOYEE
WHERE DEPARTMENT_ID IN(4,6,8);

-- *(between) Queries questions
-- 1.WAQ Display employees whose salary is between 30000 and 60000;
SELECT SALARY
FROM EMPLOYEE
WHERE SALARY
BETWEEN 30000
AND 60000;

-- 2.WAQ Display employees whose hire date is between January and June 2021;
select hire_date
from employee
where hire_date
between 2021-01-01
and 2021-06-30;

-- *(IS NULL) Queries questions
-- 1.WAQ Display employees whose email is NULL;
SELECT EMAIL
FROM EMPLOYEE
WHERE EMAIL IS NULL;

-- *(NOT NULL)Queries questions
-- 2.WAQ Display employees whose job title is NULL;
select job_title,first_name
from employee
where job_title is not null;

-- *(AND)Queries questions
-- 1.WAQ Display employees whose salary is greater than 500000 and belong to Department 3;
SELECT SALARY
FROM EMPLOYEE 
WHERE SALARY>50000
AND DEPARTMENT_ID=3;

-- *(OR) Queries questions
-- 2.WAQ Display employees who belong to Department 2 or Department 5;
select department_id
from employee
where department_id=2
or department_id=5;

-- *(NOT) Queries questions
-- 3.WAQ Display employees whose job title is not 'sales Manager'.
select job_title
from employee
where  not job_title= 'sales MANAGER';

-- *(case) Queries questions
-- 1.WAQ Use CASE to display 'High' if salary is greater than 700000, otherwise display 'Low';
SELECT SALARY,
CASE
WHEN SALARY>70000 THEN 'HIGH'
ELSE 'LOW'
END AS SALARY
FROM EMPLOYEE;

-- 2.WAQ Use CASE to display the department name based on the Department ID;
SELECT employee_id,
       first_name,
       department_id,
       CASE
           WHEN department_id = 1 THEN 'HR'
           WHEN department_id = 2 THEN 'Finance'
           WHEN department_id = 3 THEN 'IT'
           WHEN department_id = 4 THEN 'Sales'
           WHEN department_id = 5 THEN 'Marketing'
           WHEN department_id = 6 THEN 'Operations'
           WHEN department_id = 7 THEN 'Admin'
           WHEN department_id = 8 THEN 'Support'
           ELSE 'Unknown'
       END AS department_name
FROM employee;

-- 3.WAQ Use CASE to create a Salary Grade (A/B/C);
select employee_id,salary,
case
when salary>=70000 then'A'
when salary>=50000 then'B'
ELSE 'UNKNOWN'
END AS SALARY
FROM EMPLOYEE;

-- 4.WAQ Use CASE to display 'Eligible for Bonus' or 'Not Eligible' based on salary.
SELECT 
    first_name,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'Eligible for Bonus'
        ELSE 'Not Eligible'
    END AS SALARY
    FROM EMPLOYEE;

-- 3.Use CASE to display Manager or Non-Manager based on the job title. 
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_TITLE,
CASE
WHEN JOB_TITLE='MANAGER'THEN'MANAGER'
ELSE 'NON-MANAGER'
END AS JOB_TITLE
FROM EMPLOYEE;

-- WAQ Display employees whose salary is between 400000 and 800000 and belong to Department 4;
SELECT SALARY,DEPARTMENT_ID
FROM EMPLOYEE
WHERE SALARY=40000
AND SALARY=50000
AND DEPARTMENT_ID=4;

-- *(AGGREGATE FUNCTIONS)Queris questions
-- 1.WAQ Display the total number of employees;
select count(*)as total_employees
from employee;

-- 2.WAQ Display the total salary.
select sum(salary)as total_salary
from employee;

-- 3.WAQ Display the average salary;
select avg(salary)as average_salary
from employee;

-- 4.WAQ Display the highest salary for each job title;
select job_title,
max(salary)as highest_salary
from employee
group by job_title;

-- 5.WAQ Display the number of employees under each manager.
select employee_id,job_title,
count(*)as each_manager
from employee
group by employee_id;

-- *(string function)Queries questions
-- 1.WAQ Display the first name in uppercase;
select upper(first_name)
from employee;

-- 2.WAQ Display the last name in lowercase;
select lower(last_name)
from employee;

-- 3.WAQ Display the full name.
select concat(first_name,' ',last_name)as full_name
from employee;

-- 4.WAQ Replace 'a' with 'A' in the first name.
select replace(first_name,'a','A')
from employee;

-- 5.WAQ Remove '@company.com' from the email address.
select replace(email,'@company.com','')as username
from employee;

-- 6.WAQ 
SELECT SUBSTRING_INDEX(email, '@', -1)
FROM employee;

-- 7.Concatenate the first name and last name.
SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS FULL_NAME
FROM EMPLOYEE;

-- 8.WAQ CONCAT Display the employee's full name with a hyphen (FirstName-LastName);
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME)AS FULL_NAME
FROM EMPLOYEE;

-- 9.WAQ LENGTH Display the length of the first name;
SELECT LENGTH(FIRST_NAME)
FROM EMPLOYEE;

-- 10.WAQ SUBSTRING Display characters from position 2 to 5 of the first name;
select substring(first_name,2,5)
from employee;

-- 11.WAQ REPLACE Replace 'a' with 'A' in the first name;
select replace(first_name,'a','A')
from employee;

-- 12.WAQ REPLACE Replace 'a' with 'A' in the first name.
select replace(last_name,'A','a')
from employee;

-- 13.WAQ Remove leading and trailing spaces from the email address.
select trim(email)as trimmed_email
from employee;

-- 14.WAQ RIGHT Display the first 3 characters of the job title;
SELECT left(JOB_TITLE,3)AS JOB_TITLE
FROM EMPLOYEE;

-- 15.WAQ LEFT Display the last 5 characters of the department name;
select right(job_title,5)as department_name
from employee;

 select *  from department;
-- *(INNER JOIN)Queries questions
-- Display the department with the maximum number of employees.
select d.department_name,
count(e.employee_id) as total_employee
from employee e
inner join department d
on e.department_id = d.department_id
group by d.department_name
order by total_employee desc
limit 1;

-- WAQ Display all employees whose first name starts with 'A' along with their department names.
SELECT E.FIRST_NAME,D.DEPARTMENT_NAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.FIRST_NAME LIKE 'A%';

-- WAQ Display the top 5 highest-paid employees along with their department names.
SELECT E.FIRST_NAME,E.SALARY,D.DEPARTMENT_NAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
LIMIT 5;

-- WAQ Display employees whose salary is greater than the average salary of their department.
SELECT E.FIRST_NAME,E.SALARY,D.DEPARTMENT_NAME
FROM EMPLOYEE E
INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY>
(
    SELECT AVG(salary)
    FROM employee
    WHERE department_id = e.department_id
);

-- LEFT JOIN
-- WAQ Display all employees along with their department names.
SELECT e.first_name,
       d.department_name
FROM employee e
LEFT JOIN department d
ON e.department_id = d.department_id;

-- WAQ Display all employees whose salary is greater than 500000 along with their department names.
SELECT E.SALARY,D.DEPARTMENT_NAME
FROM EMPLOYEE E
LEFT JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY>=50000;

-- WAQ Display department-wise employee count using LEFT JOIN.
SELECT D.DEPARTMENT_NAME,
COUNT(*)AS DEPARTMENT_WISE
FROM DEPARTMENT D
LEFT JOIN EMPLOYEE E
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- WAQ Display all possible combinations of employees and departments.  
SELECT 
    e.first_name,
    d.department_name
FROM employee e
CROSS JOIN department d;

-- WAQ Display all employee–department combinations where the employee and department IDs are different.  
SELECT
    e.employee_id,
    e.first_name,
    E.department_id,
    d.department_name
FROM employee e
CROSS JOIN department d
WHERE e.department_id <> d.department_id;

SELECT
    E.employee_id AS manager_id,
    E.first_name AS manager_name,
    d.department_id,
    d.department_name
FROM employee E
CROSS JOIN department d
WHERE E.job_title = 'Manager';

-- SELF JOIN
-- WAQ Display pairs of employees working in the same department.
SELECT
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.department_id
FROM employee e1
JOIN employee e2
ON e1.department_id = e2.department_id
AND e1.employee_id < e2.employee_id;

-- WAQ Display pairs of employees having the same job title.  
SELECT
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.job_title
FROM employee e1
INNER JOIN employee e2
ON e1.job_title = e2.job_title
AND e1.employee_id < e2.employee_id;

-- WAQ Display employees who belong to the same department and have the same salary.  
SELECT
    e1.first_name AS employee1,
    e2.first_name AS employee2,
    e1.department_id,
    e1.salary
FROM employee e1
INNER JOIN employee e2
ON e1.department_id = e2.department_id
AND e1.salary = e2.salary
AND e1.employee_id < e2.employee_id;

-- WINDOW FUNCTION
-- WAQ Display a row number for all employees based on salary in descending order.  
SELECT employee_id,first_name,salary,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_no
FROM employee;

-- WAQ Display employees with row numbers based on joining date
select hire_date,
row_number () over (order by hire_date desc) as joining_date
from employee;

-- Waq Display the rank of employees based on salary (highest salary gets Rank 1).
select salary,
row_number () over (order by salary desc) as highest_salary
from employee;
