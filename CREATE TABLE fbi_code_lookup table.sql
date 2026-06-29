-- =====================================================
-- Create FBI Code Lookup Table
-- =====================================================
CREATE TABLE fbi_code_lookup (
    FBICode VARCHAR(10) PRIMARY KEY,
    Crime_Category VARCHAR(50),
    Severity_Weight INT
);

INSERT INTO fbi_code_lookup (FBICode, Crime_Category, Severity_Weight) VALUES
('01A', 'Homicide (1st/2nd Degree)', 10),
('01B', 'Involuntary Manslaughter', 9),
('02',  'Criminal Sexual Assault', 9),
('03',  'Robbery', 8),
('04A', 'Aggravated Assault', 8),
('04B', 'Aggravated Battery', 8),
('05',  'Burglary', 6),
('06',  'Larceny/Theft', 4),
('07',  'Motor Vehicle Theft', 6),
('08A', 'Simple Assault', 5),
('08B', 'Simple Battery', 5),
('09',  'Arson', 7),
('10',  'Forgery/Counterfeiting', 3),
('11',  'Fraud', 3),
('12',  'Embezzlement', 3),
('13',  'Stolen Property', 4),
('14',  'Vandalism', 3),
('15',  'Weapons Violation', 7),
('16',  'Prostitution', 2),
('17',  'Other Sex Offenses', 6),
('18',  'Narcotics', 3),
('19',  'Gambling', 2),
('20',  'Offenses Against Family', 5),
('22',  'Liquor License Violation', 1),
('24',  'Disorderly Conduct', 2),
('26',  'Misc. Non-Index Offense', 2);