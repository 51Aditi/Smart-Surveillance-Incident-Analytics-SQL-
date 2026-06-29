use surveillance_proj ;
CREATE TABLE primary_type_lookup (
    PrimaryTypeID INT AUTO_INCREMENT PRIMARY KEY,
    PrimaryType VARCHAR(50) UNIQUE,
    Category VARCHAR(30),          -- Violent, Property, Public Order, Other
    SeverityLevel VARCHAR(10),     -- High, Medium, Low
    IsViolent TINYINT(1),          -- 1 = Yes, 0 = No
    IsIndexCrime TINYINT(1),       -- 1 = FBI Part I crime, 0 = Part II
    Description VARCHAR(150)       -- short plain-English note
);

INSERT INTO primary_type_lookup 
(PrimaryType, Category, SeverityLevel, IsViolent, IsIndexCrime, Description) VALUES
('HOMICIDE', 'Violent', 'High', 1, 1, 'Killing of another person'),
('CRIM SEXUAL ASSAULT', 'Violent', 'High', 1, 1, 'Sexual assault offense'),
('CRIMINAL SEXUAL ASSAULT', 'Violent', 'High', 1, 1, 'Sexual assault offense'),
('BATTERY', 'Violent', 'Medium', 1, 1, 'Physical attack on a person'),
('ASSAULT', 'Violent', 'Medium', 1, 1, 'Threat or attempt to cause harm'),
('ROBBERY', 'Violent', 'High', 1, 1, 'Theft using force or threat'),
('KIDNAPPING', 'Violent', 'High', 1, 0, 'Unlawful confinement/abduction'),
('HUMAN TRAFFICKING', 'Violent', 'High', 1, 0, 'Forced labor or exploitation'),
('BURGLARY', 'Property', 'Medium', 0, 1, 'Unlawful entry to commit a crime'),
('THEFT', 'Property', 'Low', 0, 1, 'Unlawful taking of property'),
('MOTOR VEHICLE THEFT', 'Property', 'Medium', 0, 1, 'Theft of a vehicle'),
('ARSON', 'Property', 'High', 0, 1, 'Deliberate setting of fire'),
('CRIMINAL DAMAGE', 'Property', 'Low', 0, 0, 'Vandalism or property damage'),
('CRIMINAL TRESPASS', 'Property', 'Low', 0, 0, 'Unlawful entry without intent to steal'),
('DECEPTIVE PRACTICE', 'Property', 'Low', 0, 0, 'Fraud or deception for gain'),
('STALKING', 'Public Order', 'Medium', 0, 0, 'Repeated unwanted surveillance/harassment'),
('OFFENSE INVOLVING CHILDREN', 'Public Order', 'High', 0, 0, 'Crimes involving minors'),
('SEX OFFENSE', 'Public Order', 'High', 1, 0, 'Non-assault sexual offense'),
('PROSTITUTION', 'Public Order', 'Low', 0, 0, 'Commercial sexual activity'),
('NARCOTICS', 'Public Order', 'Medium', 0, 0, 'Drug possession/distribution'),
('OTHER NARCOTIC VIOLATION', 'Public Order', 'Medium', 0, 0, 'Other drug-related offense'),
('WEAPONS VIOLATION', 'Public Order', 'Medium', 0, 0, 'Illegal possession/use of weapons'),
('PUBLIC PEACE VIOLATION', 'Public Order', 'Low', 0, 0, 'Disturbance of public order'),
('INTERFERENCE WITH PUBLIC OFFICER', 'Public Order', 'Medium', 0, 0, 'Obstructing law enforcement'),
('LIQUOR LAW VIOLATION', 'Public Order', 'Low', 0, 0, 'Violation of alcohol regulations'),
('GAMBLING', 'Public Order', 'Low', 0, 0, 'Illegal betting/gambling activity'),
('OBSCENITY', 'Public Order', 'Low', 0, 0, 'Public indecency related offense'),
('PUBLIC INDECENCY', 'Public Order', 'Low', 0, 0, 'Indecent public behavior'),
('INTIMIDATION', 'Other', 'Medium', 1, 0, 'Threatening behavior to instill fear'),
('CONCEALED CARRY LICENSE VIOLATION', 'Other', 'Low', 0, 0, 'Violation of concealed carry laws'),
('NON-CRIMINAL', 'Other', 'Low', 0, 0, 'Non-criminal incident report'),
('NON - CRIMINAL', 'Other', 'Low', 0, 0, 'Non-criminal incident report'),
('NON-CRIMINAL (SUBJECT SPECIFIED)', 'Other', 'Low', 0, 0, 'Non-criminal, subject-specific report'),
('OTHER OFFENSE', 'Other', 'Low', 0, 0, 'Miscellaneous offense not elsewhere classified'),
('RITUALISM', 'Other', 'Low', 0, 0, 'Ritual-related offense'),
('DOMESTIC VIOLENCE', 'Other', 'High', 1, 0, 'Violence within a domestic relationship');

SELECT * from primary_type_lookup ;
SELECT count(*) from primary_type_lookup ;