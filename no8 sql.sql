-- Creating the Patient Data table
CREATE TABLE Patient_Data (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10)
);

-- Creating the Visit Record table
CREATE TABLE Visit_Record (
    VisitID INT PRIMARY KEY,
    VisitDate DATE,
    Diagnosis VARCHAR(255),
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patient_Data(PatientID) ON DELETE CASCADE
);

-- Creating the Treatment Record table
CREATE TABLE Treatment_Record (
    TreatmentID INT PRIMARY KEY,
    TreatmentDetails VARCHAR(255),
    VisitID INT,
    FOREIGN KEY (VisitID) REFERENCES Visit_Record(VisitID) ON DELETE CASCADE
);

-- Creating the Laboratory Test table
CREATE TABLE Laboratory_Test (
    TestID INT PRIMARY KEY,
    TestDate DATE,
    TestType VARCHAR(100),
    TestResult VARCHAR(255),
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patient_Data(PatientID) ON DELETE CASCADE
);

-- Creating the Supply Chain table
CREATE TABLE Supply_Chain (
    SupplyID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    StockLevel INT
);

-- Creating the Resource table
CREATE TABLE Resource (
    ResourceID INT PRIMARY KEY,
    ResourceType VARCHAR(100),
    QuantityAvailable INT,
    SupplyID INT,
    FOREIGN KEY (SupplyID) REFERENCES Supply_Chain(SupplyID
    );
