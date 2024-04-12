Use WarehouseManagement;
GO

-- Create a master key for the database.
CREATE MASTER KEY
ENCRYPTION BY PASSWORD = 'warehouse@123';

-- Verify that the master key exists
SELECT name AS KeyName,
       symmetric_key_id AS KeyID,
       key_length AS KeyLength,
       algorithm_desc AS KeyAlgorithm
FROM sys.symmetric_keys;

-- Create a self-signed certificate and name it WarehousePass
USE WarehouseManagement;
GO
CREATE CERTIFICATE WarehouseCert  
   WITH SUBJECT = 'Warehouse Data';  
GO

-- Verify that the certificate exists
USE WarehouseManagement;
GO
SELECT name AS CertificateName
FROM sys.certificates
WHERE name = 'WarehouseCert';


-- Create a symmetric key with AES 128 algorithm using the certificate
USE WarehouseManagement;
GO
CREATE SYMMETRIC KEY Warehouse_sk
    WITH ALGORITHM = AES_256
    ENCRYPTION BY CERTIFICATE WarehouseCert;  
GO

-- Encrypt the BankAccountNumber column in BankTransfer table
OPEN SYMMETRIC KEY Warehouse_sk
DECRYPTION BY CERTIFICATE WarehouseCert;

Update BankTransfer
SET BankAccountNumber = ENCRYPTBYKEY(KEY_GUID('Warehouse_sk'),BankAccountNumber);

Select *, CONVERT(nvarchar,DecryptByKey(BankAccountNumber)) as DecryptedBankAccountNumber from BankTransfer;

Select * from BankTransfer;

Close Symmetric Key Warehouse_sk;


-- Encrypt the CardNumber column in Card table
OPEN SYMMETRIC KEY Warehouse_sk
DECRYPTION BY CERTIFICATE WarehouseCert;

Update Card
SET CardNumber = ENCRYPTBYKEY(KEY_GUID('Warehouse_sk'),CardNumber);

Select *, CONVERT(nvarchar,DecryptByKey(CardNumber)) as DecryptedCardNumber from Card;

Select * from Card;

Close Symmetric Key Warehouse_sk;
