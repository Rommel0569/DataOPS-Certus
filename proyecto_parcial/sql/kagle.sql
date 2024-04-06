
USE Kaggle;
GO

IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE object_id=OBJECT_ID(N'dbo.starbucks') AND type='U')
CREATE TABLE dbo.starbucks (
    Beverage_category VARCHAR(200),
    Beverage VARCHAR(200),
    Beverage_prep VARCHAR(200),
    Calories INT,
    Total_Fat_g VARCHAR(10),
    Trans_Fat_g DECIMAL,
    Saturated_Fat_g DECIMAL,
    Sodium_mg DECIMAL,
    Total_Carbohydrates_g INT,
    Cholesterol_mg INT,
    Dietary_Fibre_g INT,
    Sugars_g INT,
    Protein_g DECIMAL,
    Vitamin_A_DV VARCHAR(10),
    Vitamin_C_DV VARCHAR(10),
    Calcium_DV VARCHAR(10),
    Iron_DV VARCHAR(10),
    Caffeine_mg VARCHAR(10)
);

-- SI LA TABLA EXISTE
TRUNCATE TABLE dbo.starbucks;
GO

-- IMPORTAR DATA DEL CSV
BULK INSERT dbo.starbucks
FROM 'C:\Users\romme\Desktop\proyecto_parcial\python\dataset\starbucks.csv'
WITH 
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a'
);

