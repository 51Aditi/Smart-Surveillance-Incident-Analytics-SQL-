use surveillance_proj ;
-- =====================================================
-- Create District Lookup Table
-- =====================================================
CREATE TABLE district_lookup (
    District TINYINT PRIMARY KEY,
    District_Name VARCHAR(50)
);

INSERT INTO district_lookup (District, District_Name) VALUES
(1,  'Central'),
(2,  'Wentworth'),
(3,  'Grand Crossing'),
(4,  'South Chicago'),
(5,  'Calumet'),
(6,  'Gresham'),
(7,  'Englewood'),
(8,  'Chicago Lawn'),
(9,  'Deering'),
(10, 'Ogden'),
(11, 'Harrison'),
(12, 'Near West'),
(14, 'Shakespeare'),
(15, 'Austin'),
(16, 'Jefferson Park'),
(17, 'Albany Park'),
(18, 'Near North'),
(19, 'Town Hall'),
(20, 'Lincoln'),
(22, 'Morgan Park'),
(24, 'Rogers Park'),
(25, 'Grand Central'),
(31, 'Admin/Non-Patrol (Headquarters/Academy)');

INSERT INTO district_lookup (District, District_Name) VALUES
(13, 'Wood (Deprecated - merged into District 10/12)');


select count(*) from  district_lookup ;